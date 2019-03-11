# Our CLI Controller
class TraderjoesWhatsNew::CLI

  def call
    list_whats_new
    menu
    goodbye
  end

  def list_whats_new
    @whatsnew = TraderjoesWhatsNew::WhatsNew.today
    @whatsnew.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name} - #{deal.description} - #{deal.price}."
    end
  end

  def menu
    input = nil
    while input != 'exit'
      puts 'Please enter the number for which product you would like more info on:'
      input = gets.strip.downcase

      if input.to_i > 0
        puts @whatsnew[input.to_i-1] #minus 1 because you want the array index
      elsif input == "list"
        list_whats_new
      else
        puts "Input unknown. Please enter the product 'number', 'list', or 'exit'."
      end
    end
  end

  def goodbye
    puts "Check back soon for what's new at Trader Joe's!"
  end

end
