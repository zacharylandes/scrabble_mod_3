class WelcomeController < ApplicationController
  def index

      conn =  Faraday.new(url:"https://od-api.oxforddictionaries.com") do |faraday|
        faraday.headers['app_id'] = ENV['id']
        faraday.headers['app_key'] = ENV['secret']
        faraday.adapter Faraday.default_adapter
      end
      
      response = conn.get('api/v1/entries/en/boat')
      response = JSON.parse(response.body)
      binding.pry

  end

end
