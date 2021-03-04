

class FILMFINDER::API
    #Gets data - bring in extrenal data and consume api, instantiate my objects
    
    def self.get_data
        response = HTTParty.get("https://ghibliapi.herokuapp.com/films")
        # binding.pry
        films_array = JSON.parse(response.body)
        films_array.each do |film|
            FILMFINDER::STUDIO.new(film)
        end
    end

end

