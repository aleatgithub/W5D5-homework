# == Schema Information
#
# Table name: houses
#
#  id      :bigint           not null, primary key
#  name    :string           not null
#  address :string           not null
#

class Houses < ApplicationRecord
  validates :id, presence: true, uniqueness: true
  
  has_many :people, 
    primary_key: :id,
    foreign_key: :person_id,
    class_name: :People 
    
end
