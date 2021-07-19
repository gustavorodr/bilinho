# frozen_string_literal: true

class Aluno < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
  validates :cpf, uniqueness: true, format: { with: /[0-9]/, message: '%{value} deve conter somente numeros' }
  validates :sexo, presence: true, inclusion: { in: %w[M F], message: '%{value} deve estar entre M ou F' }
  validates :pagamento, presence: true,
                        inclusion: { in: %w[Boleto Cartao], message: '%{value} deve estar entre Boleto ou Cartao' }
  has_many :matriculas
end
