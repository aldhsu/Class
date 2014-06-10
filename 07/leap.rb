class Year
  def initialize(year)
    @year = year
  end

  def leap?
    modulo4 = year % 4
    modulo100 = year % 100
    modulo400 = year % 400

    if modulo4 == 0
      if (modulo400 == 0) || (modulo100 == 0)
        return false
      else
        return true
      end
    end
  end

end
