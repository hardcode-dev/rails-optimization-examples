# Get list of used middlewares via rake middleware

```bash
rake middleware
Running via Spring preloader in process 53142
0.13058899994939566 rake
use Webpacker::DevServerProxy
use Rack::MiniProfiler
use Rack::Sendfile
use ActionDispatch::Static
use ActionDispatch::Executor
use ActiveSupport::Cache::Strategy::LocalCache::Middleware
use Rack::Runtime
use Rack::MethodOverride
use ActionDispatch::RequestId
use Rack::Timeout
use RequestStore::Middleware
use ActionDispatch::RemoteIp
use Sprockets::Rails::QuietAssets
use Rails::Rack::Logger
use ActionDispatch::ShowExceptions
use WebConsole::Middleware
use ActionDispatch::DebugExceptions
use BetterErrors::Middleware
use Airbrake::Rack::Middleware
use ActionDispatch::Reloader
use ActionDispatch::Callbacks
use ActiveRecord::Migration::CheckPending
use ActionDispatch::Cookies
use ActionDispatch::Session::CookieStore
use ActionDispatch::Flash
use Rack::Head
use Rack::ConditionalGet
use Rack::ETag
use Warden::Manager
use Timber::Integrations::Rack::HTTPContext
use Timber::Integrations::Rack::SessionContext
use Timber::Integrations::Rack::UserContext
use Timber::Integrations::Rack::HTTPEvents
use Timber::Integrations::Rack::ErrorEvent
use Rack::Deflater
use JQuery::FileUpload::Rails::Middleware
use Bullet::Rack
use OmniAuth::Strategies::GitHub
use OmniAuth::Strategies::Twitter
use ServiceWorker::Middleware
run PracticalDeveloper::Application.routes
```
