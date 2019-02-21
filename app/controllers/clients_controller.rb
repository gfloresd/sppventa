class ClientsController < ApplicationController

	def index
		#@clients = Client.all.page params[:page]
		@clients = Client.search(params[:search]).page params[:page]
	end

	def new
		@client = Client.new
	end
 	
 	def show
 		@client = Client.find(params[:id])
 	end

	def create
		@client = Client.new(client_params)
		if @client.save
			redirect_to @client
		else
			render 'new'
		end
	end

	def edit
		@client = Client.find(params[:id])
	end


	def update 
		@client = Client.find(params[:id])
		if @client.update(client_params)
			redirect_to @client
		else
			render 'edit'
		end
	end

	def client_params
		params.require(:client).permit(:run, :name, :lastname, :mother_name, :search)
	end	


end
