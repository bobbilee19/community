class ImportUserCSV
  include CSVImporter

  model User

  column :email
  column :password
  column :password_confirmation
  column :first_name
  column :last_name
  column :title
  column :gender
  column :city
  column :state
  column :country
  column :personal_website
  column :instagram_handle
  column :twitter_handle
  column :workshop
  column :speaker
  column :business
  column :business_name
  column :business_website
end
