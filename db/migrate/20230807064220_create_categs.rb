class CreateCategs < ActiveRecord::Migration[6.0]
  def change
    create_table :categs do |t|
      t.string :category

      t.timestamps
    end
  end
end
