class Poem < ActiveRecord::Base
  validates :text, presence: true
  belongs_to :holiday,foreign_key: 'holiday_id'
  belongs_to :author,foreign_key: 'author_id'
end