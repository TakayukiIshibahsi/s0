class PeopleController < ApplicationController
  layout "people"
  def index
    @msg='Person data.'

    @data=Person.all
  end

  def show
    @msg='Index data.'
    @data=Person.find(params[:id])
  end

  def add
    @msg="Add new data!"
    @person=Person.new
  end

  def create
    @person =Person.new person_params
    if @person.save then
      redirect_to '/people'
    else
      re=""
      @person.errors.messages.each do |key,vals|
        vals.each do |val|
          re += '<span style="color:red">'+key.to_s+"</span> "+val+"<br>"
        end
      end
      @msg=re.html_safe
      render "add"
    end
  end

  def edit
    @msg="edit data.[id = "+params[:id]+"]"
    @person=Person.find(params[:id])
  end

  def update
      obj=Person.find(params[:id])
      obj.update(person_params)
      redirect_to "/people/"
    
  end
#sample
  def delete
    obj=Person.find(params[:id])
    obj.destroy
    redirect_to "/people/"
  end

  def find
    @msg="please type search word..."
    @people=Array.new
    if request.post? then
      f="%"+params["find"]+"%"
      search="id like ? or name like ? or mail like ? "
      @people=Person.where(search,f,f,f).limit(4).order"age asc"
    end
  end

  
  private
  def person_params
    params.require(:person).permit(:name,:age,:mail)
  end
end
