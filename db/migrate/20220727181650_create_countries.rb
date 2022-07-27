class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :income_group
      t.string :economy
      t.string :gdp_md
      t.string :gdp_year
      t.string :name

      t.timestamps
    end
  end
end
