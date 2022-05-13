class NovoController < ApplicationController
  before_action :set_dados_captados

  def index
    @racas = @dados.captado
  end

  def set_dados_captados
    @dados = ApiController.new
  end

end
