class CreateMatriculas < ActiveRecord::Migration[6.1]
  def change
    create_table :matriculas do |t|

      t.timestamps
    end
  end
end
