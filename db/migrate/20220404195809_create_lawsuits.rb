class CreateLawsuits < ActiveRecord::Migration[7.0]
  def change
    create_table :lawsuits do |t|
      t.date :lawsuit_date
      t.integer :lawsuit_number
      t.string :lawsuit_complainant
      t.string :lawsuit_defendant
      t.text :lawsuit_case_description

      t.timestamps
    end
  end
end
