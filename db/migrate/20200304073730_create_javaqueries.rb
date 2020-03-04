class CreateJavaqueries < ActiveRecord::Migration[5.2]
  def change
    create_table :javaqueries do |t|
      t.string :title
      t.text :code

      t.timestamps
    end
  end
end
