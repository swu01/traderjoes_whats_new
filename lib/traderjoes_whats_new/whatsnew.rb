class TraderjoesWhatsNew::WhatsNew

  attr_accessor :name, :description, :price, :url

  def self.today
    #should return instances of WhatsNew
    puts <<-DOC
    1. Freeze Dried Red Seedless Grape Slices
    2. Gluten Free Cocoa Crunch Cereal

    DOC

    whatsnew_1 = self.new
    whatsnew_1.name = "Freeze Dried Red Seedless Grape Slices"
    whatsnew_1.description = "Yummy"
    whatsnew_1.price = "$3"
    hatsnew_1.url = "https://www.traderjoes.com/digin/post/freeze-dried-grapes."

    whatsnew_2.self = self.new
    whatsnew_2.name = "Gluten Free Cocoa Crunch Cereal"
    whatsnew_2.description = "Also Yummy"
    whatsnew_2.price = "$6.90"
    whatsnew_2.url = "https://www.traderjoes.com/digin/post/gluten-free-cocoa-crunch-cereal"

    #4 properties required, therefore, set attr_accessor !
    [whatsnew_1, whatsnew_2]
  end

end
