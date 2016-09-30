class CreateHorarios < ActiveRecord::Migration[5.0]
  def change
    create_table :horarios do |t|
      t.integer :id_aluno
      t.integer :id_professor
      t.integer :id_materia
      t.date :horario

      t.timestamps
    end
  end
end
