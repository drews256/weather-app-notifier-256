class Attachment < ApplicationRecord
  # adds an `photo` virtual attribute
  include ::AttachmentUploader::Attachment.new(:attachment)

  belongs_to :attachable, polymorphic: true
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
