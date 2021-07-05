class Instituicao < ApplicationRecord
    validates :nome, presence: true, uniqueness: true
    validates :cnpj, uniqueness: true, format: { with: /[0-9]/, message: "only allows numbers" }
    validates :tipo, presence: true, inclusion: { in: %w(Universidade Escola Creche), message: "%{value} deve estar entre Universidade, Escola ou Creche" }
end