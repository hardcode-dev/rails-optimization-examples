# Profile memory consumption after processing request via derailed perf:mem

Seems to be a problem with podcast_feed

```bash
SECRET_KEY_BASE=fffuuu RAILS_ENV=local_production bundle exec derailed exec perf:mem

Booting: local_production
Endpoint: "/"
## Impact of `require <file>` on RAM

Showing all `require <file>` calls that consume 0.3 MiB or more of RSS
Configure with `CUT_OFF=0` for all entries or `CUT_OFF=5` for few entries
Note: Files only count against RAM on their first load.
      If multiple libraries require the same file, then
       the 'cost' only shows up under the first library

Processing by StoriesController#index as HTML
TOP: 190.5313 MiB
  application: 110.6133 MiB
    twilio-ruby: 20.082 MiB
    algorithmia: 6.3086 MiB
      httparty: 6.2461 MiB (Also required by: application, /Users/spajic/dev.to/app/services/rss_reader)
        mime/types: 4.8945 MiB (Also required by: mime/types/columnar, /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/rest-client-2.0.2/lib/restclient/request, and 2 others)
          mime/types/registry: 4.3828 MiB
        csv: 0.8867 MiB (Also required by: csv_shaper/encoder, csv_shaper/config)
    delayed_job_active_record: 5.6016 MiB
      delayed_job: 3.5195 MiB (Also required by: delayed/railtie, delayed_job_web/application/app)
        delayed/performable_mailer: 3.2813 MiB
          mail: 3.2617 MiB (Also required by: action_mailer/base)
            mail/message: 0.7813 MiB
            mail/field: 0.7266 MiB
            mail/multibyte: 0.4766 MiB
              mail/multibyte/chars: 0.418 MiB
            net/smtp: 0.3516 MiB
    administrate: 5.1367 MiB
      administrate/engine: 5.1367 MiB
        sass-rails: 4.4375 MiB (Also required by: cloudinary/helper, application)
          sass/rails: 4.4375 MiB
            sass/rails/helpers: 4.2266 MiB (Also required by: sass/rails/template)
              sass: 4.2188 MiB (Also required by: sass/rails/importer, sass/rails/template, and 6 others)
                sass/engine: 3.9922 MiB
                  sass/tree/node: 0.793 MiB (Also required by: sass/tree/comment_node, sass/tree/mixin_node, and 6 others)
                  sass/script: 0.7383 MiB (Also required by: sass/script/css_parser)
                    sass/script/value: 0.3086 MiB
                  sass/scss: 0.3906 MiB
                    sass/scss/parser: 0.3594 MiB
                  sass/selector: 0.3203 MiB
        action_dispatch/routing/route_set: 0.4688 MiB
    gemoji: 4.8945 MiB
      emoji: 4.8867 MiB
    delayed_job_web: 4.6445 MiB
      delayed_job_web/application/app: 4.6406 MiB
        sinatra/base: 4.5625 MiB
          mustermann/sinatra: 3.3828 MiB
            mustermann/ast/pattern: 3.1758 MiB
              mustermann/ast/compiler: 2.4805 MiB (Also required by: mustermann/ast/expander)
    octokit: 4.6328 MiB
      octokit/client: 3.5469 MiB
        octokit/connection: 0.543 MiB (Also required by: octokit/enterprise_admin_client, octokit/enterprise_management_console_client)
          sawyer: 0.457 MiB (Also required by: ext/sawyer/relation)
      octokit/default: 0.5625 MiB
    algoliasearch-rails: 4.2383 MiB
      algoliasearch: 4.0195 MiB
        httpclient: 3.5313 MiB (Also required by: google/apis/core/base_service)
          httpclient/cookie: 2.4414 MiB
            http-cookie: 2.4063 MiB (Also required by: /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/rest-client-2.0.2/lib/restclient/abstract_response)
              http/cookie: 2.4063 MiB (Also required by: http/cookie_jar)
                domain_name: 2.3906 MiB
                  domain_name/etld_data: 2.3203 MiB
          httpclient/session: 0.7031 MiB (Also required by: httpclient/auth)
            httpclient/http: 0.3477 MiB (Also required by: httpclient)
        algolia/index: 0.4453 MiB
          algolia/client: 0.3086 MiB
    cloudinary: 4.0078 MiB
      cloudinary/cloudinary_controller: 3.4531 MiB
        action_controller/base: 3.4375 MiB
          action_controller/metal/request_forgery_protection: 0.6406 MiB
      cloudinary/helper: 0.3711 MiB
    pry: 3.9688 MiB (Also required by: pry-rails)
      pry/cli: 2.1719 MiB
        /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/pry-byebug-3.7.0/lib/pry-byebug/cli.rb: 2.168 MiB
          pry-byebug/pry_ext: 1.8867 MiB
            byebug/processors/pry_processor: 1.8867 MiB
              byebug/core: 1.8633 MiB
                byebug/commands: 1.4727 MiB
                  byebug/commands/irb: 0.7734 MiB (Also required by: /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/byebug-11.0.0/lib/byebug/settings/autoirb.rb)
                    irb: 0.7734 MiB
                      irb/ruby-lex: 0.6367 MiB
      pry/slop: 0.3867 MiB
    twitter: 3.9531 MiB
      twitter/configuration: 1.1758 MiB (Also required by: twitter/rest/help)
        twitter/base: 0.8555 MiB (Also required by: twitter/entity, twitter/identity, and 11 others)
          twitter/null_object: 0.75 MiB (Also required by: twitter/trend_results)
            naught: 0.6484 MiB
              naught/null_class_builder/commands: 0.4141 MiB
      twitter/rest/client: 1.1445 MiB
        twitter/rest/api: 0.9922 MiB
          twitter/rest/direct_messages: 0.4219 MiB
            twitter/rest/utils: 0.3789 MiB (Also required by: twitter/rest/favorites, twitter/rest/friends_and_followers, and 13 others)
      twitter/direct_message: 0.6445 MiB (Also required by: twitter/rest/direct_messages, twitter/streaming/message_parser)
        twitter/entities: 0.6016 MiB (Also required by: twitter/tweet)
          twitter/media_factory: 0.3477 MiB (Also required by: twitter)
      twitter/cursor: 0.4219 MiB (Also required by: twitter/rest/utils, twitter/rest/friends_and_followers, and 2 others)
        twitter/rest/request: 0.3477 MiB (Also required by: twitter/rest/utils, twitter/rest/friends_and_followers, and 8 others)
    fog: 3.5117 MiB (Also required by: TOP)
      fog/core: 1.9063 MiB (Also required by: fog/xml, fog/json, and 45 others)
        excon: 0.5195 MiB
        /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/fog-core-1.45.0/lib/fog/core/collection: 0.3008 MiB
      fog/cloudstack: 0.5078 MiB
        fog/cloudstack/compute: 0.5078 MiB
    aws-sdk-lambda: 3.1328 MiB
      aws-sdk-core: 2.3711 MiB
        seahorse: 0.75 MiB
        aws-sdk-sts: 0.6914 MiB
    libhoney: 3.0469 MiB
      libhoney/client: 2.7969 MiB (Also required by: libhoney/log_client, libhoney/null_client)
        http: 2.6875 MiB (Also required by: libhoney/response, twitter/rest/request)
          http/client: 1.0391 MiB (Also required by: http/response/body)
            http/options: 0.5977 MiB (Also required by: http)
              http/uri: 0.3945 MiB (Also required by: http/client, http/request)
          http/parser: 0.5781 MiB (Also required by: twitter/streaming/connection)
            http_parser: 0.5781 MiB
              ruby_http_parser: 0.5234 MiB
          http/response: 0.5469 MiB
    addressable: 2.6445 MiB
      addressable/uri: 2.543 MiB (Also required by: addressable/template, ahoy_email, and 21 others)
        addressable/idna: 1.5742 MiB
          addressable/idna/pure: 1.5508 MiB
    rouge: 2.3984 MiB
    carrierwave: 2.0859 MiB (Also required by: carrierwave/bombshelter)
      carrierwave/uploader: 1.3359 MiB
    liquid: 2.0781 MiB
    omniauth-github: 1.8516 MiB
      omniauth/strategies/github: 1.832 MiB
        omniauth-oauth2: 1.7813 MiB
          omniauth/strategies/oauth2: 1.7773 MiB
            oauth2: 1.1875 MiB
              oauth2/strategy/assertion: 0.6445 MiB
                jwt: 0.6133 MiB (Also required by: twilio-ruby, webpush/request, and 2 others)
                  jwt/signature: 0.3242 MiB
            omniauth/strategy: 0.3789 MiB
    envied: 1.7852 MiB
      envied/coercer: 1.5195 MiB
        coercible: 1.5195 MiB (Also required by: envied/coercer/envied_string, virtus)
          coercible/coercer/date: 1.5039 MiB
    active_record_union: 1.7617 MiB
      active_record_union/active_record/relation/union: 1.7344 MiB
        active_record/relation: 1.6602 MiB (Also required by: TOP)
          active_record/relation/query_methods: 0.6484 MiB (Also required by: TOP)
    airbrake: 1.4297 MiB
      airbrake-ruby: 1.2266 MiB
        net/https: 0.6875 MiB (Also required by: httparty, seahorse, and 7 others)
    skylight: 1.4023 MiB
      skylight/core: 0.6445 MiB (Also required by: skylight/core/railtie)
      skylight/native: 0.3438 MiB
    pg: 1.3789 MiB (Also required by: active_record/connection_adapters/postgresql_adapter)
      pg_ext: 0.5586 MiB
    omniauth-twitter: 1.3203 MiB
      omniauth/strategies/twitter: 1.2969 MiB
        omniauth-oauth: 1.2539 MiB
          omniauth/strategies/oauth: 1.2266 MiB
            oauth: 1.1836 MiB
              oauth/client/helper: 0.9961 MiB
                oauth/consumer: 0.5742 MiB
                  oauth/client/net_http: 0.3242 MiB
    dalli: 1.1172 MiB
      dalli/server: 0.5391 MiB
    storext: 1.0117 MiB
      virtus: 0.9805 MiB
        axiom-types: 0.5469 MiB
          axiom/types: 0.543 MiB
    pusher-push-notifications: 0.9375 MiB
      rest-client: 0.7813 MiB
        /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/rest-client-2.0.2/lib/restclient: 0.7734 MiB
    csv_shaper: 0.9336 MiB
      csv_shaper_handler: 0.5586 MiB
        action_view/template: 0.5 MiB (Also required by: action_view/base, action_view/template/resolver)
    staccato: 0.9297 MiB
      staccato/measurement: 0.3906 MiB
    carrierwave-bombshelter: 0.8281 MiB
      carrierwave/bombshelter: 0.8086 MiB
        fastimage: 0.3672 MiB
        i18n/backend/simple: 0.3555 MiB
    pusher: 0.5977 MiB (Also required by: TOP)
    counter_culture: 0.5508 MiB
    buffer: 0.4688 MiB
      faraday: 0.3047 MiB (Also required by: faraday_middleware, feedjira, and 10 others)
    devise: 0.4648 MiB
      devise/rails: 0.3047 MiB
        devise/rails/routes: 0.3008 MiB
          action_dispatch/routing/mapper: 0.3008 MiB
    reverse_markdown: 0.4258 MiB
    sitemap_generator: 0.4063 MiB
    autoprefixer-rails: 0.3984 MiB
    timber: 0.3594 MiB
  /Users/spajic/dev.to/app/labor/podcast_feed: 28.0977 MiB
    rss: 28.0625 MiB
      rss/dublincore: 14.3398 MiB
        rss/dublincore/1.0: 5.4922 MiB
        rss/dublincore/2.0: 2.5586 MiB
      rss/atom: 3.9063 MiB
      rss/image: 3.8164 MiB
      rss/2.0: 2.6875 MiB (Also required by: rss/content/2.0, rss/dublincore/2.0, and 2 others)
        rss/0.9: 2.6875 MiB
      rss/1.0: 2.3516 MiB (Also required by: rss/content/1.0, rss/dublincore/1.0, and 5 others)
        rss/rexmlparser: 1.5703 MiB
          rexml/document: 1.5508 MiB
      rss/maker: 0.5 MiB
      rss/itunes: 0.3867 MiB (Also required by: /Users/spajic/dev.to/app/labor/podcast_feed)
  /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/skylight-core-3.1.4/lib/skylight/core/probes/action_controller.rb: 5.0078 MiB
  /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/devise-4.6.1/app/controllers/devise/passwords_controller: 2.8867 MiB
  /Users/spajic/dev.to/app/black_box/google_analytics: 2.8047 MiB
    google/apis/analyticsreporting_v4: 2.7773 MiB
      google/apis/analyticsreporting_v4/service.rb: 1.8594 MiB
        google/apis/core/base_service: 1.1172 MiB (Also required by: google/apis/analyticsreporting_v4/classes.rb, google/apis/analyticsreporting_v4/representations.rb)
          googleauth: 0.8047 MiB (Also required by: /Users/spajic/dev.to/app/black_box/google_analytics)
            googleauth/application_default: 0.5859 MiB
              googleauth/compute_engine: 0.3477 MiB
        google/apis/core/json_representation: 0.6914 MiB (Also required by: google/apis/analyticsreporting_v4/classes.rb, google/apis/analyticsreporting_v4/representations.rb)
          representable/json: 0.5781 MiB
            representable/hash: 0.5586 MiB
              representable: 0.5234 MiB (Also required by: representable/decorator)
      google/apis/analyticsreporting_v4/representations.rb: 0.5156 MiB
      google/apis/analyticsreporting_v4/classes.rb: 0.3906 MiB
  cloudinary/utils: 0.5664 MiB
  /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/sail-1.5.1/app/models/sail/setting: 0.5352 MiB
    fugit: 0.4961 MiB
  /Users/spajic/dev.to/app/services/exporter/service: 0.4531 MiB
    zip: 0.4531 MiB
  /Users/spajic/dev.to/app/decorators/article_decorator: 0.4219 MiB
    /Users/spajic/dev.to/app/models/article: 0.4023 MiB
  /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/devise-4.6.1/app/mailers/devise/mailer: 0.3477 MiB
    action_mailer/base: 0.3242 MiB
  /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/skylight-core-3.1.4/lib/skylight/core/probes/active_job_enqueue.rb: 0.3281 MiB
    active_job/base: 0.3242 MiB (Also required by: /Users/spajic/.rbenv/versions/2.6.1-railsexpress/lib/ruby/gems/2.6.0/gems/skylight-core-3.1.4/lib/skylight/core/probes/active_job_enqueue.rb)
```
