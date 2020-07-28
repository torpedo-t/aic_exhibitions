# we add the require_relative's and pry within the environment file so they can all communicate with one another as well as pry
require_relative "./aic_exhibitions/version"
require_relative "./aic_exhibitions/cli"
require_relative "./aic_exhibitions/exhibition"
require_relative "./aic_exhibitions/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module AicExhibitions
  class Error < StandardError; end
  # Your code goes here...
end
