class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :theme
      t.string :venue_name
      t.string :state
      t.string :city
      t.string :country
      t.string :venue_contact_email
      t.string :venue_contact_name
      t.boolean :rent_again

      t.timestamps
    end
  end
end
