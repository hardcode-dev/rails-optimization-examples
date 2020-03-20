# Gem memory_profile report via derailed perf:objects

Problems with cloudinary.

```bash
SECKRET_KEY_BASE=fffuuu RAILS_ENV=local_production TEST_COUNT=10 bundle exec derailed exec perf:objects

Endpoint: "/"
Running 10 times
Total allocated: 45522485 bytes (425002 objects)
Total retained:  593798 bytes (3114 objects)

allocated memory by gem
-----------------------------------
   6941460  railties-5.1.6.2
   5460016  activesupport-5.1.6.2
   4709530  addressable-2.5.2
   4100200  rails-optimization-2-task4/app
   4085800  activerecord-5.1.6.2
   2757386  http-3.3.0
   2755383  newrelic_rpm-6.2.0.354
   2364560  cloudinary-1.11.1
   2355500  actionview-5.1.6.2
   2160480  rack-2.0.6
   1370870  rack-mini-profiler-1.0.2
   1146560  envied-0.9.1
    746480  honeycomb-rails-0.8.1
    643751  json-1.8.6
    634800  carrierwave-1.3.1
    553160  activemodel-5.1.6.2
    424000  warden-1.2.8
    412560  draper-3.0.1
    258486  actionpack-5.1.6.2
    257860  airbrake-8.1.4
    164760  arel-8.0.0
    138810  devise-4.6.1
    129360  sprockets-rails-3.2.1
    125200  securerandom
    114095  libhoney-1.11.0
    108000  tzinfo-1.2.5
     82800  hashie-3.6.0
     77040  uri
     71600  openssl
     70560  skylight-core-3.1.4
     57600  storext-2.2.2
     44750  timber-2.6.2
     38480  set
     29200  airbrake-ruby-3.2.5
     24720  webpacker-3.5.5
     22800  sprockets-3.7.2
     16060  rack-timeout-0.5.1
     14080  omniauth-1.9.0
     13688  concurrent-ruby-1.1.5
     12400  time
      7560  fastly-rails-0.8.0
      3600  kaminari-core-1.1.1
      3200  other
      3120  request_store-1.4.0
      2400  jquery-fileupload-rails-0.4.7
      2000  forwardable
      1760  monitor
      1600  serviceworker-rails-0.5.5
      1200  omniauth-twitter-1.4.0
       800  kaminari-activerecord-1.1.1

allocated memory by file
-----------------------------------
   6931940  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb
   3054250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb
   2168946  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb
   2119760  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb
   1974480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/response.rb
   1655280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb
   1642449  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb
   1423600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/headers.rb
   1367920  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb
   1334070  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb
   1121600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/envied-0.9.1/lib/envied/env_proxy.rb
   1080880  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/stories/_main_stories_feed.html.erb
   1080000  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/articles/_single_story.html.erb
    999200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/options.rb
    990400  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/layouts/_styles.html.erb
    738080  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/honeycomb-rails-0.8.1/lib/honeycomb-rails/subscribers/active_record.rb
    643751  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb
    544960  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb
    437540  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/evented_subscriber.rb
    430000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb
    408480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb
    388550  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb
    383200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb
    368880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb
    359760  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb
    337254  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/inflector/methods.rb
    322000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb
    320960  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/backtrace_cleaner.rb
    312000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb
    308472  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/cache.rb
    292080  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/callbacks.rb
    282288  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/json.rb
    240560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/subscriber.rb
    236010  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/url.rb
    232524  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/json/encoding.rb
    224320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/abstract_renderer.rb
    219000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb
    208080  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/notifications/instrumenter.rb
    189200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/tracer.rb
    188480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/querying.rb
    186600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/airbrake-8.1.4/lib/airbrake/rails/action_controller_route_subscriber.rb
    181280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction/abstract_segment.rb
    174000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/auth_token.rb
    157600  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/decorators/article_decorator.rb
    145040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decorator.rb
    143840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/rendering_helper.rb
    137840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb
    137360  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation.rb
    133120  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb
    132240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/template.rb

allocated memory by location
-----------------------------------
   3223640  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:29
   2892740  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:14
   1966880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/response.rb:39
   1442416  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530
   1107200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/envied-0.9.1/lib/envied/env_proxy.rb:27
   1083522  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:175
   1040320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:132
    988080  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/layouts/_styles.html.erb:1
    984800  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/stories/_main_stories_feed.html.erb:1
    910000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/headers.rb:204
    788880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:110
    769920  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/articles/_single_story.html.erb:1
    725440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/honeycomb-rails-0.8.1/lib/honeycomb-rails/subscribers/active_record.rb:39
    714459  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:78
    617600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:182
    529040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155
    511910  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9
    500640  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:154
    447200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
    440000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:203
    440000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:311
    407560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:15
    391200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:16
    363200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
    357390  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:69
    347920  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb:5
    319360  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/backtrace_cleaner.rb:85
    308800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:181
    283040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/evented_subscriber.rb:79
    260000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:272
    259840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:23
    233400  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
    232000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:228
    225560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:14
    219000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
    211894  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/inflector/methods.rb:93
    197600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:117
    196800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/options.rb:165
    184400  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/airbrake-8.1.4/lib/airbrake/rails/action_controller_route_subscriber.rb:31
    176000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:525
    175680  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
    174320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/notifications/instrumenter.rb:58
    171680  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb:334
    171680  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb:348
    170010  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:69
    167440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/tracer.rb:217
    165120  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/callbacks.rb:391
    163840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:80
    163840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/querying.rb:40
    163840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:109

allocated memory by class
-----------------------------------
  19082791  String
   8481896  Hash
   5852624  Array
   4446480  ActionView::OutputBuffer
   1922800  MatchData
    951190  Regexp
    821760  PG::Result
    790400  Proc
    726520  Time
    347920  ActiveRecord::Attribute::FromDatabase
    288160  Thread::Backtrace
    167440  NewRelic::Agent::Transaction::Segment
    127520  NewRelic::Agent::Instrumentation::ActionViewSubscriber::RenderEvent
    122064  ActiveSupport::SafeBuffer
     92400  ActionView::PartialRenderer
     73680  ActiveSupport::JSON::Encoding::JSONGemEncoder::EscapedString
     70080  ActiveSupport::Notifications::Event
     59200  Addressable::URI
     55440  NewRelic::Agent::Stats
     54000  TZInfo::TimeOrDateTime
     54000  TZInfo::TimezonePeriod
     53280  JSON::Ext::Parser
     52000  ActiveRecord::Associations::BelongsToAssociation
     49920  Enumerator
     41200  Rational
     41040  Class
     36160  ActiveRecord::Relation
     34800  OmniAuth::Strategy::Options
     34400  Range
     32560  ActiveRecord::LazyAttributeHash
     31200  Article
     23840  Rack::Utils::HeaderHash
     22400  Arel::Attributes::Attribute
     20000  ArticleDecorator
     20000  HTTP::Options
     18800  NewRelic::MetricSpec
     18560  ActiveSupport::HashWithIndifferentAccess
     18000  HTTP::Headers
     16800  ActiveSupport::Callbacks::Filters::Environment
     15920  ActionDispatch::Request
     15680  JSON::Ext::Generator::State
     14800  ActiveRecord::AttributeSet
     14080  User
     12000  ActiveSupport::Duration
     11200  NewRelic::Agent::Transaction::ExternalRequestSegment
     10560  NewRelic::Agent::Transaction::DatastoreSegment
     10560  ProfileImageUploader
     10000  ProfileImage
      9600  FlareTag
      8960  NewRelic::Agent::Database::Statement

allocated objects by gem
-----------------------------------
     59064  addressable-2.5.2
     58470  railties-5.1.6.2
     48151  activesupport-5.1.6.2
     35729  activerecord-5.1.6.2
     29820  cloudinary-1.11.1
     29134  actionview-5.1.6.2
     28691  newrelic_rpm-6.2.0.354
     27105  http-3.3.0
     22400  rails-optimization-2-task4/app
     12760  envied-0.9.1
     10150  honeycomb-rails-0.8.1
      9013  activemodel-5.1.6.2
      6440  carrierwave-1.3.1
      5750  rack-mini-profiler-1.0.2
      5691  airbrake-8.1.4
      4930  draper-3.0.1
      4102  json-1.8.6
      3445  actionpack-5.1.6.2
      3090  securerandom
      2890  warden-1.2.8
      2480  rack-2.0.6
      2380  arel-8.0.0
      1570  devise-4.6.1
      1500  tzinfo-1.2.5
      1440  storext-2.2.2
      1410  sprockets-rails-3.2.1
      1290  hashie-3.6.0
       900  libhoney-1.11.0
       820  skylight-core-3.1.4
       740  uri
       570  sprockets-3.7.2
       380  timber-2.6.2
       350  airbrake-ruby-3.2.5
       350  openssl
       350  set
       330  webpacker-3.5.5
       316  rack-timeout-0.5.1
       250  time
       180  omniauth-1.9.0
       101  concurrent-ruby-1.1.5
       100  fastly-rails-0.8.0
        80  other
        50  forwardable
        50  jquery-fileupload-rails-0.4.7
        40  serviceworker-rails-0.5.5
        30  kaminari-core-1.1.1
        30  monitor
        30  omniauth-twitter-1.4.0
        30  request_store-1.4.0
        20  kaminari-activerecord-1.1.1

allocated objects by file
-----------------------------------
     58380  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb
     35774  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb
     28500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb
     23290  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb
     18851  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb
     12300  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/headers.rb
     12200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/envied-0.9.1/lib/envied/env_proxy.rb
     10500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/options.rb
     10080  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/honeycomb-rails-0.8.1/lib/honeycomb-rails/subscribers/active_record.rb
      9940  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb
      9580  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb
      7320  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/articles/_single_story.html.erb
      7134  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb
      5880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb
      5510  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb
      5490  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb
      5475  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb
      5470  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb
      4651  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/airbrake-8.1.4/lib/airbrake/rails/action_controller_route_subscriber.rb
      4509  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb
      4102  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb
      3790  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb
      3720  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/subscriber.rb
      3570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/evented_subscriber.rb
      3417  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/json.rb
      3410  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/callbacks.rb
      3380  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb
      3340  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/decorators/article_decorator.rb
      3300  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql_adapter.rb
      3090  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/securerandom.rb
      2720  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb
      2713  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/json/encoding.rb
      2605  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/inflector/methods.rb
      2520  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/cache.rb
      2480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/acts_like.rb
      2320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/template/resolver.rb
      2260  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/abstract_renderer.rb
      2250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/time_with_zone.rb
      2133  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb
      2120  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/helpers/application_helper.rb
      2070  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/hash_with_indifferent_access.rb
      2040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction/abstract_segment.rb
      2000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/url.rb
      2000  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/labor/profile_image.rb
      1790  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decoratable.rb
      1480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb
      1480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/automatic_delegation.rb
      1460  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/notifications/instrumenter.rb
      1440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/storext-2.2.2/lib/storext/instance_methods.rb
      1410  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/sprockets-rails-3.2.1/lib/sprockets/rails/helper.rb

allocated objects by location
-----------------------------------
     19620  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:14
     19040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:29
     11840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/envied-0.9.1/lib/envied/env_proxy.rb:27
     11000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:311
      9880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:15
      9860  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/honeycomb-rails-0.8.1/lib/honeycomb-rails/subscribers/active_record.rb:39
      9780  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:16
      9080  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
      8753  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530
      8620  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
      7720  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:181
      7720  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:182
      6270  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:69
      5475  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
      5430  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9
      4610  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/airbrake-8.1.4/lib/airbrake/rails/action_controller_route_subscriber.rb:31
      4349  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb:5
      4051  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:78
      4000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:272
      4000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/options.rb:182
      3900  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/headers.rb:53
      3550  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/headers.rb:204
      3260  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
      3260  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
      3220  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql_adapter.rb:441
      3150  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/options.rb:165
      3090  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/decorators/article_decorator.rb:21
      2940  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:71
      2920  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155
      2750  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:845
      2480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/acts_like.rb:8
      2300  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:439
      2280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:14
      2280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:42
      2155  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
      2133  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
      2000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/securerandom.rb:157
      2000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/options.rb:70
      1860  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/subscriber.rb:98
      1842  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/json.rb:36
      1800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:117
      1800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
      1760  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb:205
      1710  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:70
      1700  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:194
      1700  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:211
      1700  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/headers.rb:61
      1640  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/template/resolver.rb:182
      1610  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:524
      1480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/automatic_delegation.rb:13

allocated objects by class
-----------------------------------
    246968  String
    102457  Array
     23347  Hash
      9880  Proc
      8570  Time
      6830  MatchData
      4349  ActiveRecord::Attribute::FromDatabase
      1842  ActiveSupport::JSON::Encoding::JSONGemEncoder::EscapedString
      1660  Regexp
      1140  NewRelic::Agent::Instrumentation::ActionViewSubscriber::RenderEvent
      1030  Rational
       910  NewRelic::Agent::Transaction::Segment
       860  Range
       750  TZInfo::TimeOrDateTime
       750  TZInfo::TimezonePeriod
       730  ActiveSupport::Notifications::Event
       630  NewRelic::Agent::Stats
       620  ActionView::OutputBuffer
       560  Arel::Attributes::Attribute
       550  ActionView::PartialRenderer
       500  ActiveRecord::Associations::BelongsToAssociation
       500  ArticleDecorator
       470  NewRelic::MetricSpec
       450  HTTP::Headers
       420  ActiveSupport::Callbacks::Filters::Environment
       400  Addressable::URI
       390  Enumerator
       370  ActiveRecord::AttributeSet
       370  ActiveRecord::LazyAttributeHash
       370  ActiveSupport::SafeBuffer
       370  JSON::Ext::Parser
       300  ActiveSupport::Duration
       260  Article
       250  ProfileImage
       240  FlareTag
       230  ActiveRecord::Relation
       200  HTTP::URI
       150  ActiveRecord::Relation::WhereClause
       120  Arel::Nodes::Casted
       110  ActionDispatch::Request
       110  CarrierWave::Mounter
       110  CarrierWave::SanitizedFile
       110  CarrierWave::Storage::File
       110  ProfileImageUploader
       110  User
       100  HTTP::Options
        90  Class
        90  OmniAuth::Strategy::Options
        90  Set
        80  ActiveRecord::Result

retained memory by gem
-----------------------------------
    255544  activerecord-5.1.6.2
    206456  rack-2.0.6
     32383  rack-mini-profiler-1.0.2
     20040  activemodel-5.1.6.2
     14800  json-1.8.6
     14795  carrierwave-1.3.1
     13408  newrelic_rpm-6.2.0.354
      7560  activesupport-5.1.6.2
      5705  actionpack-5.1.6.2
      3600  libhoney-1.11.0
      3560  hashie-3.6.0
      3528  tzinfo-1.2.5
      2576  warden-1.2.8
      2368  arel-8.0.0
      2000  http-3.3.0
      1912  draper-3.0.1
       792  actionview-5.1.6.2
       526  rack-timeout-0.5.1
       272  request_store-1.4.0
       232  airbrake-8.1.4
       232  honeycomb-rails-0.8.1
       232  set
       221  timber-2.6.2
       208  fastly-rails-0.8.0
       184  railties-5.1.6.2
       176  monitor
       176  rails-optimization-2-task4/app
       144  devise-4.6.1
        88  concurrent-ruby-1.1.5
        40  rails-optimization-2-task4/lib
        40  securerandom

retained memory by file
-----------------------------------
    197288  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/response.rb
    116912  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb
     37600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb
     32383  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb
     32200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb
     16720  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/querying.rb
     14800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb
     13784  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb
     13112  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb
     12545  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb
     10440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb
      9680  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction_event_primitive.rb
      8584  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/aggregations.rb
      7495  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb
      4872  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb
      4048  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb
      3600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb
      3560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/hashie-3.6.0/lib/hashie/mash.rb
      3528  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/date_and_time/zones.rb
      3528  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/tzinfo-1.2.5/lib/tzinfo/transition_data_timezone_info.rb
      3432  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb
      3168  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb
      3091  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/sanitized_file.rb
      2744  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb
      2552  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/versions.rb
      2320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction/attributes.rb
      2000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/response.rb
      1768  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb
      1560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb
      1496  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb
      1232  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/storage/file.rb
      1209  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/middleware/cookies.rb
      1040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation/query_methods.rb
      1040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/table.rb
      1040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decoratable.rb
       880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction.rb
       712  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb
       640  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/request/session.rb
       632  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/scoping/named.rb
       568  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/nodes/select_core.rb
       568  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/collection_decorator.rb
       504  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/config.rb
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation.rb
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/hash/indifferent_access.rb
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/hash_with_indifferent_access.rb
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/strategies/base.rb
       456  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/callbacks.rb
       440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods/read.rb
       440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/store.rb
       400  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_controller_subscriber.rb

retained memory by location
-----------------------------------
    196688  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/response.rb:39
    104032  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:132
     37600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb:5
     32383  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9
     25984  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:23
     16384  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/querying.rb:40
     14800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155
     12880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
     12545  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
     10440  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
      9280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction_event_primitive.rb:45
      8584  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/aggregations.rb:23
      8584  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb:293
      8584  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb:562
      5200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb:265
      4528  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb:155
      4214  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:61
      3600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:79
      3528  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/date_and_time/zones.rb:33
      3528  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/tzinfo-1.2.5/lib/tzinfo/transition_data_timezone_info.rb:115
      3480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/hashie-3.6.0/lib/hashie/mash.rb:189
      3281  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:69
      3256  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:14
      3168  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
      3091  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/sanitized_file.rb:119
      2552  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb:447
      2552  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:160
      2552  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/versions.rb:139
      2320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction/attributes.rb:126
      2000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/response.rb:45
      1888  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb:495
      1856  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb:449
      1760  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:92
      1560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
      1480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:115
      1480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:15
      1056  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:21
      1040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/table.rb:81
      1040  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decoratable.rb:18
       960  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb:469
       880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:412
       880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb:448
       880  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction.rb:780
       792  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/storage/file.rb:53
       632  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/scoping/named.rb:26
       544  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb:31
       480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation/query_methods.rb:893
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/hash/indifferent_access.rb:8
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/hash_with_indifferent_access.rb:227
       464  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/config.rb:108

retained memory by class
-----------------------------------
    290762  String
    210856  Hash
     37600  ActiveRecord::Attribute::FromDatabase
      7828  Time
      5200  ActiveRecord::Associations::BelongsToAssociation
      3600  Libhoney::Response
      3552  Array
      3528  TZInfo::TimezonePeriod
      3480  OmniAuth::Strategy::Options
      3256  ActiveRecord::LazyAttributeHash
      3120  Article
      2000  HTTP::Response::Status
      1888  Rack::Utils::HeaderHash
      1480  ActiveRecord::AttributeSet
      1408  User
      1200  Proc
      1160  ActiveSupport::HashWithIndifferentAccess
      1056  ProfileImageUploader
      1040  Arel::Attributes::Attribute
      1040  ArticleDecorator
       912  Class
       880  CarrierWave::Mounter
       872  ActionDispatch::Request
       792  CarrierWave::SanitizedFile
       480  Module
       440  CarrierWave::Storage::File
       272  <<Unknown>>
       232  Warden::Config
       208  StoriesController
       176  ActiveRecord::Relation
       160  Rack::BodyProxy
       160  StringIO
       144  ActionDispatch::Response
       120  Arel::Nodes::BindParam
       112  Devise::Strategies::Rememberable
       112  Warden::Proxy
       104  ActionDispatch::Cookies::CookieJar
       104  Arel::Nodes::SelectCore
       104  Devise::Strategies::DatabaseAuthenticatable
       104  Rack::MockResponse
        96  ActiveSupport::MessageEncryptor
        88  ActionView::LookupContext
        88  ActiveRecord::Relation::QueryAttribute
        88  Arel::Nodes::SelectStatement
        88  Rack::Response
        80  ActionDispatch::Request::Session
        80  ActiveSupport::MessageVerifier
        80  Arel::Nodes::SqlLiteral
        80  Rack::Timeout::RequestDetails
        80  Rack::Timeout::Scheduler::RepeatEvent

retained objects by gem
-----------------------------------
      1522  activerecord-5.1.6.2
       502  rack-mini-profiler-1.0.2
       323  activemodel-5.1.6.2
       110  carrierwave-1.3.1
       100  activesupport-5.1.6.2
        84  rack-2.0.6
        74  json-1.8.6
        60  actionpack-5.1.6.2
        52  newrelic_rpm-6.2.0.354
        50  http-3.3.0
        50  libhoney-1.11.0
        49  tzinfo-1.2.5
        45  arel-8.0.0
        30  draper-3.0.1
        15  warden-1.2.8
        11  hashie-3.6.0
         8  actionview-5.1.6.2
         7  rack-timeout-0.5.1
         4  rails-optimization-2-task4/app
         3  monitor
         2  fastly-rails-0.8.0
         2  railties-5.1.6.2
         2  request_store-1.4.0
         2  timber-2.6.2
         1  airbrake-8.1.4
         1  concurrent-ruby-1.1.5
         1  devise-4.6.1
         1  honeycomb-rails-0.8.1
         1  rails-optimization-2-task4/lib
         1  securerandom
         1  set

retained objects by file
-----------------------------------
       502  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb
       470  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb
       359  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb
       261  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb
       225  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb
       148  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb
        98  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb
        87  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb
        74  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb
        74  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/response.rb
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb
        49  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/date_and_time/zones.rb
        49  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/tzinfo-1.2.5/lib/tzinfo/transition_data_timezone_info.rb
        46  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb
        39  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/aggregations.rb
        33  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb
        29  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/table.rb
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decoratable.rb
        24  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb
        22  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb
        22  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/storage/file.rb
        22  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction_event_primitive.rb
        13  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb
        12  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/middleware/cookies.rb
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods/read.rb
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/sanitized_file.rb
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/store.rb
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/versions.rb
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/hashie-3.6.0/lib/hashie/mash.rb
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/response.rb
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation/query_methods.rb
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_controller_subscriber.rb
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction.rb
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction/attributes.rb
         9  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/proxy.rb
         6  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation/where_clause.rb
         6  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/nodes/select_core.rb
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/querying.rb
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/select_manager.rb
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-timeout-0.5.1/lib/rack/timeout/core.rb
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/request/session.rb
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/body_proxy.rb
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/monitor.rb
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/nodes/select_statement.rb
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/config.rb

retained objects by location
-----------------------------------
       502  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9
       470  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute.rb:5
       322  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
       261  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
       225  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
        74  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb:265
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/response.rb:45
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:79
        49  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:61
        49  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:69
        49  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/date_and_time/zones.rb:33
        49  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/tzinfo-1.2.5/lib/tzinfo/transition_data_timezone_info.rb:115
        46  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        39  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/aggregations.rb:23
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations.rb:293
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:115
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:14
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:15
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:23
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb:155
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/core.rb:562
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:132
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/arel-8.0.0/lib/arel/table.rb:81
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decoratable.rb:18
        24  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb:469
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods/read.rb:54
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb:447
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb:448
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:160
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:21
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:33
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/sanitized_file.rb:119
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/storage/file.rb:52
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/storage/file.rb:53
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/store.rb:97
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/versions.rb:139
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:412
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:427
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_controller_subscriber.rb:88
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction.rb:780
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction/attributes.rb:126
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction_event_primitive.rb:45
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction_event_primitive.rb:62
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:94
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:235
         9  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/hashie-3.6.0/lib/hashie/mash.rb:189
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/response.rb:77
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/querying.rb:40

retained objects by class
-----------------------------------
      1667  String
       470  ActiveRecord::Attribute::FromDatabase
       313  Hash
        99  Time
        55  Array
        50  ActiveRecord::Associations::BelongsToAssociation
        50  HTTP::Response::Status
        50  Libhoney::Response
        49  TZInfo::TimezonePeriod
        37  ActiveRecord::AttributeSet
        37  ActiveRecord::LazyAttributeHash
        26  Arel::Attributes::Attribute
        26  Article
        26  ArticleDecorator
        15  Proc
        11  CarrierWave::Mounter
        11  CarrierWave::SanitizedFile
        11  CarrierWave::Storage::File
        11  ProfileImageUploader
        11  User
         9  OmniAuth::Strategy::Options
         6  ActionDispatch::Request
         5  ActiveSupport::HashWithIndifferentAccess
         4  Rack::BodyProxy
         3  Arel::Nodes::BindParam
         2  <<Unknown>>
         2  ActiveSupport::MessageVerifier
         2  Arel::Nodes::SqlLiteral
         2  Class
         2  Rack::Utils::HeaderHash
         2  StringIO
         1  ActionController::Parameters
         1  ActionDispatch::Cookies::CookieJar
         1  ActionDispatch::Cookies::EncryptedCookieJar
         1  ActionDispatch::Cookies::SignedCookieJar
         1  ActionDispatch::Flash::FlashHash
         1  ActionDispatch::Http::Headers
         1  ActionDispatch::RemoteIp::GetIp
         1  ActionDispatch::Request::Session
         1  ActionDispatch::Request::Session::Options
         1  ActionDispatch::Response
         1  ActionDispatch::Response::Buffer
         1  ActionDispatch::Response::Header
         1  ActionView::LookupContext
         1  ActionView::OutputBuffer
         1  ActionView::PathSet
         1  ActionView::Renderer
         1  ActiveRecord::Relation
         1  ActiveRecord::Relation::QueryAttribute
         1  ActiveRecord::Relation::WhereClause


Allocated String Report
-----------------------------------
     17050  ""
      6500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:311
      1800  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530
      1150  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:439
       900  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:507
       850  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:211
       620  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:173
       570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:69
       260  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:357
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:423
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/url.rb:21
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/url.rb:30
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:152
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:173
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:183
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:269
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:285
       150  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/response/parser.rb:14
       120  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
       120  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/helpers/application_helper.rb:201
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1377
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1501
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:382
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:385
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:436
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:440
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:534
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:486
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/openssl/buffering.rb:442
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/connection.rb:96
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/request/writer.rb:61
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:33
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:34
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:35
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_tag_helper.rb:82
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:240
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:40
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb:267
        40  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/layouts/_styles.html.erb:1
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/request.rb:235
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/sanitization.rb:65
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:223
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/omniauth-1.9.0/lib/omniauth/strategy.rb:412
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:97
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:235
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/common.rb:377
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/request.rb:148
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/nodes/node.rb:21
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/router/utils.rb:17
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/inflector/methods.rb:95
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/cross_app_monitor.rb:96
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/obfuscator.rb:27
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/rack/browser_monitoring.rb:35
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/deflater.rb:47
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:102
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:107
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:131
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:453
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/utils.rb:266
        10  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/views/articles/_sidebar_additional.html.erb:21

      6600  "/Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/middleware_tracing.rb:99:in `call'"
      2640  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:14
      1320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/honeycomb-rails-0.8.1/lib/honeycomb-rails/subscribers/active_record.rb:39
      1320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:15
      1320  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:16

      6400  "/Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/skylight-core-3.1.4/lib/skylight/core/probes/middleware.rb:26:in `call'"
      2560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:14
      1280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/honeycomb-rails-0.8.1/lib/honeycomb-rails/subscribers/active_record.rb:39
      1280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:15
      1280  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:16

      4645  "controller"
      4610  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/airbrake-8.1.4/lib/airbrake/rails/action_controller_route_subscriber.rb:31
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/hash_with_indifferent_access.rb:309
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/parameter_filtering.rb:38
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/json.rb:163

      4600  "api.honeycomb.io"
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1093
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:436
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:440
       350  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1187
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:68
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:72
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1091
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:382
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:385
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:534
       200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
       200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:125
       200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:127
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1206
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1238
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1240
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/rfc3986_parser.rb:41
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/http_clients/http_rb_wrappers.rb:45

      4310  "/"
      1130  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:194
       570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:69
       570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:70
       550  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:420
       500  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/models/user.rb:229
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:289
       200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1529
       200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:2422
        60  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/to_query.rb:41
        60  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:405
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/omniauth-1.9.0/lib/omniauth/strategy.rb:412
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:90
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/serviceworker-rails-0.5.5/lib/serviceworker/route.rb:24
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/serviceworker-rails-0.5.5/lib/serviceworker/route.rb:60
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/rfc2396_parser.rb:151
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/rfc2396_parser.rb:156
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/gtg/simulator.rb:32
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/path/pattern.rb:156
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/router/utils.rb:19
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/router/utils.rb:21
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/journey/visitors.rb:185
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:98
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/mini_profiler/profiler.rb:158
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/timber-2.6.2/lib/timber/util/attribute_normalizer.rb:65

      3760  "https"
       600  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1814
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:853
       300  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:873
       300  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:877
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:382
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:385
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:436
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:440
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:534
       200  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1410
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/generic.rb:336
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/rfc3986_parser.rb:24
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1727
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/http-3.3.0/lib/http/request.rb:83
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:253
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:100

      3480  "utf-8"
      1150  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:438
      1150  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:439
      1150  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:445
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:412
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:428

      3110  "_"
      3000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:311
       110  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/uploader/versions.rb:265

      2640  "newrelic_rpm (6.2.0.354) lib/new_relic/agent/instrumentation/middleware_tracing.rb:99:in `call'"
      2640  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:29

      2560  "skylight-core (3.1.4) lib/skylight/core/probes/middleware.rb:26:in `call'"
      2560  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/railties-5.1.6.2/lib/rails/backtrace_cleaner.rb:29

      2290  "id"
      1750  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
       370  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:115
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
        30  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/attribute_methods.rb:219
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/associations/preloader/association.rb:31
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:179
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/reflection.rb:65

      2281  "render_template.action_view$"
      2281  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:78

      2000  "90"
      1000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
      1000  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:311

      1990  "user"
      1240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
       370  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/devise-4.6.1/lib/devise/strategies/rememberable.rb:56
       260  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/reflection.rb:117
       110  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/inflector/methods.rb:92
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/warden-1.2.8/lib/warden/session_serializer.rb:12

      1970  "1"
       840  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
       430  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1501
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:382
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:385
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:436
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:440
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:534

      1800  "U*"
       900  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:117
       900  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120

      1750  "auto"
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:311
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:155
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:282
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:285
       250  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/labor/profile_image.rb:17
       250  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/labor/profile_image.rb:19

      1710  "!"
      1710  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:42

      1601  "[^a-zA-Z0-9\\-\\.\\_\\~\\!\\$\\&\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]"
      1601  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530

      1600  "articles"
       510  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb:205
       510  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb:211
       510  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:69
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/relation.rb:711
        30  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/helpers/application_helper.rb:20

      1240  "acts_like_time?"
      1240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/acts_like.rb:8

      1240  "time"
      1240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/acts_like.rb:8

      1215  "dev.to-db-local_production"
       270  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:385
       225  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:382
       180  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:440
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1501
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:2304
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:436
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:534
        45  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
        45  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:65

      1180  "render_template.action_view"
       590  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:78
       570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/log_subscriber.rb:43
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/abstract_renderer.rb:41

      1060  "ArticleDecorator"
       510  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/inflector/methods.rb:259
       510  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decoratable.rb:74
        30  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decorator.rb:245
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/draper-3.0.1/lib/draper/decorator.rb:246

      1060  "r"
       570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:42
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:524
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:194

      1045  "path"
       950  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
        30  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/attribute_methods.rb:219
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:179
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/object/json.rb:163

      1001  "[^a-zA-Z0-9\\-\\.\\_\\~\\!\\$\\&\\'\\(\\)\\*\\+\\,\\;\\=\\[\\:\\]]"
      1001  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530

       962  "single_story"
       242  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:526
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb:205
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:524
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:525

       962  "tag_identifier"
       242  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:526
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/lookup_context.rb:205
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:524
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/renderer/partial_renderer.rb:525

       960  "/assets/reactions-stack-4bb9c1e4b3e71b7aa135d6f9a5ef29a6494141da882edd4fa971a77abe13dbe7.png"
       480  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:211
       240  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/sprockets-rails-3.2.1/lib/sprockets/rails/helper.rb:80

       950  "[^"
       900  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:378

       950  "]"
       900  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:378

       870  ","
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:269
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:273
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:274
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:486
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/common.rb:377
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/deflater.rb:47
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/deflater.rb:49

       870  "boost_states"
       780  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
        30  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/attribute_methods.rb:219
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:179
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

       840  "/assets/comments-bubble-7448082accd39cfe9db9b977f38fa6e8f8d26dc43e142c5d160400d6f952ee47.png"
       420  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
       210  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/helpers/asset_url_helper.rb:211
       210  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/sprockets-rails-3.2.1/lib/sprockets/rails/helper.rb:80

       810  "."
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:152
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:173
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:187
        60  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionview-5.1.6.2/lib/action_view/digestor.rb:23

       760  "0"
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
       260  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105

       751  "[^a-zA-Z0-9\\-\\+\\.]"
       751  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:530

       750  "c_fill,f_auto,fl_progressive,h_90,q_auto,w_90"
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:273
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:274
       250  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/cloudinary-1.11.1/lib/cloudinary/utils.rb:289

       730  "events"
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/idna/pure.rb:120
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1501
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:382
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:385
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:436
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:440
       100  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:534
        30  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/helpers/application_helper.rb:22

       700  "language_settings"
       660  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

       693  "discuss"
       410  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245
       270  /Users/spajic/hardcode-dev/rails-optimization-2-task4/app/decorators/article_decorator.rb:21
        13  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16

       675  "/1/events/dev.to-db-local_production"
       180  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1501
       180  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:2380
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:107
        90  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1506
        45  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/2.6.0/uri/rfc3986_parser.rb:44
        45  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/addressable-2.5.2/lib/addressable/uri.rb:1732
        45  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/libhoney-1.11.0/lib/libhoney/transmission.rb:65

       630  "views"
       570  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_view_subscriber.rb:69
        60  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/cache.rb:78

       600  "?"
       540  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/string_inquirer.rb:25
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/sanitization.rb:165
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/sanitization.rb:65
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/sanitization.rb:152
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/sanitization.rb:162

       590  "comments_count"
       460  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
        30  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/attribute_methods.rb:219
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:179

       590  "reading_time"
       500  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
        30  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/attribute_methods.rb:219
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:179
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
        20  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

       580  "22"
       490  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/helpers/time_value.rb:71
        50  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105
        40  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/string/output_safety.rb:245


