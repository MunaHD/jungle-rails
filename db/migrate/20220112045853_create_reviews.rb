class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :index
      t.string :show
      t.string :create
      t.string :destroy

      t.timestamps null: false
    end
  end
end
