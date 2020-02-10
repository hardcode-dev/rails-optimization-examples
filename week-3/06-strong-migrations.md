# StrongMigrations

Отличный инструмент, предотвращающий опасные миграции.

И заодно отличная база знаний по этим опасным миграциям.

```ruby
class AddIndexOnPublishedToArticles < ActiveRecord::Migration[5.1]
  def change
    add_index :articles, :published
  end
end
```

```
rake db:migrate

=== Dangerous operation detected #strong_migrations ===
Adding a non-concurrent index locks the table. Instead, use:
class AddIndexOnPublishedToArticles < ActiveRecord::Migration[5.1]
  disable_ddl_transaction!
  def change
    add_index :articles, :published, algorithm: :concurrently
  end
end
```

```ruby
# config/initializers/strong_migrations.rb
# Gem был добавлен 2018.04.06 и не должен влиять на старые миграции.
StrongMigrations.start_after = 20180406000000

# Автоматически Выполнять analyze таблицы после добавления индекса
StrongMigrations.auto_analyze = true

# Tell fuckup story about index removal!
```
