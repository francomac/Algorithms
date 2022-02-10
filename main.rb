#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    # Write your code here
    # [9, 4 ,3, 2, 4, 7, 1, 7, 4]
    # 1. find out how many TIMES a NUM is in the array 
    # { 9: 1, 4: 3, 3: 1, 2: 1, 7: 2}
    # 2. find out what is the GREATER NUM with >1 TIMES { 9: 1 }
    # return 1
    candles_control = Hash.new
    biggerOne = 0
    puts candles.length

    for i in candles do
        unless candles_control.member?(i)
            candles_control[i] = 1
        else
            candles_control[i] = candles_control[i].to_i + 1
        end
        biggerOne = i if (i > biggerOne)
    end
    candles_control[biggerOne]
end

birthdayCakeCandles [9, 4 ,3, 2, 4, 7, 1, 7, 4]