class Calificacion < ApplicationRecord
  belongs_to :trabajadors
  belongs_to :tipo_trabajadors
end
