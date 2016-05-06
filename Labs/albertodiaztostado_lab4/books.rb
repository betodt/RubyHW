require 'erb'
require 'sinatra'

#read in template and return
def get_template(filename)
  File.read(filename)
end

#book class definition
class Book
  attr_accessor :title, :isbn, :author, :price, :description

  def initialize(title, isbn, author, price, description="")
    @title = title
    @isbn = isbn 
    @author = author
    @price = price 
    @description = description
  end 

  def add_description(desc)
    @description = desc
  end 

  def get_binding()
    binding()
  end
end

#instantiate a book and add the description

book = Book.new("Paula Deen's Southern Cooking Bible", "978-1416564072", "Paula Deen with Melissa Clark", "$29.99")
desc = <<END 
Hi, y’all! 

This book is my proudest achievement so far, and I just have to tell y’all why I am so excited about it. It’s a book of classic dishes, dedicated to a whole new generation of cooks—for every bride, graduate, and anyone who has a love of a great Southern meal. My family is growing and expanding all the time. We’re blessed with marriages and grandbabies, and so sharing these recipes for honest, down-home dishes feels like passing a generation’s worth of stovetop secrets on to my family, and yours.

I’ve been cooking and eating Southern food my whole life, and I can tell you that every meal you make from this book will be a mouthful of our one-of-akind spirit and traditions. These recipes showcase the diversity and ingenuity of Southern cuisine, from Cajun to Low-Country and beyond, highlighting the deep cultural richness of our gumbos and collards, our barbecues and pies. You may remember a few beloved classics from The Lady & Sons, but nearly all of these recipes are brand-new—and I think you’ll find that they are all mouthwateringly delicious. It is, without a doubt, a true Southern cooking bible.

I sincerely hope that this book will take its place in your kitchen for many years to come, as I know it will in mine. Here’s to happy cooking—and the best part, happy eating, y’all! 

Best dishes, 
Paula Deen
END
desc = desc.split(/[!\.?]/)
book.add_description(desc)

#render the template
get '/books' do
  ERB.new(get_template(ARGV[0])).result(book.get_binding)
end