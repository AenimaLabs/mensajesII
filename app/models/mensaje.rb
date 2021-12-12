class Mensaje < ApplicationRecord
  belongs_to :usuario
  belongs_to :publicacion

  validates :autor, :mensaje, presence: true, uniqueness: { case_sensitive: false}
    
  after_create :creacion_exitosa
  
  after_update :actualizacion_exitosa

  private
 
  
  def creacion_exitosa
      puts "Mensaje creado con éxito"
  end
  
  def after_update
      puts "Mensaje actualizado con éxito"
  end
  
end
