require "alert_grid/version"

require 'net/http'
require 'uri'

module AlertGrid
  class Signal
    API_PATH = 'http://hq.alert-grid.com/save-signal/'
    cattr_accessor :api_id

    attr_accessor :receiver

    def initialize(receiver)
      self.receiver = receiver
      raise Exception.new("Specify API ID using AlertGrid::Signal.api_id = '<api_id>'" ) if @@api_id.nil?
    end

    def trigger(options = {})
      Net::HTTP.post_form(URI.parse(API_PATH),
       {
         'api_id'         => URI.escape(@@api_id),
         'receiver_name'  => URI.escape(self.receiver)
       }.merge(escape(options))
     )
    end

    def escape(options)
      options.each do |key, value|
        options[key] = URI.escape(value)
      end
      return options
    end

  end
end
