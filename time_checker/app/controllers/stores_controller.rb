class StoresController < ApplicationController
  before_action :require_admin
  before_action :set_store, only: %i[show edit update destroy reports reports_att_by_day reports_att_by_day_date reports_abs_by_month reports_abs_by_month_date]


  def show; end

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to @store
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @store.update(store_params)
      redirect_to @store
    else
      render 'edit'
    end
  end

  def destroy
    @store.destroy
    redirect_to stores_path
  end

  def reports; end

  def reports_att_by_day; end

  def reports_att_by_day_date
    date = params[:check_out].to_date
    date ? @reports = Attendance.where(check_out: date.all_day) : report_empty
  end

  def reports_abs_by_month; end

  def reports_abs_by_month_date
    date = params[:check_out] + '-01'
    date = date.to_date
    date ? @reports = Attendance.where(check_out: date.all_month) : report_empty
  end

  private

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name, :address)
  end

  def report_empty
    flash[:notice] = 'Please select a date'
    redirect_to store_reports_att_by_day_path
  end
end
