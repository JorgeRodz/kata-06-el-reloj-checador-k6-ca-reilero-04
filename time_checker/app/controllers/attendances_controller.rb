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
      @attendance = Attendance.new(params.require(:attendance).permit(:employee_id))
      if @attendance.save
        redirect_to @attendance
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
