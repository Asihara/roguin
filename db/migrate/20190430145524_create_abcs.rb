class CreateAbcs < ActiveRecord::Migration[5.2]
  def change
    create_table :abcs do |t|
      t.string :name
      t.string :pass

      t.timestamps
    end
  end
end
