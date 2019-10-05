# == Schema Information
#
# Table name: accommodations
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  estate_type    :string           not null
#  share_type     :string           not null
#  summary        :string
#  description    :text
#  num_of_room    :integer
#  guest_capicity :integer
#  num_of_bed     :integer
#  num_of_toilet  :integer
#  country        :string
#  state          :string
#  city           :string
#  district       :string
#  street         :string
#  number         :string
#  building       :string
#  room           :string
#  latitude       :string
#  longitude      :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Accommodation < ApplicationRecord
  enum estate_type: {
    'apartment': 'apartment',
    'house': 'house',
    'villa': 'villa'
  }

  enum share_type: {
    'whole_building': 'whole_building',
    'room': 'room'
  }
end
