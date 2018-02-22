class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :content
      t.integer :part_of_speech
      t.string :symbol

      t.timestamps
    end
  end
end
