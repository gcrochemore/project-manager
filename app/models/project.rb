class Project < ApplicationRecord
  belongs_to :organization

  def to_s
    self.name
  end
end
