class Trabajador < ApplicationRecord
  belongs_to :tipo_trabajadors
  belongs_to :actividads
end
