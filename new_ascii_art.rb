height = 5
width = height * 2 
for i in 0..height - 1
    for j in 0..width + 1
        if j >= height - i and j <= height + 1
            print "*"
        else
            print " "
        end
    end
    puts
end
for i in (height - 1).downto(0)
    for j in (width + 1).downto(0)
        if j >= height - i and j <= height + 1
            print "*"
        else
            print " "
        end
    end
   puts
end