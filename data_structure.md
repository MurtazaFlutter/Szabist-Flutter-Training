Sure, let's go through a few of these data structure problems and explain the solutions with code.

1. **Reverse a Linked List**:

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def reverse_linked_list(head):
    prev = None
    current = head
    while current is not None:
        next_temp = current.next
        current.next = prev
        prev = current
        current = next_temp
    return prev
```

2. **Implement a Stack**:

```python
class Stack:
    def __init__(self):
        self.items = []

    def push(self, item):
        self.items.append(item)

    def pop(self):
        if not self.is_empty():
            return self.items.pop()
        else:
            raise Exception("Stack is empty.")

    def peek(self):
        if not self.is_empty():
            return self.items[-1]
        else:
            raise Exception("Stack is empty.")

    def is_empty(self):
        return len(self.items) == 0
```

3. **Check for Balanced Parentheses**:

```python
def is_valid_parentheses(s):
    stack = []
    mapping = {")": "(", "}": "{", "]": "["}
    for char in s:
        if char in mapping:
            top_element = stack.pop() if stack else '#'
            if mapping[char] != top_element:
                return False
        else:
            stack.append(char)
    return not stack
```

These are just a few examples of how you can approach data structure problems with code. You can similarly implement other data structure problems by following the basic algorithmic principles and data structure functionalities.