# frozen_string_literal: true

class CreateMatriculas < ActiveRecord::Migration[6.1]
  def self.up
    create_table :matriculas do |t|
      t.decimal :valor
      t.integer :faturas
      t.integer :vencimento
      t.string :curso
      t.references :instituicaos, null: false, foreign_key: true
      t.references :alunos, null: false, foreign_key: true
      t.timestamps
    end
  end

  def self.down
    drop_table :alunos
  end
end
