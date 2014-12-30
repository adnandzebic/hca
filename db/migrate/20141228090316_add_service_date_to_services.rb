class AddServiceDateToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_date, :datetime
  end
end
