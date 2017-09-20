
### Objectives
- Represent numbers in base 2, 10 and 16
- Convert numbers in one base to another base
- Understand how modern operating systems store numbers in memory

### Readings

[Binary Number System](https://www.mathsisfun.com/binary-number-system.html)

[Storage](https://en.wikipedia.org/wiki/Computer_data_storage)

#### Vocabulary

- Binary
- Octal
- Decimal
- Hexadecimal
- Place value
- Base
- Sign
- Integer
- Bit
- Byte

### 0. Review

Follow the link [here](https://itunes.apple.com/us/book/intro-to-app-development-with-swift/id1118575552?mt=11) and get the iBook titled "Intro to App Development with Swift"

Download the zip file at the link [here](https://developer.apple.com/sample-code/swift/downloads/app-dev-curriculum.zip)

Open the file titled "02\_Naming.Playground" and go to Lesson 2 in the iBook.  Complete the exercises in the playground.


### 1. Number Types

We saw in class yesterday that we will primarily work with two number types in Swift.  Those two are:

<details>
<summary> Show types </summary>
- Int
- Double
</details>

By default, if we don't annotate the types ourselves, Swift will always give us one of these types.  This process is called:

<details>
<summary> Answer </summary>
Type Inference
</details>

However, Swift has a host of other number types built in which you will see come up from time to time.  In order to understand what those types are and why they could be useful, we are first going to discuss how information is stored inside a computer.


### 2. Storage Introduction

How do we store information?  A computer is a combination of a lot of very complicated pieces of circuitry.  At its most basic level, think of it as a device made up of transistors.  A transistor regulates the current in a circuit, and can be used like a switch.  It can either be on or off.  

If we want to store something on our computer, the only thing we can do is turn transistors on and off.  Then, be reading a series of these transistors, we can recreate the information that we stored originally.

Because transistors are either on or off, we need a way of translating any information to a series of 0s and 1s so that it can be stored on our computers.  We call one piece of information a bit, and eight of them make up one byte.

```
0 ~ One bit
10100101 ~ One byte (8 bits)
```


Let's take a look at how we are able to store numbers by breaking them down to 0s and 1s.


### 3. Binary


Binary is another way of representing values.  While decimal (base 10) uses the digits 0,1,2,3,4,5,6,7,8 and 9, binary only uses the digits 0 and 1.

Before we get into binary, let's better understand the anatomy of a number.  Take 439.  What is its value and how do we know?

When read aloud we say its value is four hundred thirty nine.  Broken up further, we can say 4 hundreds, 3 tens and 9 ones.  This is because each digit's position tells us what its <b>place value</b> is.  Using exponents, we can see this mathematically.

439 = 400 + 30 + 9
    = 4 * 10^2 + 3 * 10^1 + 9 * 10^0

Let's break up some more numbers!

29

940

10

10000

1000000

2048

<details>
<summary><b>Click Here to Toggle Solution</b></summary>

```swift
29 = 2 * 10^1 + 9 * 10^0
940 = 9 * 10^2 + 4 * 10^1 + 0 * 10^0
10 = 1 * 10^1 + 0 * 10^0
10000 = 1 * 10^4 + 0 * 10^3 + 0 * 10^2 + 0 * 10^1 + 0 * 10^0
1000000 = 1 * 10^6 + 0 * 10^5 + 0 * 10^4 + 0 * 10^3 + 0 * 10^2 + 0 * 10^1 + 0 * 10^0
2048 = 2 * 10^3^ + 0 * 10^2^ + 4 * 10^1^ + 8 * 10^0^
832941 = 8 * 10^5 + 3 * 10^4 + 2 * 10^3 + 9 * 10^2 + 4 * 10^1 + 1 * 10^0

```

</details>

As shown above, we can calculate the value of the final number by multiplier each digit with its place value.  But what if we changed how much a place value was worth?  In "regular numbers" (base 10) the place value of a number is 10.  What do we think the place value is in binary?

<details>
<summary><b>Click Here to Toggle Solution</b></summary>
2
</details>

Let's take a look at a binary number:

11001

How can we calculate its value in base ten?


2^4   2^3   2^2   2^1   2^0
 1     1     0     0     1
            
<details>
<summary><b>Click Here to Toggle Solution</b></summary>
11001 = 1 * 2^4 + 1 * 2^3 + 0*2^2 + 0*2^1 + 1* 2^0

11001 = 16 + 8 + (0 * 4) + (0 * 2) + 1

11001 = 25
</details>

<b>Practice</b>:  Convert the following binary numbers into decimal

1000

1111

1

10

10101


<details>
<summary><b>Click Here to Toggle Solution</b></summary>

```swift
1000 = 8
1111 = 15
1 = 1
10 = 2
10101 = 21
```

</details>

We can also [convert decimal numbers to binary](http://www.wikihow.com/Convert-from-Decimal-to-Binary)

Let's practice a few below

7

8

9

15

257

<details>
<summary><b>Click Here to Toggle Solution</b></summary>

```swift
5 = 101
8 = 1000
9 = 1001
15 = 1111
259 = 100000011
```

</details>




---

### 4. Integer Size

```swift
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
```

#### Exercise - Integer Size

Take the code block above and test different mins and maxes. Use `Int`, `Int8`, `Int16`, `Int32`, and `Int64`.

<details>
<summary><b>Click Here to Toggle Solution</b></summary>

```swift
let minInt8Value = Int8.min  // -128
let maxInt8Value = Int8.max  // 127

let minInt16Value = Int16.min  // -32768
let maxInt16Value = Int16.max  // 32767

let minInt32Value = Int32.min  // -2147483648
let maxInt32Value = Int32.max  // 2147483647

let minInt64Value = Int64.min  // -9223372036854775808
let maxInt64Value = Int64.max  // 9223372036854775807

let minIntValue = Int.min  // -9223372036854775808
let maxIntValue = Int.max  // 9223372036854775807

```
</details>

### 4. Signedness

A "signed" integer can be positive, negative or zero. An "unsigned" integer can only represent a positive number, or zero.

Swift offers unsigned versions of all the integer types. The main advantage of unsigned integers is that it doubles the size of the positive range of the type. This used to be more of an issue when memory was limited and squeezing every bit was a valuable optimization. Now, there are only some use cases that call for it. Similar to the specific Int sizes, controlling the signedness of integers has applications in networking where systems need to agree on the exact format of the data they're communicating.

**Question**: Think of applications that require using a very large number.

> * IDs on a popular service like Facebook and Twitter.
> * Scientific and mathematical applications that require exact precision.

#### Exercise - Signed/Unsigned Integers

Take the code block above and test different mins and maxes. Use `UInt`, `UInt8`, `UInt16`, `UInt32`, and `UInt64`.

<details>
<summary><b>Click Here to Toggle Solution</b></summary>

```swift
let minUInt8Value = UInt8.min  // 0
let maxUInt8Value = UInt8.max  // 255

let minUInt16Value = UInt16.min  // 0
let maxUInt16Value = UInt16.max  // 65535

let minUInt32Value = UInt32.min  // 0
let maxUInt32Value = UInt32.max  // 4294967295

let minUInt64Value = UInt64.min  // 0
let maxUInt64Value = UInt64.max  // 18446744073709551615

let minUIntValue = UInt.min  // 0
let maxUIntValue = UInt.max  // 18446744073709551615
```
</details>

Compare them to their corresponding signed type (e.g. `UInt8` to `Int8`).  What do you notice is different about them?


### 5. Overflow Operators

You may see that Swift supports overflow operators. They're not used in everyday coding but the reason they exist is worth looking at quickly. Overflow refers to the result of trying to perform an operation that would result in a value that goes over the maximum, or under the minimum value of the data type.

```swift
var x: Int8 = 100
x += 30
```

That crashes, which is actually what we want it to do. This alerts us to the fact that we have overflow and we're more likely to fix it. There are operators that will make the value wrap around and our program won't crash but most likely the value we get is totally not what we expect.

**Takeaway**: Sometimes it's good to crash.

### 6. Conversion between Integer Types

The range of numbers that can be stored in an integer constant or variable is different for each numeric type. An Int8 constant or variable can store numbers between -128 and 127, whereas a UInt8 constant or variable can store numbers between 0 and 255. A number that will not fit into a constant or variable of a sized integer type is reported as an error when your code is compiled:

```swift
let cannotBeNegative: UInt8 = -1
// UInt8 cannot store negative numbers, and so this will report an error
let tooBig: Int8 = Int8.max + 1
// Int8 cannot store a number larger than its maximum value,
// and so this will also report an error
```

Because each numeric type can store a different range of values, you must opt in to numeric type conversion on a case-by-case basis. This opt-in approach prevents hidden conversion errors and helps make type conversion intentions explicit in your code.

To convert one specific number type to another, you initialize a new number of the desired type with the existing value. In the example below, the constant twoThousand is of type UInt16, whereas the constant one is of type UInt8. They cannot be added together directly, because they are not of the same type. Instead, this example calls UInt16(one) to create a new UInt16 initialized with the value of one, and uses this value in place of the original:

```swift
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
Because both sides of the addition are now of type UInt16, the addition is allowed. The output constant (twoThousandAndOne) is inferred to be of type UInt16, because it is the sum of two UInt16 values.
```
### 7. Hexadecimal

Sometimes, instead of representing a number in base 10, we will see a number represented in base 16.  Has anyone seen an example of this before?

<details>
<summary> One example </summary>

- Colors in HTML
 
</details>


Hexadecimal is useful because it still allows to talk in terms of bits and bytes.  16 is a power of 2, so it allows us to transition between binary and Hexademcial.

In Decimal, we have 10 digits (0,1,2,3,4,5,6,7,8, and 9).  In Hexadecimal, we have 16 digits (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F).  The letters used there signify the following in decimal:

<details>
<summary>Table</summary>

|Hex symbol| Corresponding Decimal Value|
|---|---|
|0|0|
|1|1|
|2|2|
|3|3|
|4|4|
|5|5|
|6|6|
|7|7|
|8|8|
|9|9|
|A|10|
|B|11|
|C|12|
|D|13|
|E|14|
|F|15|

</details>


Just like with binary, we can translate Hex numbers to Decimal by using their place value:

```
0xB3A = (11 * 16 ^ 2) + (3 * 16 ^ 1) + (10 * 16 ^ 0)
0xB3A = (11 * 256) + (3 * 16) + (10 * 1)
0xB3A = (11 * 256) + (3 * 16) + (10 * 1)
0xB3A = (2816) + (48) + (10)
0xB3A = 2874

```

We write 0x before a Hex number to indicate that it is in Base 16.  This is to avoid confusion for number like:

```
0x13 = (1 * 16 ^ 1) + (3 * 16 ^ 0)
0x13 = (16) + (3)
0x13 = 19
```

Let's practice some below.  Convert the following Hex numbers into Decimal:

0x100

0xFF

0x10

0xC83

0x8

<details>
<summary>Solution</summary>

```swift
0x100 = 256

0xFF = 255

0x10 = 16

0xC83 = 3203

0x8 = 8
```
</details>
