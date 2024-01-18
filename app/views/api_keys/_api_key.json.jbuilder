# frozen_string_literal: true

json.extract! api_key, :id, :name, :public_key, :encrypted_secret_key, :created_at, :updated_at
json.url api_key_url(api_key, format: :json)
