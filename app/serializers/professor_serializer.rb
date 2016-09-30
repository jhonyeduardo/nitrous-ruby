class ProfessorSerializer < BaseSerializer
  attributes :id, :nome, :idade
  has_many :horarios

  link(:self) { professor_path(object) }
  link(:horarios) { professor_horarios_path(object) }

end
