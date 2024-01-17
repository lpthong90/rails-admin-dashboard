class CreateApiKeys < ActiveRecord::Migration[7.1]
  def change
    create_table :api_keys do |t|
      t.string :name
      t.string :public_key
      t.string :encrypted_secret_key
      t.bigint :user_id

      t.timestamps
    end
  end
end
