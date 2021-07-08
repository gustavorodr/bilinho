module Api
	module V1
		class FaturasController < ApplicationController   
			# Listar faturas passando ID da matricula
			def show
				#codigo
			end
			# Atualizar uma fatura
			def update
				fatura = Fatura.find(params[:id])
				if fatura.update_attributes(fatura_params)
					render json: {status: 'SUCCESS', message:'Fatura atualizada', data:fatura},status: :ok
				else
					render json: {status: 'ERROR', message:'Fatura nao atualizada', data:fatura.erros},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def fatura_params
				params.permit(:valor, :vencimento, :matricula_id, :status)
			end
    end
	end
end