# frozen_string_literal: true

class AddIndexToApiKeysOnPublicKey < ActiveRecord::Migration[7.1]
  def change
    add_index :api_keys, :public_key, name: :index_api_keys_on_public_key, unique: true
  end
end
