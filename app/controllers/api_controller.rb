class ApiController < ApplicationController
  include HTTParty
  base_uri 'api.thecatapi.com/'

  def breeds
    @breed = self.class.get('/v1/breeds')
  end
end
