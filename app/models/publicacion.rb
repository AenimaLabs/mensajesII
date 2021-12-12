class Publicacion < ApplicationRecord
  belongs_to :usuario
  belongs_to :blog
  has_many :mensajes

  validates :titulo, :contenido, presence: true 
  # , uniqueness: { case_sensitive: false}
    
  after_create :creacion_exitosa
  
  after_update :actualizacion_exitosa

  private
 
  
  def creacion_exitosa
      puts "Publicación creada con éxito"
  end
  
  def actualizacion_exitosa
      puts "Publicación actualizada con éxito"
  end
  
end
