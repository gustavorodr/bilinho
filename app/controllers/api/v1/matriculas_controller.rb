module Api
	module V1
		class MatriculasController < ApplicationController   
      # Listar todos as matriculas
      def index
        matriculas = Matriculas.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Matriculas carregadas', data:matriculas},status: :ok
			end
			# Listar matriculas passando ID
			def show
				matricula = Matriculas.find(params[:id])
				render json: {status: 'SUCCESS', message:'Matricula carregada', data:matricula},status: :ok
			end
			# Criar uma nova matriculas
			def create
				matricula = Matricula.new(matricula_params)
				if matricula.save
					render json: {status: 'SUCCESS', message:'Matricula salva', data:matricula},status: :ok
          FaturaCreator.new(params[:valorTotal, :quantMatriculas, :dia, :matricula_id]).create
        else
					render json: {status: 'ERROR', message:'Matricula nao salva', data:matricula.erros},status: :unprocessable_entity
				end
			end
			# Excluir matricula
			def destroy
				matricula = Matricula.find(params[:id])
				matricula.destroy
				render json: {status: 'SUCCESS', message:'Matricula excluida', data:matricula},status: :ok
        FaturaCreator.new(params[:valorTotal, :quantMatriculas, :dia, :matricula_id]).destroy
			end
			# Atualizar uma matricula
			def update
				matricula = Matricula.find(params[:id])
				if matricula.update_attributes(matricula_params)
					render json: {status: 'SUCCESS', message:'Matricula atualizada', data:matricula},status: :ok
          FaturaCreator.new(params[:valorTotal, :quantMatriculas, :dia, :matricula_id]).update
        else
					render json: {status: 'ERROR', message:'Matricula nao atualizada', data:matricula.erros},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def matricula_params
				params.permit(:valor, :faturas, :vencimento, :curso, :instituicao_id, :aluno_id)
			end
    end
	end
end