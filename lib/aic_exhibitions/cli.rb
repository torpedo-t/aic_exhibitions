class AicExhibitions::CLI 
  def call
    puts "\nWelcome to The Art Institute of Chicago!\n"
    get_current_exhibitions
    list_current_exhibitions
    get_user_exhibition
    
  end
  
  # get_current_exhibitions
  # list_current_exhibitions
  # get_user_exhibition
  # print_exhibition_description(input)
  
  def get_current_exhibitions
    # to be scaped instead, but for now we will create the data to get the program running
    @current_exhibitions = ['El Greco', 'Melangatana', 'Toulouse']
  end
  
  def list_current_exhibitions
    puts "\nChoose an exhibition to see it's description\n"
    @current_exhibitions.each.with_index(1) do |e, index|
      puts "#{index}. #{e}"
    end
  end
  
  def get_user_exhibition
    chosen_exhibition = gets.strip.to_i
    show_exhibition_description(chosen_exhibition) if valid_input(chosen_exhibition, @current_exhibitions)
  end
  
  def valid_input(input, data) # checks to see if input is valid, simply returns false or true and doesn't effect the input by changing it to an integer
    input.to_i <= data.length && input.to_i > 0
  end
  
  
  def show_exhibition_description(chosen_exhibition)
    exhibition = @current_exhibitions[chosen_exhibition -1] # we add the -1 because the index of an array always starts at 0 and not 1
    puts "Here is the description for #{exhibition}"
    
    binding.pry
  end
end