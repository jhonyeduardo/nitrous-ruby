class Horario < ApplicationRecord
  belongs_to :professor
  belongs_to :materium
  belongs_to :aluno
end
