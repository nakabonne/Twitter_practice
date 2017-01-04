class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(params.permit(:content))
    #@note.content = params[:content]
    if @note.save
    redirect_to @note, notice: "ツイート完了！！"
    else
      render :new
    end
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
    #showアクションへ
    redirect_to note_path(@note.id)
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    #indexアクションへ
    redirect_to notes_path
  end


end
