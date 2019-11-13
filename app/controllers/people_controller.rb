class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  def create
    @person = Person.new(people_params)

    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])
  
    if @page.update(page_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  def destroy
    Person.find(params[:id]).destroy
  redirect_to people_path
  end

  private

  def people_params
    params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :state_of_being, :power_level, :magical_abilitys)
  end

  
end
