### 3. Binary

[Binary Number System](https://www.mathsisfun.com/binary-number-system.html)

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

### 5. Signedness

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
