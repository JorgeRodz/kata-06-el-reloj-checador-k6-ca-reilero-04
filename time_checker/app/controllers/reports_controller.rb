class ReportsController < ApplicationController
  # before_action :require_admin

  def index; end

  def attendance_by_day
    @attendances = Employee.find(5).attendances
    render 'attendance_by_day'
  end

  def monthly_absence_employee
    render 'monthly_absence_employee'
  end

  def monthy_average_hours_emp
    render 'monthly_average_hours_emp'
  end
end
