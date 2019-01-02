class Communication < ApplicationRecord
  belongs_to :practitioner

  def as_json(options = nil)
    {
      first_name: practitioner.first_name,
      last_name: practitioner.last_name,
      sent_at: sent_at
    }
  end

end
