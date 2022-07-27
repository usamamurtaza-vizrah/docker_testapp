class AddWoeToCountries < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :woe_note, :text
    add_column :countries, :name_es, :string
    add_column :countries, :name_ar, :string
    add_column :countries, :name_fr, :string
  end
end
