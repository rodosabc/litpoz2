class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    @poems = Poem.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to authors_path
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])

    @author.destroy

    redirect_to authors_path
  end
  private

  def author_params
    @classname = Holiday.class.to_s
    params.require(:author).permit(:text,:date,:classname)
  end

  def all_authors
    @authors = Author.all
  end
end