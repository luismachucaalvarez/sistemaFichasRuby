class Computertype < ApplicationRecord
    validates :description, presence:true, format: { with: /\A[a-zA-Z]+\z/, message: "Solo se permiten letras" }
end
