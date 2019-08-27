class CreateClones < ActiveRecord::Migration[5.2]
  def change
    create_table :clones do |t|
      t.string :First_name
      t.string :Last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
