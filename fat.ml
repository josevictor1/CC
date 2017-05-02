let rec fat x = 
        if x == 0 then 1
        else x * fat (x - 1);;
