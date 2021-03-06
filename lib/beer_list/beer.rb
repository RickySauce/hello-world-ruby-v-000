

class Beer
  attr_accessor :name, :sub_style, :parent_style, :region, :availability, :abv, :url, :score, :ratings, :brewery, :description
  @@all = []

  def initialize(beer_hash)
    beer_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def add_attrs(attr_hash)
    attr_hash.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.all
    @@all
  end

  def self.prints_all
    self.all.each do |beer|
      puts "#{beer.name}"
    end
  end

end
