class AddAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :title, :string
    add_column :users, :gender, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :personal_website, :string
    add_column :users, :instagram_handle, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :workshop, :boolean
    add_column :users, :speaker, :boolean
    add_column :users, :business, :boolean
    add_column :users, :business_name, :string
    add_column :users, :business_website, :string
  end
end
