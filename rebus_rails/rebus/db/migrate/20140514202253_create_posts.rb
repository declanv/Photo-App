class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :input_1
      t.string :input_2
      t.string :input_3
      t.string :input_4
      t.string :input_5

    end
  end
end
