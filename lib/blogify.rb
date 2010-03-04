begin
  require 'posterous'
rescue
  gem 'glennr-posterous'
  require 'posterous'
end

begin
  require 'rufus/scheduler'
rescue
  gem 'rufus-scheduler'
  require 'rufus/scheduler'
end

begin
  require 'httparty'
rescue
  gem 'httparty'
  require 'httparty'
end

