class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
       t.text :content
       t.references :product, foreign_key: true
       t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
