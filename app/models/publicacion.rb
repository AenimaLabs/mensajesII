class Publicacion < ApplicationRecord
  belongs_to :usuario
  belongs_to :blog
  has_many :mensajes
end
