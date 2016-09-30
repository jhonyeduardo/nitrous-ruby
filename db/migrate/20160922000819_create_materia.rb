class CreateMateria < ActiveRecord::Migration[5.0]
  def change
    create_table :materia do |t|
      t.string :disciplina

      t.timestamps
    end
  end
end
