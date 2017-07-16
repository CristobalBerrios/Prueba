class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :texto
      t.date :fecha

      t.timestamps
    end
  end
end
