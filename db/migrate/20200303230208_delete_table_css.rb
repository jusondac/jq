class DeleteTableCss < ActiveRecord::Migration[5.2]
  def change
    drop_table :csses
  end
end
