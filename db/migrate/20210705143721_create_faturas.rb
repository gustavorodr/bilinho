class CreateFaturas < ActiveRecord::Migration[6.1]
  def self.up
    create_table :faturas do |t|
      t.money :valor
      t.date :vencimento
      t.references :matriculas, null: false, foreign_key: true
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :faturas
 end
end
