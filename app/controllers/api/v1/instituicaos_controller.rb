# frozen_string_literal: true

module Api
  module V1
    class InstituicaosController < ApplicationController
      # Listar todos as instituicões
      def index
        instituicaos = Instituicao.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Instituicoes carregadas', data: instituicaos }, status: :ok
      end

      # Listar instituicão passando ID
      def show
        instituicao = Instituicao.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Instituicao carregada', data: instituicao }, status: :ok
      end

      # Criar uma nova instituicao
      def create
        instituicao = Instituicao.new(instituicao_params)
        if instituicao.save
          render json: { status: 'SUCCESS', message: 'Instituicao salva', data: instituicao }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Instituicao nao salva', data: instituicao.erros },
                 status: :unprocessable_entity
        end
      end

      # Excluir instituicao
      def destroy
        instituicao = Instituicao.find(params[:id])
        instituicao.destroy
        render json: { status: 'SUCCESS', message: 'Instituicao excluida', data: instituicao }, status: :ok
      end

      # Atualizar uma instituicao
      def update
        instituicao = Instituicao.find(params[:id])
        if instituicao.update_attributes(instituicao_params)
          render json: { status: 'SUCCESS', message: 'Instituicao atualizada', data: instituicao }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Instituicao nao atualizada', data: instituicao.erros },
                 status: :unprocessable_entity
        end
      end
      # Parametros aceitos

      private

      def instituicao_params
        params.permit(:nome, :cnpj, :tipo)
      end
    end
  end
end
