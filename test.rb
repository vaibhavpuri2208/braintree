class Boss

	def initialize 
	@@num=1
	end

	def addnum
	@@num=@@num +1
	puts @@num
	end

end 

class Worker < Boss
	def initialize 
	end

	def addnum
	@@num =@@num +2
	puts @@num
	end
end


b = Boss.new
b.addnum

w = Worker.new
w.addnum

w1 = Worker.new
w.addnum