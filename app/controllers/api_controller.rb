class ApiController < ApplicationController
  include HTTParty
  base_uri 'api.thedogapi.com'

  def create
    nome = Faker::UniqueGenerator.clear
    nome = Faker::Name.unique.first_name
    salario = Faker::Number.decimal(l_digits: 4, r_digits: 2)
    idade   = Faker::Number.number(digits: 2)
    $body = {name: nome, salary: salario, age: idade }.to_json

  $headers = {
    'Accept' => 'application/vnd.tasksmanager.v2',
    'Content-Type' => 'application/json'
  }

  self.class.post('/create', body: $body, headers: $headers)
end

def retrieve(id)
  self.class.get("/employee/#{ id }")
end

def delete(id)
  self.class.delete("/delete/#{ id }")
end

def update(id)
  #nome = Faker::UniqueGenerator.clear
  nome = "AutomaSilvio"
  salario = Faker::Number.decimal(l_digits: 4, r_digits: 2)
  idade   = Faker::Number.number(digits: 2)
  body = {name: nome, salary: salario, age: idade }.to_json

  headers = {
     'Accept' => 'application/vnd.tasksmanager.v2',
     'Content-Type' => 'application/json'
   }
  self.class.put("/update/#{ id }", body: body, headers: headers)
end

end

  def breeds
    @breed = self.class.get('/v1/breeds')
  end

end
