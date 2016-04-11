class String
  def money(curr)
    curr+" "+self.to_s
  end

  def moneyexchange(incurr,outcurr)
    incurr == 'INR' && outcurr == 'USD' ? self.inr_to_usd : self.usd_to_inr
  end

  def inr_to_usd
    usd_rate = 66.55
    "USD "+(self.to_f/usd_rate).round(2).to_s
  end

  def usd_to_inr
    usd_rate = 66.55
    (self.to_f*usd_rate).round(2).to_s+ " INR"
  end
end