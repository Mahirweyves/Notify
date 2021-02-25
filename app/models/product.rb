class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  validates_acceptance_of :terms_and_conditions
  validates :terms_and_conditions, acceptance: true
  validates :name, :description, :images, :address, :category,
        :company_name, :telephone_number, :price, presence: true
  
  validates :images, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..2.megabytes }
  validates :name, uniqueness: { case_sensitive: false }
   
end
