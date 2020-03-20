```ruby
# Gemfile
gem 'bundler-leak'
gem 'bundler-audit'
gem 'brakeman'
```


```yml
  - run:
      name: Check for vulnerable gem version with bundler-audit
      command: bundle exec bundle audit check --update

  - run:
      name: Check for leaky gem versions with bundler-leak
      command: bundle exec bundle leak check --update

  - run:
      name: Check for security vulnerabilities with brakeman
      command: bundle exec brakeman
```
