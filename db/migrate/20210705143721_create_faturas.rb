class CreateFaturas < ActiveRecord::Migration[6.1]
  def change
    create_table :faturas do |t|

      t.timestamps
    end
  end
end
