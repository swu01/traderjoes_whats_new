# Our CLI Controller
class TraderjoesWhatsNew::CLI
  def call
    list_whats_new
    menu
    goodbye
  end

  def list_whats_new
    puts "This is what's new at Trader Joes!"
    # puts <<-DOC
    # 1. Freeze Dried Red Seedless Grape Slices
    # 2. Gluten Free Cocoa Crunch Cereal
    # 3. Organic Thick & Chunky Salsa
    # 4. Amba Mango Sauce
    # 5. Crunchy Red Dragon Fruit Chips
    # DOC
    @whatsnew = TraderjoesWhatsNew::WhatsNew.today
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
        puts "Not sure what that means. Please enter the product number, 'list', or 'exit'."
      end

    end
  end

  def goodbye
    puts "Check back soon for what's new at Trader Joe's!"
  end
end
