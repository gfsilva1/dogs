class ApiController < ApplicationController
  include HTTParty
  base_uri 'api.thedogapi.com'

  def initialize
    @dado_captado = {}
  end

  def captado
    self.class.get('/v1/breeds', @dado_captado)
  end

  def detalhado(id)
    self.class.get("/v1/breeds/#{id}", @dado_captado)
  end

  def foto
    self.class.get("/v1/images/search", @dado_captado)
  end
end
