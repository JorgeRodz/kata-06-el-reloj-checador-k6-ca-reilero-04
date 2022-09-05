class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.integer :employee_id
      t.datetime :check_in ,:default => DateTime.now
      t.datetime :check_out 
      
    end
  end
end
