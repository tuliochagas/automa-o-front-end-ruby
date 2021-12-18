require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
# Chama o arquive de inicialização
require_relative 'page.initialize.rb'
# Inclui a biblioteca RSpec
include RSpec::Matchers
# Passa o modulo Page como global
World(Page)
# Variavel que define o ambiente
Environment = ENV['URL']


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = Environment
    config.default_max_wait_time = 5
    end