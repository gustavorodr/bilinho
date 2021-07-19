# frozen_string_literal: true

class Matricula < ApplicationRecord
  validates :valor, presence: true, numericality: { greater_than: 0 }
  validates :faturas, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :vencimento, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
  validates :curso, presence: true
  validates :instituicao_id, presence: true
  validates :aluno_id, presence: true
  has_many :faturas
  attr_reader :valor, :faturas, :vencimento, :id
end
