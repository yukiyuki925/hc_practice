
class Suica

  def initialize
    @money = 500
  end

  def money
    @money
  end

  def money=(new_money)
    @money = new_money
  end

  def charge(add)
    @money += add
    return unless add < 100

    raise 'ChargeError'
  end
end
