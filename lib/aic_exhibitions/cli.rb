# create and test CLI class first with fake data. Once user interface is working how you intend, you can remove fake data and begin to fill out Scraper class
class AicExhibitions::CLI 
  def call
    puts "\nWelcome to The Art Institute of Chicago!\n".colorize(:light_blue)
    get_current_exhibitions
    list_current_exhibitions
    get_user_exhibition
    show_exhibition_description(@chosen_exhibition)
  end
  
  def get_current_exhibitions
    # to be scaped instead, but for now we will create the data to get the program running
    @current_exhibitions = AicExhibitions::Exhibition.all
    #binding.pry
  end
  
  def list_current_exhibitions
    puts "\nChoose an exhibition (by typing it's number) to see it's description\n".colorize(:light_red)
    @current_exhibitions.each.with_index(1) do |e, index|
      puts "#{index}. #{e.name}"
    end
  end
  
  def get_user_exhibition
    @chosen_exhibition = gets.strip.to_i
    show_exhibition_description(@chosen_exhibition) if valid_input(@chosen_exhibition, @current_exhibitions)
  end
  
  def valid_input(input, data) # checks to see if input is valid, simply returns false or true and doesn't effect the input by changing it to an integer
    input.to_i <= data.length && input.to_i > 0
  end
  
  
  def show_exhibition_description(input)
    exhibition = @current_exhibitions[input -1] # we add the -1 because the index of an array always starts at 0 and not 1
    puts "\nHere is the description for #{exhibition.name}\n".colorize(:light_green)
    description = exhibition.link
    # AicExhibitions::Exhibition.all.each.with_index(1) do |exhibition|
    # puts exhibition.description
    # end
    # binding.pry
  end
end