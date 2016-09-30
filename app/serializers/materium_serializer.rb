class MateriumSerializer < BaseSerializer
  attributes :id, :disciplina
  has_many :horarios


  link(:self) { materium_path(object) }
  link(:horarios) { materium_horarios_path(object) }
end
