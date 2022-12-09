class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :surname
      t.integer :school
      t.integer :grade
      t.integer :place

      t.timestamps
    end
  end
end
