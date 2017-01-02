class NotesController < ApplicationController
  def new
  end

  def create
    @note = Note.new
    @note.content = params[:content]
    @note.save
    redirect_to note_path(@note.id)
  end

  def show
    @note = Note.find(params[:id])
  end

  def index
    @notes = Note.all
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.content = params[:content]
    @note.save

    redirect_to note_path(@note.id)
  end
end
