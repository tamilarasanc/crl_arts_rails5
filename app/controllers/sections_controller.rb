class SectionsController < ApplicationController

  def new
    @section = Section.new
  end

  def create
   @section = Section.new(section_params)
   if @section.save
     flash[:notice] = "Section is created Successfully"
      redirect_to sections_path
   else
     logger.info"==========#{@section.errors.messages}"
     render 'new'
   end
  end

  def update
    @section = Section.find(params[:id])

    if @section.update(section_params)
      redirect_to sections_path
    else
      render 'edit'
    end
  end
  def edit
    @section = Section.find_by_id(params[:id])
  end

  def show
    @section = Section.find_by_id(params[:id])
  end

  def index
   @sections = Section.all
   if @sections.blank?
     flash[:notice] = "No Sections were Created"
   end
  end

  private
  def section_params
    params.require(:section).permit(:name, :alias_name, :active)
  end

end
