# == Schema Information
#
# Table name: categories
#
#  cid        :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord

  # Associations
  has_many :projects

  self.primary_key = 'cid'
end
