class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :email                          # optional, you can use login instead, or both
      t.string    :first_name
      t.string    :last_name
      t.datetime  :activated_at

      t.timestamps
    end
  end
end
