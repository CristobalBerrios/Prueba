class NotesController < ApplicationController

	def index
		@notes = Note.all
	end	

	def new
		@note = Note.new
	end	

	def create
		fecha = DateTime.now.strftime("%Y-%m-%d")
		@note = Note.new({texto: params[:note][:texto],fecha: fecha})

		if @note.save
			redirect_to action: 'index'
		else
			redirect_to action: 'new'
		end	

	end

	def edit
		@note = Note.find(params[:id])
	end	

	def update
		fecha = DateTime.now.strftime("%Y-%m-%d")
		@note = Note.find(params[:id])

		if @note.update({texto: params[:note][:texto],fecha: fecha})
			redirect_to action: 'index'
		else
			render :edit
		end	
	end	

	def destroy
		@note = Note.find(params[:id])
		@note.destroy
		redirect_to action: 'index'
	end	

end