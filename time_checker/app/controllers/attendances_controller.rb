class AttendancesController < ApplicationController

    def show
        @attendance =Attendance.find(params[:id])
    end

    def index
      @attendances = Attendance.all
    end

    def new
      @attendance = Attendance.new
    end

    def create

      # puts "params: #{params}"

      @attendance = Attendance.new(params.require(:attendance).permit(:employee_id,:store_id))

      @employee = Employee.find(@attendance.employee_id)

      # puts @employee.private_number
      # puts params[:attendance][:private_number]

      if @employee.private_number != params[:attendance][:private_number].to_i
        render 'new'
      elsif @employee.working == false
        render 'new'
      elsif @attendance.save
        flash[:notice] = "Check-in register!"
        redirect_to root_path
      else
        render 'new'
      end
    end

    def edit
      @attendance = Attendance.find(params[:id])
    end

    def update
      # @store = Store.find(params[:id])
      # if @store.update(params.require(:store).permit(:name, :address))
      #   redirect_to @store
      # else
      #   render 'edit'
    end

    def destroy
      # @store = Store.find(params[:id])
      # @store.destroy
    end
end
