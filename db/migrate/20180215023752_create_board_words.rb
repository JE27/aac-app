class CreateBoardWords < ActiveRecord::Migration[5.1]
  def change
    create_table :board_words do |t|
      t.integer :word_id
      t.integer :board_id

      t.timestamps
    end
  end
end
