# Signed vs Unsigned

Unsigned into are just positive values and at Binary level, they would be represented as such: (if we were working with 4 bits)

![bits](https://user-images.githubusercontent.com/24438577/80710432-bd249f00-8abc-11ea-8602-3e37ffc5c9f0.png)

Signed values aim to have negatives, but require a system to save them.



# Twos Complement

The first proposition to save them is to use the first bit as a signed bit:

![signed](https://user-images.githubusercontent.com/24438577/80710587-fd841d00-8abc-11ea-9a04-cfd8ef8f53b9.png)

This system is not perfect as it yields you a position of -0 and if you add positive with negative numbers in this binary sequence, the math won’t make sense (note: we ignore anything that goes beyond our range of 4 bits):

![wrongmath](https://user-images.githubusercontent.com/24438577/80710964-97e46080-8abd-11ea-86b4-022fcc79a26f.png)

The next system proposed combine the idea of using a signed bit while the rest of the sequence is the inverse of positive or negative:

![ones](https://user-images.githubusercontent.com/24438577/80711242-0c1f0400-8abe-11ea-9091-ea0649eb270d.png)

This is called Ones Complement. If you were to apply addition between the negative and positive numbers, you would yield a closer result but not quite there yet. This is because we still have a -0 position:

![wrong](https://user-images.githubusercontent.com/24438577/80711372-4092c000-8abe-11ea-9750-392d1eb78ece.png)

If you see your results and the pattern above, you will notice that the actual answer is always +1 position away from what you are getting. This brings us to the system used to stored signed integers: Twos Complement. Here we will use a sign digit, invert the sequence, and finally add 1.

![twos](https://user-images.githubusercontent.com/24438577/80711503-6fa93180-8abe-11ea-93a2-2fce71f9c01a.png)

Our math finally checks out! It is odd that you end up with a -8 but no 8, however this brings us to a great way you can think of the positions:

![negative](https://user-images.githubusercontent.com/24438577/80711810-f78f3b80-8abe-11ea-8224-f7c07ea512d9.png)



## Bitwise Operators

The following operators will execute some kind of operation at the binary level. Note that the binary representation will depend on whether the interger is signed or unsigned.

### Bitwise NOT Operator

Bitwise NOT written as ~ will invert the binary sequence of the value. In an signed value, this will flip the signed digit as well!

![u](https://user-images.githubusercontent.com/24438577/80713773-00354100-8ac2-11ea-8dbf-2209e2ea47e3.png)

![s](https://user-images.githubusercontent.com/24438577/80715076-d846dd00-8ac3-11ea-854a-2a679fab7c37.png)

### Bitwise AND Operator

Bitwise AND written as & will compare two bits and returns 1 if they are both 1. It will return 0 if they are not the same.

![a](https://user-images.githubusercontent.com/24438577/80715900-02e56580-8ac5-11ea-9836-306af9a1f984.png)


### Bitwise OR Operator

Bitwise OR written as | will compare two bits and return 1 if either one is 1. It will return 0 only if both are 0.

![o](https://user-images.githubusercontent.com/24438577/80716392-928b1400-8ac5-11ea-8a74-6bb1e1cbd607.png)

### Bitwise XOR Operator

Bitwise XOR written as ^ will compare two bits and return 1 if exactly one is 1. It will return 0 in any other configuration.

![x](https://user-images.githubusercontent.com/24438577/80716704-f9a8c880-8ac5-11ea-8205-c1a8f4e89100.png)


## Bit Shifting

The last two operations will shift the sequence to the left or right depending on the operator used and the amount specified. 

### Shifting Left

Written as:  valueToChange << NumberOfShifts.  This will shift the sequence by that many positions towards the left and fill in the vacant spots on the right with zeroes. Note that with Signed ints the number doubles.

![l](https://user-images.githubusercontent.com/24438577/80718293-f7e00480-8ac7-11ea-9ad7-c5aa6dd8e9ff.png)


### Shifting Right

Written as:  valueToChange >> NumberOfShifts.  This will shift the sequence by that many positions towards the right and handles the vacant spots on the left depending on the valueToChange. If it is an Unsigned Int, these spots are filled with 0. If it is a Signed Int, then the spots are filled according to the sign digit. Shifting to the right will divide the value in half though it will not change a negative number into a positive number

![r](https://user-images.githubusercontent.com/24438577/80719413-738e8100-8ac9-11ea-8cd6-3ea208955820.png)


