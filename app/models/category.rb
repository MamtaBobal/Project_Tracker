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

  self.primary_key = 'cid'

  # Associations
  has_many :projects

end
