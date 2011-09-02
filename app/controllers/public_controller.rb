require 'pp'
class PublicController < ApplicationController
  def index
    path = Rails.root.join('config', 'ey.yml').to_s
    if File.readable?(path)
      File.open(path) do |f|
        @config = YAML.load(f.read)
      end
    else
      @config = {'db_host' => 'localhost', 'RACK_ENV' => ENV['RACK_ENV']}
    end
  end
end

