class Attendance < ApplicationRecord
  # Relations
  belongs_to :store
  belongs_to :employee

  # callbacks
  before_save :check_in_registration

  private

  def check_in_registration
    self.check_in = DateTime.now.to_s(:db)
  end
end
