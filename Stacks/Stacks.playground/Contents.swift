//: Playground - noun: a place where people can play

import Foundation

class StackWithArr<T> {
	private var arr = Array<T>()
	


	
	func pop() -> T? {
		// return arr.popLast()
		guard arr.count != 0 else { return nil }
		return arr.remove(at: arr.count - 1)
	}
	
	func push(newElement: T) {
		arr.append(newElement)
	}
	
	func peek() -> T? {
		guard arr.count != 0 else { return nil }
		return arr[arr.count - 1]
	}
	
	func isEmpty() -> Bool {
		// return arr.isEmpty
		if arr.count == 0 {
			return true
		}
		return false
	}
	
}

let myStack = StackWithArr<Int>()
myStack.push(newElement: 9)
myStack.push(newElement: 38)
print(myStack.peek())
myStack.pop()
print(myStack.peek())
print(myStack.isEmpty())
myStack.pop()
print(myStack.isEmpty())
myStack.peek()

class Node<T> {
	var key: T!
	var next: Node?
}

class LinkedList<T> {
	var head = Node<T>()
}

// H -> 2 -> 3
// new -> H -> 2 -> 3


class StackWithLL<T> {
	private var list = LinkedList<T>()
	//pop
	func pop() -> T? {
		guard list.head.next != nil else {
			list.head.key = nil
			return nil
		}
		let oldKey = list.head.key
		list.head = list.head.next!
		return oldKey
	}
	//push
	func push(element: T) {
		if list.head.key == nil {
			list.head.key = element
			return
		}
		let newNode = Node<T>()
		newNode.key = element
		newNode.next = list.head
		list.head = newNode
	}
	
	//peek
	func peek() -> T? {
		return list.head.key
	}
	
	//isEmpty
	func isEmpty() -> Bool {
		return list.head.key == nil
	}
}

let myStackLL = StackWithLL<Int>()
myStackLL.push(element: 9)
myStackLL.push(element: 39)
print(myStackLL.peek())
myStackLL.pop()
myStackLL.isEmpty()
print(myStackLL.peek())

func reverse<T>(stack: StackWithArr<T>) -> StackWithArr<T> {
	let newStack = StackWithArr<T>()
	
	while !stack.isEmpty() {
		newStack.push(newElement: stack.pop()!)
	}
	
	return newStack
}

func convertToBinary(_ num: Int) -> String {
	let tempStack = StackWithArr<Int>()
	var number = num
	var binaryString = String()
	
	func checkBinaryDigitAt(num: Int) {
		let binaryDigit = Int(pow(2.0, Double(num)))
		if number >= binaryDigit {
			tempStack.push(newElement: 1)
			number -= binaryDigit
		} else {
			tempStack.push(newElement: 0)
		}
	}
	
	for x in (0..<8).reversed() {
		checkBinaryDigitAt(num: x)
	}
	
	let reversedStack = reverse(stack: tempStack)

//	while reversedStack.peek() == 0 {
//		reversedStack.pop()
//	}
	
	while !reversedStack.isEmpty() {
		binaryString += "\(reversedStack.pop()!)"
	}
	
	return binaryString
}

convertToBinary(50)

