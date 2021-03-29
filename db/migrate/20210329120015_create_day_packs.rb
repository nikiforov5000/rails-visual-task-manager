class CreateDayPacks < ActiveRecord::Migration[6.0]
  def change
    create_table :day_packs do |t|
      t.string :title

      t.timestamps
    end
  end
end
