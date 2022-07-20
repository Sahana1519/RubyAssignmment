symbol1 = "+"
symbol2 = "-"
distance = 4
height = 2
for row in 0..height
    clearspaces=distance-row
     for rows in 0..spaces
        if rows.even?
            rows.times {print symbol1}
        else 
            rows.times {print symbol2}
        end
        puts
    end
