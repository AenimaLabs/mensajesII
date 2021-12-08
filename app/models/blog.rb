class Blog < ApplicationRecord
    has_many :publicacions, dependent: :destroy
    has_many :propietarios, dependent: :destroy
    
    has_many :usuarios, :through => :propietarios, dependent: :destroy

end
