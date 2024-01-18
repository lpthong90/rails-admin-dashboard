# frozen_string_literal: true

json.extract! admin_dashboard_user, :id, :created_at, :updated_at
json.url admin_dashboard_user_url(admin_dashboard_user, format: :json)
