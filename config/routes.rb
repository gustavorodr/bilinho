# frozen_string_literal: true

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :instituicoes
      resources :alunos
      resources :matriculas
      resources :faturas
    end
  end
end
