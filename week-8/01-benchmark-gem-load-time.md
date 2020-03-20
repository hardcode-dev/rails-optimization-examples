# Profile boot-time of gems

```ruby
# boot.rb
# Uncomment to benchmark gem loading time
require "benchmark"
def require(file_name)
  result = nil

  time = Benchmark.realtime do
    result = super
  end

  if time > 0.1
    puts "#{time} #{file_name}"
  end

  result
end
```

```bash
rake environment
0.10833200020715594 active_support/inflector/inflections
0.11547699989750981 active_support/inflections
0.11843100003898144 active_support/inflector/methods
0.12257699994370341 active_support/dependencies/autoload
0.22963899979367852 concurrent
0.2394369998946786 active_support/logger_silence
0.24434100044891238 active_support/logger
0.37755300011485815 active_support
0.11874800035730004 rails/application
0.10277399979531765 active_support/values/time_zone
0.10578999994322658 active_support/core_ext/time/conversions
0.21335100010037422 active_support/core_ext/time/calculations
0.21650200011208653 active_support/file_update_checker
0.10924800019711256 rails/configuration
0.11393099976703525 rails/railtie/configuration
0.3358490001410246 active_support/i18n_railtie
0.33830599999055266 active_support/railtie
0.8795320000499487 rails
0.16876700008288026 arel
0.16462199995294213 active_record/connection_adapters/abstract_adapter
0.37453800020739436 active_record
0.1446289997547865 action_controller/railtie
0.5244700000621378 active_record/railtie
0.14585100021213293 sprockets
0.1931519997306168 nokogiri
0.25306200003251433 loofah
0.26517200004309416 rails-html-sanitizer
0.26734500005841255 action_view/helpers/sanitize_helper
0.2701020003296435 action_view/helpers/text_helper
0.2788340002298355 action_view/helpers/form_tag_helper
0.2972660004161298 action_view/helpers/form_helper
0.3578830002807081 action_view/helpers
0.36006500013172626 sprockets/rails/context
0.5293450001627207 sprockets/railtie
2.0342839998193085 rails/all
0.2608860000036657 sass/engine
0.31581699987873435 sass
0.3213390000164509 sass/rails/helpers
0.3521650000475347 sass/rails
0.3555399999022484 sass-rails
0.1042919997125864 action_dispatch/routing/route_set
0.550057000014931 administrate/engine
0.1353719998151064 airbrake-ruby
0.14123900001868606 httpclient
0.17243200028315187 algoliasearch
0.16479199985042214 httparty
0.2572079999372363 aws-sdk-core
0.15200599981471896 action_controller/base
0.15352900000289083 cloudinary/cloudinary_controller
0.184837999753654 mail
0.18621800001710653 delayed/performable_mailer
0.21789600001648068 delayed_job
0.2341749998740852 active_record/base
0.2471340000629425 delayed/backend/active_record
0.11939699994400144 sinatra/base
0.1397989997640252 delayed_job_web/application/app
0.14199599996209145 http
0.14645700016990304 libhoney/client
0.1322419997304678 byebug/commands
0.19176399987190962 byebug/core
0.19324100017547607 byebug/processors/pry_processor
0.19379799999296665 pry-byebug/pry_ext
0.21407000022009015 /Users/spajic/.rbenv/versions/2.6.1/lib/ruby/gems/2.6.0/gems/pry-byebug-3.7.0/lib/pry-byebug/cli.rb
0.21583399968221784 pry/cli
0.11307099973782897 regexp_parser
0.11567900003865361 capybara/selector/regexp_disassembler
0.13909600023180246 capybara/selector/selector
0.14476600009948015 capybara/selector
0.19160000002011657 parser
1.0767090003937483 rubocop
0.1008640001527965 active_record/connection_adapters/postgresql_adapter
1.8410450001247227 /Users/spajic/dev.to/config/environment
```
