# bullet

Очень ценный инструмент! Главное настроить работу с ним так, чтобы не начать его игнорить.

```ruby
# config/environments/development.rb
config.after_initialize do
  Bullet.enable = true
  Bullet.console = true # stacktraces here
  Bullet.add_footer = true
  Bullet.bullet_logger = true # log/bullet.log, stacktraces here
  Bullet.rails_logger = true

  # Bullet.alert = true
  # Bullet.growl = true
  # Bullet.xmpp = { :account  => 'bullets_account@jabber.org',
  #                 :password => 'bullets_password_for_jabber',
  #                 :receiver => 'your_account@jabber.org',
  #                 :show_online_status => true }
  # Bullet.honeybadger = true
  # Bullet.bugsnag = true
  # Bullet.airbrake = true
  # Bullet.rollbar = true
  # Bullet.stacktrace_includes = [ 'your_gem', 'your_middleware' ]
  # Bullet.stacktrace_excludes = [ 'their_gem', 'their_middleware' ]
  # Bullet.slack = { webhook_url: 'http://some.slack.url', channel: '#default', username: 'notifier' }
end
```
