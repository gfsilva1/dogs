class NovoController < ApplicationController
  before_action :set_dados_captados

  def index
    @racas = @dados.captado
  end

  def show
    @raca = @dados.detalhado(params[:id])
  end

  def search
    @app = @dados.captado
    @results = @app.query(params[:q])
    @raca = @results["response"]["filter"].map do |raca|
      raca
    end
  end

  def set_dados_captados
    @dados = ApiController.new
  end

end
