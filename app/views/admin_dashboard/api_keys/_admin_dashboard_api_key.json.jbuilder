# frozen_string_literal: true

json.extract! admin_dashboard_api_key, :id, :created_at, :updated_at
json.url admin_dashboard_api_key_url(admin_dashboard_api_key, format: :json)
