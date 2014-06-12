require 'pry'

class Robot
  @@robots = {}
  attr_reader :name, :mac
  def initialize
    if @@robots.empty?
      @mac = 0
      @@robots[@mac] = create_serial
      @name = create_serial
      @count = 0
      @creation_time = Time.new
      @reboot_time = nil
    else
      new_serial = nil
      loop do
        new_serial = create_serial
        break if !@@robots.values.include?(new_serial)
      end
      @mac = @@robots.keys.max + 1
      @@robots[@mac] = new_serial
      @name = new_serial
    end
  end

  def reset
    new_serial = nil
    loop do
        new_serial = create_serial
        break if !@@robots.values.include?(new_serial)
      end
      @@robots[@mac] = new_serial
      @name = new_serial
      @reboot_time = Time.new
      wear
  end

  def rand_char
    (65+rand(26)).chr
  end

  def create_serial
    "#{rand_char}#{rand_char}#{rand(999)}"
  end

  def to_s
    @name
  end

  def wear
    @count += 1
  end

  def time
    new_time = Time.new
    string = ""
    if !@reboot_time.nil?
      string += "#{(new_time - @reboot_time).round(2)} since reboot"
    end
    string += " #{(new_time - @creation_time).round(2)} since creation"
    string
  end

end

robot = Robot.new

puts robot

binding.pry