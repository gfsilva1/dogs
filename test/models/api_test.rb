require "test_helper"

class ApiTest < ActiveSupport::TestCase
  test "Se o retorno da função está correta" do
    assert Api.new.teste == "um texto qualquer"
  end

  test "Validar cpf inválido" do
    assert Api.new.validar_cpf("333.333.333.33") == false
  end

  test "Validar cpf válido" do
    assert Api.new.validar_cpf("264.481.570-34") == true
  end
end
