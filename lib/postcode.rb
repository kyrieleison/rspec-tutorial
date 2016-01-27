class Postcode

  def initialize(postcode)
    @postcode = postcode
  end

  def valid?
    return true if @postcode.match(/^\w{3}-?\w{4}$/)
    return true if @postcode.match(/^\w{3}-?\w{2}$/)
    return false
  end

end
