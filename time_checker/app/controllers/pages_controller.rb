class PagesController < ApplicationController
  def home
  end

  def check_in(employee_id, private_number)
    employee = Employee.find(employee_id)
    if employee.private_number == private_number
      if employee.working == false
        redirect_to root_path, notice: "You are not working"
      else
        attendance = Attendance.create(employee_id: employee_id, check_in: Time.now, store_id: employee.store_id)
        redirect_to root_path, notice: "Check in successful"
      end
    else
      redirect_to root_path, notice: "Wrong private number"
    end
  end

  def check_out
    employee = Employee.find(employee_id)
    if employee.private_number == private_number
      if employee.working == false
        redirect_to root_path, notice: "You are not working"
      else
        attendance = Attendance.find(employee_id: employee_id, check_out: nil)
      end
    else
      redirect_to root_path, notice: "Wrong private number"
    end
  end
end
