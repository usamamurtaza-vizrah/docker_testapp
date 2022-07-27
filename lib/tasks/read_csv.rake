require 'csv'
require 'pry'
desc "Import product from csv file"
  task :import => [:environment] do
   file = "db/countries.csv"
    CSV.foreach(file, headers: true) do |row|
        data = row.to_h
        Country.find_or_create_by(name: data['NAME_EN'], name_es: data['NAME_ES'], name_fr: data['NAME_FR'], name_ar: data['NAME_AR'], income_group: data['INCOME_GRP'], gdp_md: data['GDP_MD'], gdp_year: data['GDP_YEAR'], economy: data['ECONOMY'], woe_note: data['WOE_NOTE'])        
  end 
end