class Resume < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  # after_save :convert
  validates :name, presence: true

  def convert
      Transliterator.new(self).convert
  end
end
