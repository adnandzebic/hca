class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :client_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
