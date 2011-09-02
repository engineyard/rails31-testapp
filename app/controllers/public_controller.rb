require 'pp'
class PublicController < ApplicationController
  def index
    path = File.join(Rails.root, 'config', 'ey.yml')
    if File.readable?(path)
      @config = YAML.load_file(path)
    else
      @config = {'db_host' => 'localhost', 'RACK_ENV' => ENV['RACK_ENV']}
    end
  end
end

