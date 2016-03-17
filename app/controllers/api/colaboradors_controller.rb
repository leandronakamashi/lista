module Api


class ColaboradorsController < ApplicationController
   respond_to :json

    
  # GET /pedidos
  # GET /pedidos.json
  def index
    respond_with Colaborador.all

  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
     respond_with Colaborador.find(params[:id])
  end


  # GET /pedidos/1/edit
  def edit
  end
  
  

  # POST /pedidos
  # POST /pedidos.json
  def create
     respond_with Colaborador.create(caixa_params)
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
   respond_with Colaborador.update(params[:id], {checkin: "sim"})
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    respond_with Colaborador.destroy(params[:id])
  end

  def delete
     respond_with Colaborador.destroy(params[:id])
    
      
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caixa_params
      params.require(:caixa).permit(:data, :valor_inicial, :soma_geral)
    end
end
end
