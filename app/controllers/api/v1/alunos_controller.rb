# frozen_string_literal: true

module Api
  module V1
    class AlunosController < ApplicationController
      # Listar todos os alunos
      def index
        alunos = Aluno.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Alunos carregados', data: alunos }, status: :ok
      end

      # Listar alunos passando ID
      def show
        aluno = Aluno.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Aluno carregado', data: aluno }, status: :ok
      end

      # Criar um novo aluno
      def create
        aluno = Aluno.new(aluno_params)
        if aluno.save
          render json: { status: 'SUCCESS', message: 'Aluno salvo', data: aluno }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Aluno nao salvo', data: aluno.erros },
                 status: :unprocessable_entity
        end
      end

      # Excluir aluno
      def destroy
        aluno = Aluno.find(params[:id])
        aluno.destroy
        render json: { status: 'SUCCESS', message: 'Aluno excluido', data: aluno }, status: :ok
      end

      # Atualizar um aluno
      def update
        aluno = Aluno.find(params[:id])
        if aluno.update_attributes(aluno_params)
          render json: { status: 'SUCCESS', message: 'Aluno atualizado', data: aluno }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Aluno nao atualizado', data: aluno.erros },
                 status: :unprocessable_entity
        end
      end
      # Parametros aceitos

      private

      def aluno_params
        params.permit(:nome, :cpf, :sexo, :pagamento)
      end
    end
  end
end
