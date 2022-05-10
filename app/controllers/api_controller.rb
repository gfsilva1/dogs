class ApiController < ApplicationController
  include HTTParty
  base_uri 'api.thedogapi.com'

  #ao criar um cadastro enviar requisicao e então visualizar info
  def create
    self.class.post('/create', body: $body, headers: $headers)
  end

  #ao criar consultar um cadastro enviar requisicao e então visualizar info
  def retrieve(id)
    self.class.get("/employee/#{ id }")
  end

  #ao deletar usuario visualizar mensagem de sucesso
  def delete(id)
    self.class.delete("/delete/#{ id }")
  end

  def update(id)
    #enviar requisicao e então visualizar info
    #nome = Faker::UniqueGenerator.clear
    headers = {
      'Accept' => 'application/vnd.tasksmanager.v2',
      'Content-Type' => 'application/json'
    }
    self.class.put("/update/#{ id }", body: body, headers: headers)
  end

  def breeds
    @breed = self.class.get('/v1/breeds')
  end
end
