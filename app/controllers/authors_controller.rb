class AuthorsController < ApplicationController

  def new
  @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author is created Successfully"
      redirect_to authors_path
    else
      logger.info"==========#{@author.errors.messages}"
      render 'new'
    end
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to authors_path
    else
      render 'edit'
    end
  end
  def edit
    @author = Author.find_by_id(params[:id])
  end

  def show
    @author = Author.find_by_id(params[:id])
  end

  def index
    @authors = Author.all
    if @authors.blank?
      flash[:notice] = "No Authors were Created"
    end
  end

  private
  def author_params
    params.require(:author).permit(:firstname, :lastname, :email, :active, :fullname)
  end

end
