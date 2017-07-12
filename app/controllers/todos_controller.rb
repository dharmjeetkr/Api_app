class TodosController < ApplicationController

	
	
	before_action :set_todo, only: [:show, :update, :destroy]

  # GET /todos
  def index
    #@todos = Todo.all
    #json_response(@todos)
    
   # @od = Odyssey.flesch_kincaid_re("hello india", true)
    #@od=Odyssey.analyze_multi("See Spot run", ['FleschKincaidRe', 'FleschKincaidGl'], true)
    #json_response(@od)
  end

  # POST /todos

  def create
    #@todo = Odyssey.flesch_kincaid_re(Todo.params(), true)
 	@todo = Todo.ody(todo_params)
 
    json_response(@todo)
    
  end

  # GET /todos/:id
  def show
    json_response(@todo)
  end

  # PUT /todos/:id
  def update
    @todo.update(todo_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @todo.destroy
    head :no_content
  end

  private

  #def todo_params
  #	"hello worlds,american "
 # end 

  def todo_params
    # whitelist params
 	params.permit(:title)#, :created_by)
  	#params.require(:todo).permit(:title, :created_by)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
