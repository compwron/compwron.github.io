class Rater
  attr_accessor :order

  def initialize data=nil
    lines = data || `grep '*' _posts/2015-04-07-pycon.md`
    @order = _order(lines)
  end

  def sorter i
    clean_i = i.gsub('[LT]', '').strip.downcase
    ['backmarch', 'step', 'stroll', 'hike', 'climb', 'fly'].index(clean_i) || -1
  end

  def _order(lines)
    lines.split("\n").map {|l| 
      l.split('*')
    }.compact.sort_by {|i| 
      sorter(i.last) 
    }.reverse.map {|i| 
      i.last + "----" + i.first
    }
  end
end

if __FILE__==$0
  $:.unshift File.expand_path("../../", __FILE__)  
  puts (Rater.new).order
end
