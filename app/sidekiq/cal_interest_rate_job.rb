class CalInterestRateJob
  include Sidekiq::Job

  def perform
    puts " cal simple interest "
    @lendings=Lending.where(state:"open")
    @lendings.each do |lending|
      principal=lending.amount
      interest_rate=lending.interest_rate
      interest_amt=(principal*interest_rate/100.0)/(365*24*12);
      puts "Updating lending ID: #{lending.id}, Previous Interest: #{lending.simple_interest}, New Interest: #{lending.simple_interest + interest_amt}"
      lending.update(simple_interest: lending.simple_interest+interest_amt)
      puts "Lending ID: #{lending.id} updated successfully. New Interest: #{lending.simple_interest + interest_amt}"
    end
  end

end
