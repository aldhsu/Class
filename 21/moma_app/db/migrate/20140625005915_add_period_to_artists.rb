class AddPeriodToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :period, :string
  end
end
