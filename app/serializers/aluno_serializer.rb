class AlunoSerializer < BaseSerializer
  attributes :id, :nome, :idade
  has_many :horarios
  
  link(:self) { aluno_path(object) }
  link(:horarios) { aluno_horarios_path(object) }
end
