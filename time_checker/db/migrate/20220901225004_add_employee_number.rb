class AddEmployeeNumber < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :employee_number, :uuid, default: "uuid_generate_v4()", null: false
  end
end
