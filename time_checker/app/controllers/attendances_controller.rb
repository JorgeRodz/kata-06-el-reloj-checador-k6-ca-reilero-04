class AttendancesController < ApplicationController

  def show
    @attendance =Attendance.find(params[:id])
  end

  def index
    @attendances = Attendance.all
  end

  def new
    @attendance = Attendance.new

    #hol
  end

  def create
    # puts "params: #{params}"

    # Where return an array of objects, so we save the first one and thus the only one object because we have only allow to have just check_in per day
    already_check_in = Attendance.where(employee_id: params[:attendance][:employee_id], check_in: Date.today.all_day).first

    # byebug

    # --------------- Check-in ---------------
    if params[:commit] == "Check-in"
      # attendance new instance
      @attendance = Attendance.new(params.require(:attendance).permit(:employee_id,:store_id))
      @employee = Employee.find_by(id: @attendance.employee_id)

      # puts @employee.private_number
      # puts params[:attendance][:private_number]

      # byebug

      if @employee == nil || @employee.working == false
        flash[:notice] = "Employee not found"
        render 'pages/home'
        return
      end

      if @employee.private_number != params[:attendance][:private_number].to_i
        flash[:notice] = "Wrong private number"
        render 'pages/home'
        return
      end

      if already_check_in
        flash[:notice] = "You already checked in at -> '#{already_check_in.check_in.to_s(:long)}'"
        render 'pages/home'
        return
      end

      if @attendance.save
        flash[:notice] = "✅ Check-in register at '#{DateTime.now.to_s(:long)}'"
        redirect_to root_path
      end

      # byebug
    end

    # --------------- Check-out ---------------
    if params[:commit] == "Check-out"
      if !already_check_in
        flash[:notice] = "Your first need to check-in"
        render 'pages/home'
        return
      end

      if already_check_in.check_out
        flash[:notice] = "Your assistant was already recorded"
        render 'pages/home'
        return
      end

      # attendance new instance
      # byebug
      already_check_in.update_columns(check_out: DateTime.now.to_s(:db))
      flash[:notice] = "✅ Check-out register at '#{DateTime.now.to_s(:long)}'"
      redirect_to root_path
    end
  end

  def edit
    # @attendance = Attendance.find(params[:id])
  end

  def update
    if !already_check_in
      flash[:notice] = "Your first need to check-in"
      render 'pages/home'
      return
    end
    # flash[:notice] = "update was reach"
    # redirect_to root_path
    # render 'pages/home'
  end

  def destroy
    # @store = Store.find(params[:id])
    # @store.destroy
  end
end
