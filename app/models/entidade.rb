class Entidade < ActiveRecord::Base
	geocoded_by :full_address
	after_validation :geocode

	def full_address
		[self.address, self.city, self.state, self.country].compact.join(', ')
	end
end
