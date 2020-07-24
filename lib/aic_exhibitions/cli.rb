class AicExhibitions::CLI 
  def call
    puts 'Welcome to The Art Institute of Chicago!'
    get_current_exhibitions
    get_user_input
  end
  
  # list_current_events
  # get_user_input
  # print_selected_exhibitions_description
  
  def get_current_exhibitions
    # to be scaped instead, but for now we will create the data to get the program running
    @current_exhibitions = ['El Greco', 'Melangatana', 'Toulouse']
  end
  
  def get_user_input
    @current_exhibitions.each.with_index(1) do |e, index|
      puts "#{index}. #{e}"
    end
  end
  
  def print_selected_exhibitions_description(input)
    
  end
end