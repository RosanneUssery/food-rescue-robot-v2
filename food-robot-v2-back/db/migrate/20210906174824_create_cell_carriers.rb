class CreateCellCarriers < ActiveRecord::Migration[6.1]
  def change
    create_table :cell_carriers do |t|
      t.string :name
      t.string :format

      t.timestamps
    end
  end
end
