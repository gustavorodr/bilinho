# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_705_143_721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'alunos', force: :cascade do |t|
    t.string 'nome'
    t.string 'cpf'
    t.date 'nascimento'
    t.integer 'celular'
    t.string 'sexo'
    t.string 'pagamento'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'faturas', force: :cascade do |t|
    t.money 'valor', scale: 2
    t.date 'vencimento'
    t.bigint 'matriculas_id', null: false
    t.string 'status'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['matriculas_id'], name: 'index_faturas_on_matriculas_id'
  end

  create_table 'instituicaos', force: :cascade do |t|
    t.string 'nome', limit: 50
    t.string 'cnpj', limit: 14
    t.string 'tipo', limit: 12
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'matriculas', force: :cascade do |t|
    t.decimal 'valor'
    t.integer 'faturas'
    t.integer 'vencimento'
    t.string 'curso'
    t.bigint 'instituicaos_id', null: false
    t.bigint 'alunos_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['alunos_id'], name: 'index_matriculas_on_alunos_id'
    t.index ['instituicaos_id'], name: 'index_matriculas_on_instituicaos_id'
  end

  add_foreign_key 'faturas', 'matriculas', column: 'matriculas_id'
  add_foreign_key 'matriculas', 'alunos', column: 'alunos_id'
  add_foreign_key 'matriculas', 'instituicaos', column: 'instituicaos_id'
end
