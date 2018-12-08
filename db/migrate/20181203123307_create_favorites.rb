class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
      #一位性を保つため
      
    end
  end
end
