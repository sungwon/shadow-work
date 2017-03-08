class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.text :three
      t.text :two
      t.text :one
      t.text :notes
      t.timestamps
    end
  end
end
