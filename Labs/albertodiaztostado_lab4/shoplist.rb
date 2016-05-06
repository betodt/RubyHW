require 'erb'

def get_items()
  ['bread', 'milk', 'eggs', 'spam']
end

def get_template(filename)
  File.read(filename)
end

  # ERB::Util provide h() method, which is html_encode()
  # i think it is used by f.write()
  # see erb-util.pages file for detail
class ShoppingList
  include ERB::Util
  attr_accessor :items, :template, :date

  def initialize(items, template, date=Time.now)
    @date = date
    @items = items
    @template = template
  end

  def render()
    ERB.new(@template).result(binding)
  end

  def save(file)
    File.open(file, "w+") do |f|
      f.write(render)
    end
  end

end

list = ShoppingList.new(get_items, get_template(ARGV[0]))
list.save(File.join(Dir.pwd, 'list.html'))