class CreateCovidData < ActiveRecord::Migration[7.1]
  def change
    create_table :covid_data do |t|
      t.string :city
      t.integer :cases
      t.integer :deaths
      t.date :date

      t.timestamps
    end
  end
end
