# create and test CLI class first with fake data. Once user interface is working how you intend, you can remove fake data and begin to fill out Scraper class
class AicExhibitions::CLI 
  def call
    puts "\nWelcome to The Art Institute of Chicago!\n".colorize(:light_blue)
    get_current_exhibitions
    list_current_exhibitions
    get_user_exhibition
    get_user_input
  end
  
  def get_current_exhibitions
    # to be scaped instead, but for now we will create the data to get the program running
    @current_exhibitions = AicExhibitions::Exhibition.all
    #binding.pry
  end
  
  def list_current_exhibitions
    puts "Choose an exhibition by typing its number(1, 2, etc.) to see it's description".colorize(:light_red)
    @current_exhibitions.each.with_index(1) do |e, index|
      puts "#{index}. #{e.name}"
    end
    puts "Scroll up to see the Instructions at the top of the list!".colorize(:light_red)
  end
  
  def get_user_exhibition
    @@input = gets.strip
    @chosen_exhibition = @current_exhibitions[@@input.to_i - 1]
    show_exhibition_description(@chosen_exhibition) if valid_input(@chosen_exhibition, @current_exhibitions)
    #get_user_input
  end
  
  def valid_input(input, data) # checks to see if input is valid, simply returns false or true and doesn't effect the input by changing it to an integer
    input = @@input
    #binding.pry
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_exhibition_description(input)
    exhibition = @chosen_exhibition # we add the -1 because the index of an array always starts at 0 and not 1
    puts "\nHere is the description for #{exhibition.name}\n".colorize(:light_green)
    AicExhibitions::Scraper.scrape_descriptions(exhibition)
  end
  
  def get_user_input
    puts "\nView the list again by typing (y) or leave the program by typing (n)\n".colorize(:light_green)
    input = gets.strip
    if input == "y"
    get_current_exhibitions
    list_current_exhibitions
    get_user_exhibition
    until input == "n" do
    leave_program
    end
  end
  end
  
  def leave_program
    puts "\nGoodbye!\n".colorize(:light_blue)
  end
end