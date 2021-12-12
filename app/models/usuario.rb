class Usuario < ApplicationRecord
    has_many :propietarios, dependent: :destroy
    has_many :publicacions, dependent: :destroy
    has_many :mensajes, dependent: :destroy
    has_many :blogs, :through=> :propietarios, dependent: :destroy

    validates :nombre, :apellido, presence: true, length: {in: 2..45}
    validates :email, presence: true, uniqueness: { case_sensitive: false}
    
    before_save :downcase_email

    after_create :creacion_exitosa
    
    after_update :actualizacion_exitosa

    private
    def downcase_email 
        self.email.downcase!
    end
    
    def creacion_exitosa
        puts "Usuario creado con éxito"
    end
    
    def after_update
        puts "Usuario actualizado con éxito"
    end
    

end
