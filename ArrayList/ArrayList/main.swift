//
//  main.swift
//  ArrayList
//
//  Created by 이영재 on 2021/02/18.
//
//

var size: Int = 0
var elements: Array<Int> = []
for _ in 0..<100 {
    elements.append(0)
}

func add(index: Int, element: Int) -> Void {
    if size == elements.count {
        allocate()
    }
    var i = size - 1
    while i >= index {
        elements[i + 1] = elements[i]
        i -= 1
    }
    elements[index] = element
    size += 1
}

func addLast(element: Int) -> Void {
    add(index: size, element: element)
}

func addFirst(element: Int) -> Void {
    add(index: 0, element: element)
}

func remove(index: Int) -> Int {
    let removed = elements[index]

    var i = index + 1
    while i < size {
        elements[i - 1] = elements[i]
        i += 1
    }
    elements[size - 1] = 0
    size -= 1

    return removed
}

func removeFirst() -> Int {
    remove(index: 0)
}

func removeLast() -> Int {
    remove(index: size - 1)
}

func get(index: Int) -> Int {
    elements[index]
}

func count() -> Int {
    size
}

func indexOf(element: Int) -> Int {
    for i in 0..<size {
        if elements[i] == element {
            return i
        }
    }
    return -1
}

// allocate 함수 호출시 성능은 좋지 않음.
func allocate() -> Void {
    let newCapacity = elements.count << 1
    var newArrayList: Array<Int> = []
    for i in elements {
        newArrayList.append(i)
    }
    for _ in elements.count..<newCapacity {
        newArrayList.append(0)
    }
    elements = newArrayList
}

func printArrayList() -> Void {
    var answer: String = "["
    for i in 0..<size {
        if i < size - 1 {
            answer = answer + String(elements[i]) + ", "
        } else {
            answer += String(elements[i])
        }
    }
    answer += "]"
    print(answer)
}

addLast(element: 1)
addLast(element: 2)
addFirst(element: 0)
addLast(element: 4)
add(index: 3, element: 3)

printArrayList()