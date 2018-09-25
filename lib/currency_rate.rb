class CurrencyRate
	def self.fetch
		eu_bank = EuCentralBank.new
		# cached location
		cache = "exchange_rates.xml"

		# saves the rates in a specified location
		eu_bank.save_rates(cache)

		# reads the rates from the specified location
		eu_bank.update_rates(cache)

		if !eu_bank.rates_updated_at || eu_bank.rates_updated_at < Time.now - 1.days
		  eu_bank.save_rates(cache)
		  eu_bank.update_rates(cache)
		end

		eu_bank
	end
end