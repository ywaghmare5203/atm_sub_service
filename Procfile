# From  https://devcenter.heroku.com/articles/ruby-default-web-server
web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -c 2 -e production
release: bundle exec rails db:migrate
