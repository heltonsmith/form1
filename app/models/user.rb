class User < ApplicationRecord
    validates :email, presence: { message: "- campo email vacío" }
    validates :edad, numericality: { message: "- debe ser número" }

    validates_numericality_of :edad, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 70,
    message: "- debe estar entre el rango [1-70]"

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "- debe ser un correo válido"

    scope :find_valid, -> { where("edad > ?", 20) }

    before_save :set_full_name
    def set_full_name
        self.nombrecompleto = "#{ self.nombre } #{ self.apellido }"
    end   
end
