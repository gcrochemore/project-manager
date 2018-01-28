class Project < ApplicationRecord
  belongs_to :organization
  has_many :tasks

  def to_s
    self.name
  end
end
