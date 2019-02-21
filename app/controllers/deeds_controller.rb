class DeedsController < ApplicationController
	



	def create
		@problem = Problem.find(params[:problem_id])
		@deed = @problem.deeds.create(deed_params)
		redirect_to problem_path(@problem)

	end


	def destroy
		@problem = Problem.find(params[:problem_id])
		@deed = @problem.deeds.find(params[:id])
		@deed.destroy
		redirect_to problem_path(@problem)
	end

	def deed_params
		params.require(:deed).permit(:deed_date, :employee_id, :description)
	end
		
end
