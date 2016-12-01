class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
  	self.new.save
  end

  def self.new_by_name(name)
  	song = self.new
  	song.name = name
  	song 
  end

  def self.create_by_name(name)
  	#song = self.new
  	#song.name = name
  	#song.save
  	song = self.new_by_name(name)
  	song.save
  end

  def self.find_by_name(name)
  	self.all.find{|song| song.name == name}    #"detect" is the same exact thing as "find"
  end

  

  def save
    self.class.all << self
    self
  end

end
