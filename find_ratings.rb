
def sorter foo
	['backmarch', 'step', 'stroll', 'hike', 'climb', 'fly'].index foo || -1
end

lines = `grep '*' _posts/2015-04-07-pycon.md`
p lines
puts lines.split("\n").map {|l| 
	l.split('*')
}.compact.sort_by {|i| 
	sorter(i.last.strip.downcase) 
}.reverse.map {|i| 
	i.last + "----" + i.first
}
