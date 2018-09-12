class AuthenticationToken < ApplicationRecord
  belongs_to :user

  attr_accessor :unencrypted_token
end

# rubocop:disable Metrics/LineLength, Lint/UnneededCopDisableDirective
# == Schema Information
#
# Table name: authentication_tokens
#
#  body         :string
#  created_at   :datetime         not null
#  id           :bigint(8)        not null, primary key
#  ip_address   :string
#  last_used_at :datetime
#  updated_at   :datetime         not null
#  user_agent   :string
#  user_id      :bigint(8)
#
# Indexes
#
#  index_authentication_tokens_on_user_id  (user_id)
#
# rubocop:enable Metrics/LineLength, Lint/UnneededCopDisableDirective
