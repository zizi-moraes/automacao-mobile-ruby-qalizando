require 'appium_lib'
require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'faker'
require 'yaml'
require_relative 'utils.rb'
require_relative 'initializer.rb'
include RSpec::Matchers

World(Actions)

if ENV['Environment'] == 'Homolog'
  caps = YAML.load(File.read(File.join(File.dirname(__FILE__), 'capabilities.yml')))
else
  caps = YAML.load(File.read(File.join(File.dirname(__FILE__), 'capabilities_prod.yml')))
end
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object