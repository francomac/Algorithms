#
# You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

# Example

# The maximum height candles are  units high. There are  of them, so return .

# Function Description

# Complete the function birthdayCakeCandles in the editor below.

# birthdayCakeCandles has the following parameter(s):

# int candles[n]: the candle heights
# Returns

# int: the number of candles that are tallest

# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    # [9, 4 ,3, 9, 4, 7, 1, 7, 4]
    # 1. find out how many TIMES a NUM is in the array 
    # { 9: 2, 4: 3, 3: 1, 2: 1, 7: 2}
    # 2. find out what is the GREATER NUM with >1 TIMES { 9: 2 }
    # return 2

    candles_control = Hash.new
    biggerOne = 0

    for i in candles do
        unless candles_control.member?(i)
            candles_control[i] = 1
        else
            candles_control[i] = candles_control[i].to_i + 1
        end
        biggerOne = i if (i > biggerOne)
    end
    puts candles_control[biggerOne]
    candles_control[biggerOne]
end

birthdayCakeCandles [9, 4 ,3, 9, 4, 7, 1, 7, 4]