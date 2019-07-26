# == Schema Information
#
# Table name: people
#
#  id       :bigint           not null, primary key
#  name     :string           not null
#  house_id :integer          not null
#

class People < ApplicationRecord
  validates :id, presence: true, uniqueness: true


  belongs_to :houses,
    primary_key: :id, 
    foreign_key: :houses_id,
    class_name: :Houses
end
