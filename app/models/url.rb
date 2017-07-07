class Url < ActiveRecord::Base
	attr_accessor :url

	before_create :set_short

    def set_short
        self.short = @url.hash.abs.to_s(36)
    end
end
