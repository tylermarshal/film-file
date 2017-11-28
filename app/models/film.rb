class Film < ActiveRecord::Base

  validates :title, uniqueness: true
  # validates :title, presence: true
  validates_presence_of :title, :year, :box_office_sales
  # validates_uniqueness_of :title, :year

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

  def self.average_box_office_sales
    average(:box_office_sales)
  end
end
