# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :api_keys, foreign_key: :user_id, dependent: :destroy

  broadcasts_to -> (user) { :users_list }, partial: "admin_dashboard/users/user"
end
