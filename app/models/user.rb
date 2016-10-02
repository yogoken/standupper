# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end
