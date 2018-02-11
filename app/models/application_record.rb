class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  self.per_page = 200
  paginates_per 50
end
