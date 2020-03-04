class CreateCsses < ActiveRecord::Migration[5.2]
  def change
    create_table :csses do |t|
      t.string :ttle
      t.text :code

      t.timestamps
    end
  end
end
