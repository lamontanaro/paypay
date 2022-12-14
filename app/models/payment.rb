class Payment < ApplicationRecord
	belongs_to :lote, dependent: :destroy
end
