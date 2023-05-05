class Views::AllUsersContent < ApplicationRecord
  belongs_to :contentable, polymorphic: true

  self.primary_key = "id"

  def readonly?
    true
  end
end
