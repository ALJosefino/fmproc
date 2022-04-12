class Lawsuit < ApplicationRecord
  validates :lawsuit_date, presence: true
  validates :lawsuit_number, presence: true, length: {maximum: 8}
  validates :lawsuit_complainant, presence:true
  validates :lawsuit_defendant, presence:true
  validates :lawsuit_case_description, presence:true
end
