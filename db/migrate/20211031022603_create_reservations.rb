class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :start_day
      t.datetime :finish_day
      t.integer :number_of_people
      t.integer :days_of_use
      t.bigint :total_fee
      t.integer :user_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
