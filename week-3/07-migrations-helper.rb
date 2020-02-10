# Хелпер для миграций по добавлению столбца с дефолтным значением
# Also, see https://github.com/ilyakatz/data-migrate для миграций данных
module MigrationsHelper
  # Usage:
  #   include MigrationsHelper
  #   disable_ddl_transaction!
  #
  #   def up
  #     add_column_with_default :articles, :priority, :float, default: 1.0, null: false
  #   end
  #
  #   def down
  #     remove_column :articles, :priority
  #   end
  #
  # If null == true function:
  # - creates column without default
  # - changes column default
  #
  # If null == false function:
  # - creates column without default
  # - changes column default
  # - updates all column values to default value
  # - changes column null
  #
  # You need use disable_ddl_transaction! if null == false!
  #
  def add_column_with_default(table_name, column_name, column_type, default:, null: true)
    if null == false && !disable_ddl_transaction
      raise 'Please add disable_ddl_transaction! to migration'
    end

    add_column(table_name, column_name, column_type)
    change_column_default(table_name, column_name, default)

    if null == false
      # Index allows to change `not null` faster.
      add_index table_name, column_name, algorithm: :concurrently

      update_column_values(table_name, column_name, default)


      change_column_null(table_name, column_name, false)
      remove_index table_name, column_name
    end
  rescue => e
    safety_assured { remove_column(table_name, column_name) }

    raise e
  end

  BATCH_SIZE = 10_000

  def update_column_values(table_name, column_name, value)
    puts "-- update_column_values(:#{table_name}, :#{column_name}, #{value})"

    escaped_default_value = ActiveRecord::Base.connection.quote(value)

    time =
      Benchmark.measure do
        loop do
          res = safety_assured do
            execute %Q{
              UPDATE #{table_name}
              SET #{column_name} = #{escaped_default_value}
              WHERE id IN (
                SELECT id
                FROM #{table_name}
                WHERE #{column_name} IS NULL
                ORDER BY id
                LIMIT #{BATCH_SIZE}
              )
            }.squish
          end
          break if res.cmd_tuples < BATCH_SIZE
        end
      end

    puts "   -> #{"%.4fs" % time.real}"
  end
end

