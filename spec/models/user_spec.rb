# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  uuid       :string(255)
#
# Indexes
#
#  index_users_on_uuid  (uuid) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
end
