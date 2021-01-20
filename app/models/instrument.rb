class Instrument < ApplicationRecord
    
    belongs_to :user, optional: true
    has_many :line_items
    
    mount_uploader :image, ImageUploader
    serialize :image, JSON # If you use SQLite, add this line
  
    validates :title, :brand, :price, :model, :image, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
    validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
    validates :price, length: { maximum: 7 }
  
    BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
    FINISH = %w{Hitam Putih Navy Biru Merah Kuning Satin Seafoam}
    CONDITION = %w{ Baru Baik bekas rusak }
  
    
end
