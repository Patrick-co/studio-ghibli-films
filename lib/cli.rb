class FILMFINDER::CLI
    #Controller - what communicates with my user

    def run
        FILMFINDER::API.get_data# <= Data consumed from API
        greeting
        
        menu
    end

    def greeting
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Welcome, Ghibli-Fan !"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "-To see Studio Ghibli Films, enter 'Films'"
        puts "-To Exit back into the real world, enter 'Exit'"
    end

    def menu
        input = gets.strip

        if input == "Films"
            studio_ghibli_film_list
        elsif input == "Exit"
            goodbye
        else
            invalid_entry
        end
    end

    def studio_ghibli_film_list
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Which Studio Ghibli film would you like to learn more about:"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        FILMFINDER::STUDIO.all.each.with_index(1) do |film, index|
        puts "#{index}. #{film.title}"
        end
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Simply type out the film title below."
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        # puts "To go back to the main menu, type 'Exit'"
        input = gets.strip

        studio_ghibli_film_selection(input)
    end 

    def studio_ghibli_film_selection(film)
        movie = FILMFINDER::STUDIO.find_by_title(film)
        movie.each do |f|
            puts "Title: #{f.title}"
            puts "Description: #{f.description}"
            puts "Director: #{f.director}"
            puts "Producer: #{f.producer}"
            puts "Release_Date: #{f.release_date}"
        end
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "To go back to the main menu, type 'Restart'"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        input = gets.strip
        greeting
        menu
    end

    def goodbye
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Goodbye for now, Ghibli-Fan ! Until the next adventure !"  
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end

    def invalid_entry
        puts "Invalid entry, Try again !"
        menu
    end

end
