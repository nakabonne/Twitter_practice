class NotesController < ApplicationController
  def new
  end

  def create
    @note = Note.new
    @note.content = params[:content]
    @note.save
    redirect_to action: 'show'
  end

  def show
    @note = Note.all
  end

  def index
    @notes = Note.all
  end
end
