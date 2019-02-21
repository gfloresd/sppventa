class Employee < ApplicationRecord
	has_many :problems
	has_many :deeds

	validates :name, :lastname, :mother_name, :charge, presence: true, length: { minimum: 3 }
	validates :run, length: { in: 9..10 },format: { with: /\A[0-9]{7,8}-[0-9]{1,1}+\z/,
    message: "formato no valido" }	
end
