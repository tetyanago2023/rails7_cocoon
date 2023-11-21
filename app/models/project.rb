class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy, inverse_of: :project
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
end
