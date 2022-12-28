class CreateManages < ActiveRecord::Migration[7.0]
  def change
    create_table :manages do |t|
      t.string :title
      t.string :email
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
