
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

