# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :api_keys, foreign_key: :user_id, dependent: :destroy

  after_commit :broadcast_later

  private
    def broadcast_later
      broadcast_replace_to(
        :users,
        partial: "admin_dashboard/users/index",
        locals: { admin_dashboard_users: self }
      )
    end
end
