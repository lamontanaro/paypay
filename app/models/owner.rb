class Owner < ApplicationRecord
	has_many :lotes, dependent: :destroy

	def my_lotes
		ll = []
		lotes.map{ |lote| ll << lote.number.to_s}
		ll.join("-")
	end
end
