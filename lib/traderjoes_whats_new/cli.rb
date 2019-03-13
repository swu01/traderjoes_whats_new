# Our CLI Controller
class TraderjoesWhatsNew::CLI

  def call
    list_whats_new
    menu
  end

  def list_whats_new

    puts ""
    puts "---------- Welcome to TRADER JOE'S ----------"
    puts "------- Below is a list of WHATS NEW: -------"
    puts ""
    @whatsnew = TraderjoesWhatsNew::WhatsNew.today
    @whatsnew.each.with_index(1) do |whatsnew, i|
      puts "#{i}. #{whatsnew.name} - #{whatsnew.date}"
      puts "Link: #{whatsnew.url}" #NEED TO SCRAPE CORRECT ELEMENTS FOR LINK
      # How to add #{domain} into a .css element scrape?
    end

  end

  def menu
    input = nil
    while input != 'exit'
      puts ""
      puts "Please enter the product number you are interested in for more information."
      input = gets.strip.downcase

      if input.to_i > 0
        @whatsnew[input.to_i-1] #minus 1 because you want the array index
        # NEED TO GET DESCRIPTION WORKING #{whatsnew.description}
      elsif input == "list"
        list_whats_new
      elsif input == "exit"
        goodbye
      else
        puts ""
        puts "!!! Input unknown. Please type a product number, 'list', or 'exit'."
      end
    end
  end

  def goodbye
    puts "Check back soon for what's new at Trader Joe's!"
  end

end
