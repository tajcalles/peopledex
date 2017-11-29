class PersonsController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to persons_path
  end

  private
  
  def person_params
      params.require(:person).permit(:name, :hair_color, :age, :eye_color, :alive)
    end
end
