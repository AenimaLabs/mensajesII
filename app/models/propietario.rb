class Propietario < ApplicationRecord
  belongs_to :usuario
  belongs_to :blog

  after_create :creacion_exitosa
  
  after_update :actualizacion_exitosa

  private
 
  
  def creacion_exitosa
      puts "Propietario creado con éxito"
  end
  
  def after_update
      puts "Propietario actualizado con éxito"
  end
  
end
