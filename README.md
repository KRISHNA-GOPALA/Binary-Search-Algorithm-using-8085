# Implementation of Binary Search Using 8085 Microprocessor

## Introduction
This project demonstrates the implementation of the **Binary Search Algorithm** using **8085 Assembly Language**. The 8085 microprocessor, known for its simple yet effective architecture, is used to efficiently search for an element in a sorted array.

## Objective
- To implement the **Binary Search Algorithm** using **8085 Assembly Language**.
- To understand the **working of the 8085 microprocessor** and its **instruction set**.
- To demonstrate efficient searching in **low-resource computing environments**.

## Requirements

### **Hardware**
- **8085 Microprocessor**
- **Memory Unit (RAM & ROM)**
- **Input/Output Devices** (Keyboard, Display)
- **Clock Generator**
- **Power Supply**

### **Software**
- **8085 Assembler** (ASEM-51, TASM, etc.)
- **8085 Simulator/Emulator** (GNUSim8085, Emu8085)
- **Text Editor** (Notepad++, VS Code, etc.)

## Algorithm
The **Binary Search Algorithm** follows these steps:
1. Initialize **low = 0** and **high = n-1**.
2. Compute **mid = (low + high) / 2**.
3. Compare the middle element:
   - If **A[mid] == target**, return **mid**.
   - If **A[mid] < target**, set **low = mid + 1**.
   - If **A[mid] > target**, set **high = mid - 1**.
4. Repeat steps **2-3** until **low > high** or the element is found.

## Program Execution
1. Load the sorted array into memory.
2. Accept the search key as input.
3. Implement the **Binary Search Algorithm** in **8085 Assembly Language**.
4. Display the result (index of the element or "not found").

## Usage
- Write the assembly code in the **8085 assembler**.
- Assemble and execute the program using an **8085 simulator/emulator**.
- Provide a sorted array and search key as input.
- The output will indicate whether the key exists and its index.

## Conclusion
This project highlights the efficiency of the **Binary Search Algorithm** in an **8085 microprocessor**. It provides insights into **low-level programming, microprocessor instructions, and computational efficiency**.

## References
- [GeeksforGeeks](https://www.geeksforgeeks.org/)
- [TutorialsPoint](https://www.tutorialspoint.com/)
- [Wikipedia](https://www.wikipedia.org/)

## License
This project is licensed under the MIT License.
