require 'rails_helper'

RSpec.describe Attachment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# rubocop:disable Metrics/LineLength, Lint/UnneededCopDisableDirective
# == Schema Information
#
# Table name: attachments
#
#  attachable_id   :bigint(8)
#  attachable_type :string
#  attachment_data :text
#  created_at      :datetime         not null
#  id              :bigint(8)        not null, primary key
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_attachments_on_attachable_type_and_attachable_id  (attachable_type,attachable_id)
#
# rubocop:enable Metrics/LineLength, Lint/UnneededCopDisableDirective
