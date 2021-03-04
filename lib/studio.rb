class FILMFINDER::STUDIO
    #Object -> where objects are created and stored for user display

    attr_accessor :title, :description, :director, :producer, :release_date

    @@all = []
    

    def initialize(title, diameter, climate, population, terrain)
        @title = title
        @description = description
        @director = director
        @producer = producer
        @release_date = release_date
        @all << self
    end

    def initialize(attr_hash)
        attr_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_title(title)
        self.all.select do |film|
            film.title == title
        end
    end

end
