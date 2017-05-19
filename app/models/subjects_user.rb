class SubjectsUser < ApplicationRecord
  validates_uniqueness_of :subject_id, :scope => :user_id
end
