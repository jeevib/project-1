class DemosController < ApplicationController
before_action :set_demo, only: [:edit, :update, :show, :destroy]

def new
   @demo =Demo.new
end

def create
  @demo = Demo.new(demo_params)
  if @demo.save
    flash[:notice] = "Demo was created successfully!"
    redirect_to demo_path(@demo)
  else
    render 'new'
  end
end

def show
end

def edit
end

def update
  if @demo.update(demo_params)
    flash[:notice] = "Demo was successfully updated"
    redirect_to demo_path(@demo)
  else
    render 'edit'
  end
  def index
    @demos = Demo.all
  end
end

def destroy
  @demo.destroy
  flash[:notice] = "Demo was deleted successfully"
  redirect_to demos_path
end
private

  def set_demo
     @demo = Demo.find(params[:id])
  end

  def demo_params
    params.require(:demo).permit(:name, :description)
  end

end
