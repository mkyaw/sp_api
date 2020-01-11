class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :info
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
