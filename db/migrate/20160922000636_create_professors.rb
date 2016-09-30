class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
