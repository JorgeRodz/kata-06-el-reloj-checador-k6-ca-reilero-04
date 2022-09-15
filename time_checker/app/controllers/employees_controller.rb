class EmployeesController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :email, :position, :working,
                                                              :store_id))
    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(params.require(:employee).permit(:first_name, :last_name, :email, :position, :working,
                                                         :store_id))
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end
end
