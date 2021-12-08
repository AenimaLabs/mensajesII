class Usuario < ApplicationRecord
    has_many :propietarios, dependent: :destroy
    has_many :publicacions, dependent: :destroy
    has_many :mensajes, dependent: :destroy
    has_many :blogs, :through=> :propietarios, dependent: :destroy

end
