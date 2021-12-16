class RegistroMantencion < ApplicationRecord
  belongs_to :tipo_mantencions
  belongs_to :maquinaria
end
