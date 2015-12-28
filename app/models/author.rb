class Author < ActiveRecord::Base
  has_many :books
  validates :name, presence: true
  accepts_nested_attributes_for :books, reject_if: proc { |attributes| attributes['title'].blank? }
end
