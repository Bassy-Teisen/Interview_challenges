array = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

def aVeryBigSum(arr)

    # total set to 0 so that the numbers can be stored in the variable
    total = 0

    # iterates through each element of the array, which contains the different big numbers
    # number represents the individual element/big number
    arr.each do |number|

        # the number is added to the total variable
        # on every iteration the value of number is added to the total
        total += number
    end
    # returns total at the end
    total
end

# the array is passed to the method as an argument
# the returned value is displayed using puts
puts aVeryBigSum(array)