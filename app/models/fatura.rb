class Fatura < ApplicationRecord
  validates :valor, presence: true
  validates :vencimento, presence: true
  validates :matricula_id, presence: true
  # status é Aberta como default passado pelo serviço de criação de faturas
  validates :status, presence: true, inclusion: { in: %w(Aberta Atrasada Paga), message: "%{value} deve estar entre Aberta, Atrasada ou Paga" }
end
