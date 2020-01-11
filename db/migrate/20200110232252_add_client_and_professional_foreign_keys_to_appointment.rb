class AddClientAndProfessionalForeignKeysToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :client, foreign_key: true
    add_reference :appointments, :professional, foreign_key: true
  end
end
