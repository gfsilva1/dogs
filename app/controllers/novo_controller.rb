class NovoController < ApplicationController
  before_action :set_dados_captados

  def index
    if params[:query].present?
      @racas = @dados.captado.find { |x| x["name"] == params[:query] }
    else
      @foto = @dados.foto[0]["url"]
      @racas = @dados.captado
      @paginado = Kaminari.paginate_array(@racas).page(params[:page]).per(10)
    end
  end

  def show
    @raca = @dados.detalhado(params[:id])
  end

  def set_dados_captados
    @dados = ApiController.new
  end

end
