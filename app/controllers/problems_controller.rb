class ProblemsController < ApplicationController

	def index
		  @problems = Problem.search(params[:search]).page params[:page]
	end

	def show
		@problem = Problem.find(params[:id])
    #@deed = @problem.deeds.build
	end

	def edit
		@problem =  Problem.find(params[:id])
	end

	def new
		@problem = Problem.new
    end

    def create
    	@problem = Problem.new(problem_params) 
    	if @problem.save
    		redirect_to @problem
    	else
    		render 'new'
    	end
   	end

   	def update
   		@problem = Problem.find(params[:id])
   		if @problem.update(problem_params)
   			redirect_to @problem
   		else
   		 render 'edit'
   		end
   	end

    def finish
      @problem = Problem.find(params[:id])
      @problem.finished = true
      @problem.finished_at = Time.new
      @problem.save
      @deed = @problem.deeds.build(:description => "cerrada", :employee_id => @problem.employee_id)
      @deed.save
      redirect_to @problem
    end


    def problem_params
    	params.require(:problem).permit(:note, :finished_at, :finished, :document_type , :document_number, :buy_at ,:product_code , :client_id , :employee_id, :search)
	end
end



