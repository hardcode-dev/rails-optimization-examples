# Profile a Gemfile via derailed bundle:mem

## twilio is taking too much memory
https://github.com/twilio/twilio-ruby/issues/396

```
Twilio these days has a huge API surface. It's no longer sending messages and making calls, there are resources for Chat, Video, Notifications, Fax, Wireless, Autopilot, TaskRouter... the list goes on. To date we have created libraries that cover the entire REST API as well as generators for TwiML and JWTs to give access to the client side portions of Twilio. On top of that, we have also written a library generator which takes API definitions and generates the libraries in multiple languages.

As Twilio has grown, the libraries have grown and I believe that this has lead to the memory bloat you are seeing in your apps today, especially since the library requires all of the files, regardless of how much or little you use them.
```

```bash
bundle exec derailed bundle:mem
TOP: 133.3086 MiB
  twilio-ruby: 22.4648 MiB
  rails/all: 21.3789 MiB
    rails: 10.5234 MiB (Also required by: active_record/railtie, active_model/railtie, and 20 others)
      active_support/railtie: 3.8906 MiB
        active_support/i18n_railtie: 3.8906 MiB
          rails/railtie/configuration: 2.0313 MiB (Also required by: rails/engine/configuration)
            rails/configuration: 2.0 MiB
              active_support/core_ext/object: 1.7891 MiB
                active_support/core_ext/object/json: 0.8594 MiB (Also required by: active_support/json/encoding)
                  json: 0.6055 MiB (Also required by: active_support/json/decoding, sprockets/bower, and 43 others)
                    json/common: 0.3789 MiB (Also required by: json/ext)
                active_support/core_ext/object/conversions: 0.707 MiB
                  active_support/core_ext/hash/conversions: 0.6953 MiB (Also required by: active_support/core_ext/hash, active_model/serializers/xml)
                    active_support/time: 0.5391 MiB (Also required by: active_record/base)
          active_support/file_update_checker: 1.8164 MiB (Also required by: rails/application/configuration)
            active_support/core_ext/time/calculations: 1.8164 MiB (Also required by: active_support/core_ext/time, active_support/core_ext/numeric/time)
              active_support/core_ext/time/conversions: 0.9727 MiB (Also required by: active_support/core_ext/time, active_support/core_ext/date_time/conversions)
                active_support/values/time_zone: 0.9688 MiB (Also required by: active_support/time_with_zone, active_support/core_ext/date_time/conversions)
                  tzinfo: 0.8789 MiB
              active_support/duration: 0.3125 MiB (Also required by: active_support/time_with_zone, active_support/core_ext/date/calculations, and 2 others)
      rails/application: 2.8398 MiB
        active_support/key_generator: 2.0156 MiB (Also required by: action_dispatch/middleware/cookies)
          openssl: 1.9922 MiB (Also required by: active_support/message_encryptor, http/options, and 30 others)
            openssl/ssl: 1.3359 MiB
              ipaddr: 0.4766 MiB (Also required by: domain_name, fog/core)
                socket: 0.3477 MiB (Also required by: http/options, net/https, and 15 others)
            openssl.so: 0.5898 MiB
        yaml: 0.4258 MiB (Also required by: rails/secrets, action_controller/metal/strong_parameters, and 18 others)
          psych: 0.4219 MiB
      active_support: 2.7031 MiB (Also required by: active_support/railtie, active_support/i18n_railtie, and 15 others)
        active_support/logger: 1.9688 MiB (Also required by: active_support/tagged_logging, webpacker)
          active_support/logger_silence: 1.9297 MiB
            concurrent: 1.8828 MiB (Also required by: sprockets/manifest)
              concurrent/configuration: 0.7656 MiB (Also required by: concurrent/scheduled_task, concurrent/options, and 2 others)
                concurrent/delay: 0.6758 MiB (Also required by: concurrent/utility/processor_counter, concurrent)
                  concurrent/executor/immediate_executor: 0.5117 MiB (Also required by: concurrent/configuration, concurrent/executors)
                    concurrent/executor/serial_executor_service: 0.4336 MiB (Also required by: concurrent/executors, concurrent/executor/serialized_execution_delegator)
              concurrent/executors: 0.418 MiB
        active_support/dependencies/autoload: 0.6172 MiB (Also required by: rails, active_support/rails)
          active_support/inflector/methods: 0.5938 MiB (Also required by: active_support/inflector, active_support/core_ext/string/inflections, and 6 others)
            active_support/inflections: 0.5664 MiB (Also required by: active_support/inflector)
              active_support/inflector/inflections: 0.5586 MiB (Also required by: active_support/inflector)
                concurrent/map: 0.3242 MiB (Also required by: i18n, concurrent, and 10 others)
      action_dispatch/railtie: 0.957 MiB (Also required by: action_controller/railtie)
        action_dispatch: 0.8867 MiB (Also required by: action_controller)
          active_support/rails: 0.4961 MiB (Also required by: active_record, active_model, and 6 others)
            active_support/core_ext/class/attribute: 0.4609 MiB (Also required by: active_support/callbacks, active_support/rescuable, and 6 others)
    sprockets/railtie: 6.8711 MiB (Also required by: sass/rails/railtie, administrate/engine)
      sprockets/rails/context: 5.6094 MiB
        action_view/helpers: 5.582 MiB (Also required by: inline_svg/action_view/helpers, action_view/base)
          action_view/helpers/form_helper: 4.4609 MiB (Also required by: action_view/helpers/form_options_helper)
            action_view/helpers/form_tag_helper: 4.1563 MiB
              action_view/helpers/text_helper: 4.1094 MiB
                action_view/helpers/sanitize_helper: 4.1016 MiB
                  rails-html-sanitizer: 4.0938 MiB
                    loofah: 3.9922 MiB (Also required by: feedjira)
                      nokogiri: 3.0547 MiB (Also required by: ahoy_email, aws-sdk-core/xml/parser/engines/nokogiri, and 11 others)
                        nokogiri/css: 1.1992 MiB
                          nokogiri/css/parser: 0.9258 MiB
                        nokogiri/html: 0.8047 MiB
                          nokogiri/html/element_description_defaults: 0.6328 MiB
                        nokogiri/xml: 0.7617 MiB
                      loofah/html5/scrub: 0.3906 MiB
                        crass: 0.3398 MiB
      sprockets: 0.6992 MiB (Also required by: sprockets/rails/context, sprockets/rails/helper, and 2 others)
        sprockets/environment: 0.5469 MiB
          sprockets/base: 0.5391 MiB (Also required by: sprockets/cached_environment, sprockets/legacy)
    active_record/railtie: 3.5938 MiB
      active_record: 2.1406 MiB (Also required by: active_record_union, acts-as-taggable-on, and 3 others)
        active_record/connection_adapters/abstract_adapter: 1.4336 MiB
          active_record/type: 0.5781 MiB
          active_record/connection_adapters/abstract/schema_statements: 0.4375 MiB
            active_record/migration/join_table: 0.3906 MiB
              active_record/migration: 0.3906 MiB
        arel: 0.375 MiB
      action_controller/railtie: 1.3984 MiB (Also required by: rails/all, sprockets/railtie)
        action_controller: 0.9102 MiB (Also required by: responders, action_controller/api)
          action_controller/metal/live: 0.5586 MiB
            action_dispatch/http/response: 0.4883 MiB (Also required by: action_controller/metal)
        action_view/railtie: 0.4453 MiB (Also required by: rails/all)
          action_view: 0.3789 MiB (Also required by: sprockets/rails/helper, action_controller/base, and 4 others)
            active_support/core_ext/string/output_safety: 0.3242 MiB (Also required by: action_view/helpers/tag_helper, action_view/helpers/capture_helper, and 7 others)
  gemoji: 7.2227 MiB
    emoji: 7.2188 MiB
  aws-sdk-lambda: 6.3594 MiB
    aws-sdk-core: 3.2266 MiB
      aws-sdk-sts: 1.3086 MiB
      seahorse: 0.543 MiB
  administrate: 6.2891 MiB
    administrate/engine: 6.2891 MiB
      sass-rails: 3.1641 MiB (Also required by: cloudinary/helper, TOP)
        sass/rails: 3.1641 MiB
          sass/rails/helpers: 2.9063 MiB (Also required by: sass/rails/template)
            sass: 2.8945 MiB (Also required by: sass/rails/importer, sass/rails/template, and 5 others)
              sass/engine: 2.4961 MiB
                sass/script: 1.1602 MiB (Also required by: sass/script/css_parser)
                  sass/script/functions: 0.4102 MiB (Also required by: sass/script/tree/funcall, cloudinary/helper)
                  sass/script/parser: 0.3984 MiB
                sass/scss: 0.3281 MiB
              sass/version: 0.3516 MiB
      action_dispatch/routing/route_set: 2.6953 MiB
        action_dispatch/http/request: 1.1523 MiB (Also required by: action_controller/metal, action_dispatch/routing/redirection)
          action_dispatch/http/parameters: 0.332 MiB
        action_dispatch/journey: 1.0234 MiB
          action_dispatch/journey/router: 0.6016 MiB
  honeycomb-rails: 5.6445 MiB
    honeycomb-rails/railtie: 5.5352 MiB
      libhoney: 3.9258 MiB (Also required by: TOP)
        libhoney/client: 3.9063 MiB (Also required by: libhoney/log_client, libhoney/null_client)
          http: 3.793 MiB (Also required by: libhoney/response, twitter/rest/request)
            http/response: 2.0586 MiB
              http/cookie_jar: 1.8438 MiB
                http/cookie: 1.7422 MiB (Also required by: http-cookie)
                  domain_name: 1.6211 MiB
                    domain_name/etld_data: 1.5938 MiB
            http/client: 1.2969 MiB (Also required by: http/response/body)
              http/options: 1.2383 MiB (Also required by: http)
                http/uri: 1.1914 MiB (Also required by: http/client, http/request)
                  addressable/uri: 1.1445 MiB (Also required by: addressable, addressable/template, and 12 others)
                    addressable/idna: 0.5547 MiB
                      addressable/idna/pure: 0.5352 MiB
      honeycomb-rails/overrides: 1.3281 MiB
        honeycomb-rails/overrides/action_controller_instrumentation: 1.3203 MiB
  twitter: 5.4258 MiB
    twitter/rest/client: 2.3047 MiB
      twitter/rest/api: 2.1992 MiB
        twitter/rest/direct_messages: 0.3789 MiB
          twitter/rest/utils: 0.3438 MiB (Also required by: twitter/rest/favorites, twitter/rest/friends_and_followers, and 13 others)
    twitter/streaming/client: 1.5313 MiB
      twitter/streaming/connection: 1.1172 MiB
        resolv: 1.0703 MiB
    twitter/configuration: 0.5352 MiB (Also required by: twitter/rest/help)
      twitter/base: 0.3906 MiB (Also required by: twitter/entity, twitter/identity, and 11 others)
        twitter/null_object: 0.3359 MiB (Also required by: twitter/trend_results)
  airbrake: 4.9609 MiB
    airbrake-ruby: 3.2578 MiB
      net/https: 1.4609 MiB (Also required by: httparty, seahorse, and 7 others)
    airbrake/rails: 1.1758 MiB
      action_controller/metal: 1.0898 MiB
        action_dispatch/middleware/stack: 0.6953 MiB
          active_support/dependencies: 0.6289 MiB (Also required by: abstract_controller/helpers, delayed/worker, and 2 others)
    airbrake/rack: 0.3438 MiB
  pry: 4.4492 MiB (Also required by: pry-rails)
    pry/cli: 3.2188 MiB
      /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/pry-byebug-3.7.0/lib/pry-byebug/cli.rb: 3.207 MiB
        pry-byebug/pry_ext: 2.9414 MiB
          byebug/processors/pry_processor: 2.9414 MiB
            byebug/core: 2.8945 MiB
              byebug/commands: 2.2891 MiB
                byebug/commands/irb: 1.2031 MiB (Also required by: /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/byebug-11.0.0/lib/byebug/settings/autoirb.rb)
                  irb: 1.1953 MiB
                    irb/ruby-lex: 0.7695 MiB
    pry/commands: 0.7617 MiB
  octokit: 4.4063 MiB
    octokit/client: 3.4102 MiB
      octokit/connection: 0.4883 MiB (Also required by: octokit/enterprise_admin_client, octokit/enterprise_management_console_client)
        sawyer: 0.4063 MiB (Also required by: ext/sawyer/relation)
    octokit/default: 0.4766 MiB
  delayed_job_active_record: 4.3672 MiB
    delayed_job: 1.6016 MiB (Also required by: delayed/railtie, delayed_job_web/application/app)
      delayed/performable_mailer: 1.25 MiB
        mail: 1.2383 MiB
          mail/message: 0.4453 MiB
          mail/field: 0.4453 MiB
  rouge: 4.2734 MiB
  delayed_job_web: 3.7461 MiB
    delayed_job_web/application/app: 3.7422 MiB
      sinatra/base: 3.2813 MiB
  fog: 2.9102 MiB
    fog/core: 0.9297 MiB (Also required by: fog/xml, fog/json, and 45 others)
    fog/cloudstack: 0.4531 MiB
      fog/cloudstack/compute: 0.4258 MiB
  carrierwave: 2.5078 MiB (Also required by: carrierwave/bombshelter)
    carrierwave/uploader: 1.3867 MiB
  algorithmia: 2.3945 MiB
    httparty: 2.3242 MiB (Also required by: TOP)
      mime/types: 1.6914 MiB (Also required by: mime/types/columnar, /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/rest-client-2.0.2/lib/restclient/request)
        mime/types/registry: 1.5664 MiB
      csv: 0.5156 MiB (Also required by: csv_shaper/encoder, csv_shaper/config)
  draper: 2.375 MiB
    draper/view_context: 1.5781 MiB
      request_store: 1.5352 MiB
        request_store/middleware: 1.5039 MiB
    draper/collection_decorator: 0.5781 MiB
  liquid: 2.332 MiB
  buffer: 2.2578 MiB
    faraday: 1.4219 MiB (Also required by: faraday_middleware, feedjira, and 8 others)
      /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/faraday-0.15.4/lib/faraday/options: 0.3633 MiB
    hashie/mash: 0.3789 MiB (Also required by: omniauth/key_store)
  cloudinary: 2.0078 MiB
    cloudinary/cloudinary_controller: 1.4414 MiB
      action_controller/base: 1.4297 MiB
    cloudinary/helper: 0.4102 MiB
  algoliasearch-rails: 1.457 MiB
    algoliasearch: 0.8398 MiB
      httpclient: 0.5273 MiB
  storext: 1.3164 MiB
    virtus: 1.2188 MiB
      axiom-types: 0.543 MiB
        axiom/types: 0.5352 MiB
  rack-mini-profiler: 1.0664 MiB
  envied: 0.9063 MiB
    envied/cli: 0.4336 MiB
      thor/actions: 0.3008 MiB
    envied/coercer: 0.3672 MiB
      coercible: 0.332 MiB (Also required by: envied/coercer/envied_string, virtus)
  carrierwave-bombshelter: 0.8867 MiB
    carrierwave/bombshelter: 0.8594 MiB
      fastimage: 0.4258 MiB
      i18n/backend/simple: 0.3086 MiB
  webpacker: 0.8789 MiB
  inline_svg: 0.8242 MiB
    inline_svg/transform_pipeline: 0.375 MiB
      inline_svg/transform_pipeline/transformations: 0.3438 MiB
  skylight: 0.8242 MiB
    skylight/core: 0.3633 MiB (Also required by: skylight/core/railtie)
  staccato: 0.7031 MiB
  acts-as-taggable-on: 0.6953 MiB
    acts_as_taggable_on/default_parser: 0.6914 MiB
      acts_as_taggable_on/generic_parser: 0.6914 MiB
  jbuilder: 0.6523 MiB
    jbuilder/railtie: 0.4141 MiB
      jbuilder/jbuilder_template: 0.3906 MiB
  devise: 0.6445 MiB
    devise/rails: 0.5117 MiB
      devise/rails/routes: 0.4922 MiB
        action_dispatch/routing/mapper: 0.4141 MiB
  ahoy_email: 0.457 MiB
  fastly: 0.4492 MiB (Also required by: fastly-rails/client)
  timber: 0.4297 MiB
```
