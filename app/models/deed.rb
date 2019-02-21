class Deed < ApplicationRecord
	belongs_to :problem
	belongs_to :employee

	validates :description, presence: true, length: { minimum: 3 }
	validate :check_date


	def check_date
		fecha = deed_date
		if deed_date < problem.created_at
			puts 'paso paso'
		else
			puts 'no paso'
		end
		if  fecha < Date.today
			errors.add(:deed_date, "el hito no puede ser anterior a la garantia")
		end
	end
end
