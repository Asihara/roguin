class CreateRoguin1s < ActiveRecord::Migration[5.2]
  def change
    create_table :roguin1s do |t|
      t.string :name
      t.string :pass

      t.timestamps
    end
  end
end
