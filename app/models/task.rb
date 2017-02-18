class Task < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, TaskAvatarUploader
end
