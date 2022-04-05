class Product < ApplicationRecord
  extend Enumerize

  enumerize :type, in: [:a, :b]
end
