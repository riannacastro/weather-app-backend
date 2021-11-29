class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.string :forecast
      t.string :present_temp
      t.string :low_temp
      t.string :high_temp
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
