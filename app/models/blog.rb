class Blog < ApplicationRecord
    has_many :publicacions, dependent: :destroy
    has_many :propietarios, dependent: :destroy
    
    has_many :usuarios, :through => :propietarios, dependent: :destroy

    validates :nombre, :descripcion, presence: true, uniqueness: { case_sensitive: false}

    after_create :creacion_exitosa
  
  after_update :actualizacion_exitosa

    

  private
 
  
  def creacion_exitosa
      puts "Blog creado con éxito"
  end
  
  def after_update
      puts "Blog actualizado con éxito"
  end
  
    
    

end
