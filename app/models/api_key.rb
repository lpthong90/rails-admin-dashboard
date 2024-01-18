# frozen_string_literal: true

class ApiKey < ApplicationRecord
  belongs_to :owner, foreign_key: :user_id, class_name: "User"

  validates :name, presence: true

  after_initialize do |api_key|
    api_key.public_key = SecureRandom.hex(32)
    api_key.encrypted_secret_key = ApiKeysHelper.encrypt_key(SecureRandom.hex(32))
  end
end
