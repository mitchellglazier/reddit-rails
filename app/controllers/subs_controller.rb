class SubsController < ApplicationController
  # skinny controllers, fat models

  # you want your controllers to be as slim as possible
    # they should be DRY and only worry about actions (creating read updating deleting)

    # index @ppl = Person.all
    # show @person = Person.find(params[:id])
    # new @person = Person.new
    # create @person = Person.create(ppl_params)
    # edit @person = Person.find(params[:id])
    # update @person = Person.find(params[:id]).update(ppl_params)
    # delete @person = Person.find(params[:id]).destory

  # callbacks
    # before_action, called before entering a method
    # after_action, called after entering a methods
    # skip_before_action, skip before action
    # skip_after_action, skip after action

    # example - before_action :method_to_call, (only/except): [:index, :show]

  # models, all logical code.
    # ordering, printing, ect.

before_action :set_sub, only: [:show, :update, :edit, :destroy]
#before_action :set_sub, except: [:index, :new, :create]

#TODO - anything that needs to be done
#FIXME - fix any bugs or errors
#OPTIMIZE - refactoring

#TODO fill out index view
#FIXME page not loading
#OPTIMIZE change the color of the text

#In the terminal write 'bundle exec rails notes'


  def index
    @subs = Sub.all
    #render a webpage/views
    #views/subs/index.html.erb
  end

  def show
    # defaul renders show - views/subs/show.html
  end

# this is get request
  def new
    #creates a sub memory
    @sub = Sub.new
    #renders the sub form
    render partial: "form"
  end

  def create
    @sub = Sub.create(sub_params)
    if @sub.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    #render the edit form
    render partial: "form"
  end

#put
  def update
    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
  end
end

#delete
  def destroy
    @sub.destroy
    redirect_to root_path
  end

  private
    def sub_params
      params.require(:sub).permit(:name)
    end

    def set_sub
      @sub = Sub.find(params[:id])
    end

end
