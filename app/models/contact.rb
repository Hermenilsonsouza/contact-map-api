class Contact < ApplicationRecord
    has_many :addresses, dependent: :destroy
    accepts_nested_attributes_for :addresses
    
    validates :cpf, presence: true, uniqueness: { case_sensitive: false }

    validate :valid_cpf

    

    def valid_cpf
        unless CPF.valid?(cpf)
          errors.add(:cpf, 'cpf é inválido')
        end
    end
end
