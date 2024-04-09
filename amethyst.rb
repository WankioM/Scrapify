
print "Enter a value: \n"
y= gets.chomp.to_i


def myfunc(a)
    sum=0
    puts a
    for item in a do
        sum=sum+item   
    end
    puts sum
    return sum
end

lst=[[1,2,3,4,5,6,7,8,9,10],[2,4,6,8,10,12],[3,6,9,12,15],[4,8,12,16],[5,10,15],[6,12]]
rlst=lst.sample

total=myfunc(rlst)
        
if y > total && y < (total +10)
    puts "You win"
else
    puts "You lost"
end

class Book
    attr_accessor :author, :title, :price, :sales

    def initialize (author, title, price, sales)
        @author= author
        @title = title
        @price = price
        @sales = sales
    end

    def to_s
        "Title: #{title} Sold #{sales} copies for #{price} each"
    end

    def profits
        profits = price*sales
        puts "Profits #{profits}"
        return profits
    end
end

book1 = Book.new("Harry Potter", "J.K. Rowling", 400, 543)
puts book1
book1.profits


