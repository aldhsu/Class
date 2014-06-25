class CreateOceans < ActiveRecord::Migration
  def change
    create_table :oceans do |t|
      t.string :name
      t.integer :longitude
      t.integer :latitude
      t.integer :volume
      t.string :image
    end
  end
end
