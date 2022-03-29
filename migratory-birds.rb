array = [1, 4, 4, 4, 5, 3] 

def migratoryBirds(arr)

    # empty hash for storing the sighted birds
    sightedBirds = {}

    # iterating through the array of sighted migratory birds 
    arr.each do |value|

        # checks if the bird type/number has been stored in the hash yet
        # if it hasn't the type/number as a key and a value of 1 is added to the hash
        if sightedBirds[value] == nil
            sightedBirds[value] = 1
            
        # if the type is already stored the types value is increased by 1
        else
            sightedBirds[value] = sightedBirds[value] + 1
        end
    end
    
    # A birdType number greatly exceeding the neccessary amount is stored 
    birdType = 100
    # totalSighted is set to 0 as a minimum value
    totalSighted = 0
    
    # iterates through the hash containg the types and their values
    sightedBirds.each do |key, value|

        # for each key value pair the value is compared to the totalSighted value,
        # to check if that type has been spotted more than the previous greatest type
        if value > totalSighted
            # if greater the totalSighted value will be reset to the new value
            totalSighted = value
            # and the new type will be stored in birdType
            birdType = key

        #  if the value is equal to the totalSighted 
        elsif value == totalSighted

            # the tpye/number value of the compared to the key 
            if birdType > key
                # the new key is stored in birdType if it is less than the previous key stored in birdType 
                birdType = key
            end
        end
    end 
    # birdType containing the type/number of the most see bird is returned
    birdType
end

# the method is called with the array of types passed as an argument
# the returned value is displayed using puts
puts migratoryBirds(array)