Retained String Report
-----------------------------------
        44  "2017-01-01 05:00:00"
        44  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        41  "id"
        37  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_set/builder.rb:115
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        31  ""
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/request.rb:148
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:102
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:107
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:131
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:97

        29  "comments_count"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        29  "positive_reactions_count"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        28  "boost_states"
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        28  "updated_at"
        24  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        27  "#000000"
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16

        27  "cached_tag_list"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        27  "main_image"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        27  "path"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        27  "reading_time"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        27  "title"
        25  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        26  "video"
        24  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        26  "{\"boosted_additional_tags\": \"\", \"boosted_dev_digest_email\": false, \"boosted_additional_articles\": false}"
        26  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        22  "default"
        22  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        20  "Controller/stories/index"
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/instrumentation/action_controller_subscriber.rb:88
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/newrelic_rpm-6.2.0.354/lib/new_relic/agent/transaction.rb:780

        20  "text/html; charset=utf-8"
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:412
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/actionpack-5.1.6.2/lib/action_dispatch/http/response.rb:427

        15  "https://pigment.github.io/fake-logos/logos/medium/color/9.png"
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        13  "discuss"
        13  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16

        13  "language_settings"
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        13  "profile_image"
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods/read.rb:54
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

        11  "en"
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/json-1.8.6/lib/json/common.rb:155

        11  "example.org"
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/request.rb:235
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:95

        11  "private"
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        11  "v1"
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        11  "{\"prefer_language_en\": true, \"prefer_language_es\": false, \"prefer_language_fr\": false, \"prefer_language_it\": false, \"prefer_language_ja\": false, \"estimated_default_language\": \"en\"}"
        11  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

        10  "200"
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105

        10  "GET"
        10  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-2.0.6/lib/rack/mock.rb:94

         9  "https://pigment.github.io/fake-logos/logos/medium/color/4.png"
         6  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         9  "https://pigment.github.io/fake-logos/logos/medium/color/5.png"
         6  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         9  "https://pigment.github.io/fake-logos/logos/medium/color/6.png"
         6  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         7  "https://pigment.github.io/fake-logos/logos/medium/color/10.png"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         3  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         6  "4341aa84-6184-4876-94ef-14cf9ced27d2.png"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         6  "https://pigment.github.io/fake-logos/logos/medium/color/1.png"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         6  "https://pigment.github.io/fake-logos/logos/medium/color/11.png"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         6  "https://pigment.github.io/fake-logos/logos/medium/color/3.png"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         6  "kacey_mayer"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16

         5  "3"
         5  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105

         5  "main_image_background_hex_color"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
         1  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/attribute_methods.rb:228

         4  "/Users/spajic/hardcode-dev/rails-optimization-2-task4/public/uploads/user/profile_image/5/4341aa84-6184-4876-94ef-14cf9ced27d2.png"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/sanitized_file.rb:119
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/carrierwave-1.3.1/lib/carrierwave/storage/file.rb:52

         4  "/kacey_mayer/-the-proper-study-3afc"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         4  "2"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105

         4  "5"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105

         4  "7"
         4  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activesupport-5.1.6.2/lib/active_support/core_ext/numeric/conversions.rb:105

         4  "Kacey Mayer"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         4  "badge_achievements_count"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

         4  "discuss, career, linux, python"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activemodel-5.1.6.2/lib/active_model/type/string.rb:16
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/rack-mini-profiler-1.0.2/lib/patches/db/pg.rb:9

         4  "email_badge_notifications"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126

         4  "email_comment_notifications"
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/connection_adapters/postgresql/database_statements.rb:81
         2  /Users/spajic/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-5.1.6.2/lib/active_record/result.rb:126
