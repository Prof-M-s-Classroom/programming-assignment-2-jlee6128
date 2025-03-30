[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/jIKk4bke)
# CS210 Data Structures SP25
## Programming Assignment 2: Text-Based RPG Using Decision Trees

### **Student Name:** `Jae Yoon Lee`  
### **Student ID:** `828517996`  

---

## **1. Project Overview**
This project implements a text-based RPG using a binary decision tree.  
Each game event is represented as a node, and the player progresses by choosing between two paths at each stage.  
The storyline is based on an external text file (`story.txt`), which is to construct the decision tree.  
The game ends when a leaf node (both left and right children are `-1`) is reached.

Example:
> This project implements a text-based RPG using a **binary decision tree**. Each game event is represented as a node, and the player progresses by choosing between two paths at each stage. The storyline is loaded from an external text file (`story.txt`), which is parsed to construct the decision tree. The game ends when a leaf node (with `-1` as left and right children) is reached.

---

## **2. Folder & File Structure**
(Explain the role of each file in your project.)

- **`main.cpp`** → `[Describe its function]`  
- This is the entry point of the program. It creates an instance of the `GameDecisionTree<Story>` class, loads the story data from the external file `story.txt` using the `loadStoryFromFile()` method, and starts the game using `playGame()`.  
  This file handles no game logic. This only triggers the loading and traversal processes.
- **`GameDecisionTree.h`** → `[Explain what this file contains]`  
- This contains the `GameDecisionTree<T>` templated class, which manages the construction and traversal of the binary decision tree.
- The `loadStoryFromFile()` method reads from `story.txt`, creates `Story` objects for each event, and stores them in an `unordered_map`. Then it links each node’s left and right children using the event numbers.
- The `playGame()` method handles the user interaction loop. It displays each story description and waits for input (`1` or `2`) to move left or right in the tree. The game ends when a leaf node is reached.
- The tree is constructed to include a minimum depth of 5 and supports at least one shared child node (multiple parents pointing to the same node).
- 
- **`Node.h`** → `[Explain what this file contains]`  
-This file defines a simple templated `Node<T>` class.  
-Each `Node` stores a data object (in this case, a `Story`), along with pointers to its left and right child nodes.  
-It serves as the fundamental building block of the binary decision tree structure.

- **`Story.h`** → `[Explain what this file contains]`  
- These files define and implement the `Story` class, which represents a single decision point in the game. (option between 2)
- `description' is for Text explaining the event or situation.
- `eventNumber' is for a unique identifier for the node.
- `leftEventNumber' / `rightEventNumber` are for the event numbers of the left and right child nodes.  
  The constructor is implemented in `Story.cpp`, while the class declaration is in `Story.h`.

- **`story.txt`** → `[Explain how the game loads story events from this file]`  
- This file contains all the story events used in the game.  
  Each line represents one event and follows the format:  
  `eventNumber|description|leftEventNumber|rightEventNumber`  
  The delimiter is a vertical bar (`|`). If either child event number is `-1`, it indicates a leaf node (end of a path/ game over).  
  This file is parsed during runtime to build the tree structure and determine game progression.

---

## **3. Decision Tree Construction**
(Explain how the decision tree is built from the `story.txt` file.)

- How are `Story` objects created from the text file?  
-> Each line from the story.txt file is read and split using the | delimiter in to 4 parts (eventumber, description, leftEventNumber, rghtEventnumber)
These values are used to create a Story object using its constructor  and this object is later used to create a Node<story> which is stored in a map for later linking
- How are nodes linked based on left and right event numbers?  
-> After all nodes are created and stored in a map(unordered_map), the second for loop iterates through each node.
For each node, the leftEventNumber and rightEventNumber fields from the story object are used to look up child nodes in the map. I made the code that if the left/right
event number is not -1, I assign corresponding child pointer.
- What happens if an event has `-1` as left or right children?  
->If the event number is -1, this means the node does not have a child in that direction. Which means the pointer is left as NULL. When the game reaches a node with both
left and right as NULL, it is considered as a leaf node and the game ends saying "GAME OVER"

---

## **4. Game Traversal**
(Describe how the game moves through the decision tree.)

- How does user input determine the path taken?  
During the gameplay, the program enters a while loop starting from the root node. At each node, the description is printed based on what I coded and the user is prompted to choose between 1(to go left) and 2(to go right)
Based on this decision input, the program updates the "current" pointer using
  if (decision == 1)
  current = current->left;
  else if (decision == 2)
  current = current->right;
This code determines which branch of the decision tree the player takes.
- What happens when the player reaches a leaf node?  
A leaf node is identified when both left and right pointers are NULL. In this case, "Game over"is printed and the game ends.

- Explain the special case where multiple events lead to the same outcome.  
The program supports shared child nodes by storing Node<STory> objects in a single unordered_map using eventNumber as the key.
When linking nodes, multiple parent nodes can assign their left or right pointer to the same child node from the map
using "node->left = nodes[leftID]" This allows multiple paths in the tree to converge on the same outcome without duplicating the node.
---

## **5. File Parsing & Data Loading**
(Explain the process of reading `story.txt` and constructing the decision tree.)

- How is the file read and parsed using a delimiter?  
The story file is opened using a ifstream, and each line is read with getine().
Each line is parsed using stringstream(ss) and split into 4 parts using the delimiter "|"
numText,storyText,leftNumText,rightNumText string values are then converted to integers using stoi() and used to construct a Story object T story()

- How do you ensure nodes are properly linked?  
After creating all nodes in the first pass, a second loop goes through each node in the unordered_map.
For each node, the stored leftEventNumber and right EventNumber are used to look up the corresponding child nodes in the map and link them using 2 if statements.
"if (leftID != -1 && nodes.count(leftID))
  node->left = nodes[leftID];
  if (rightID != -1 && nodes.count(rightID))
  node->right = nodes[rightID]; "
This approach guarantees that all child pointers are properly set and shared child nodes are handeled properly.

- Any challenges faced while handling file input?  
  Initially, the program failed to read the story.txt file and printed "Could not open file story.txt"
  This issue occurred because the text file was not placed in the correct working directory.
  I searched up and found out that in CLion, the working directory during execution defaults to cmake-build-debug. So I move the text file into the appropriate folder which is
  "cmake-build-debug" and the program was able to read and parse it successfully.
- 
---

## **6. Debugging Process (Errors & Fixes)**
(Describe one or more debugging challenges you faced and how you fixed them.)
1. When the program first ran, it printed Could not open file story.txt.
This happened because story.txt was not placed inside CLion's default working directory (cmake-build-debug).
The fix was to move the text file into the correct folder so that ifstream could access it during runtime.
2. At first, my code tried to build the tree directly while reading each line from the file.
For every line in story.txt, I would create a Story object and immediately insert it into the tree using an insert() method based on the event number.
However, this approach caused a major problem. Child nodes sometimes didn’t exist yet when the parent node was trying to point to them.
For example, if a parent node was read before its children, the insert() method couldn't set its left or right pointers correctly, resulting in broken links (i.e., nullptr).
This made the game unplayable because paths were not connected properly.
To fix this, I completely changed the structure-building process to use a two-pass system.
In the first pass, I parsed each line of the file and created a Node<Story> object, storing each one in an unordered_map using its event number as the key.
This way, I ensured that all nodes were created and accessible before any linking occurred.
In the second pass, I went through each node in the map and used the leftEventNumber and rightEventNumber fields to assign the left and right pointers by looking them up in the map.
This ensured that all child nodes already existed before assigning the links, which completely solved the problem.

Example:
> Initially, my program was crashing when trying to access an uninitialized node. I realized it was because I was not properly checking for `nullptr` before accessing child nodes, so I added a check to prevent accessing uninitialized memory.

---

## **7. Sample Output & Walkthrough**
(Provide an example of how the game runs, including player input.)
The player begins at event 1, which describes waking up in a forest.
Choosing 1 (left) leads to event 2, a river encounter.
Choosing 2 (right) leads to event 5, where a hidden passageway is discovered.
Choosing 1 continues to event 7, an ancient book room.
Choosing 1 again leads to event 10, where the glowing diamond is found.
Since event 10 has no children, the game ends with "Game OVER".
---

## **8. Big-O Analysis of Core Methods**
(Analyze the complexity of key methods.)

- **Loading the tree from the file** → `O(n)`  
The time complexity for loading the tree from the file is O(n), where n is the number of events (or lines) in the story.txt file. 
The tree-building process is divided into two passes, first, all nodes are created and stored in an unordered map, and second, the left and right child pointers are connected using the event numbers. 
Each pass visits all n nodes once, and map insertions and lookups are constant time on average. Therefore, the entire file parsing and tree construction process runs in linear time.
- **Searching for an event in the tree** → `O(1)`  
Since all nodes are stored in an unordered_map<int, Node<T>*>,
accessing a specific node by its event number takes average-case constant time → O(1)
- **Game traversal efficiency** → `O(h)`  
During gameplay, the program traverses from the root to a leaf node.
In the worst case, the player could follow a path down to the maximum depth of the tree, h.
Since the game follows a single path per playthrough (no backtracking), traversal is linear in the height → O(h)
  (i have height 5 tree)
---

## **9. Edge Cases & Testing**
(Describe at least one edge case you tested and its outcome.)
One edge case I tested was reaching a leaf node, where both the left and right child event numbers are set to -1.
In this case, the corresponding node’s child pointers are nullptr, and the game correctly prints “Game OVER” and exits the loop without any crashes.
I could confirmed that the base case of game termination works as expected.
Another important test was handling invalid user input. I tested various incorrect inputs such as non-integer characters (e.g., a, b) and out-of-range numbers (e.g., 0, 3, -1).
When these inputs were entered, the program responded with an “Invalid input” message and prompted the user again, rather than crashing or skipping to an invalid state.
This showed me that the input validation logic inside playGame() was functioning correctly.
Lastly, I verified the handling of shared child nodes—situations where multiple parent nodes link to the same child node.
Because all nodes were stored in an unordered_map, and links were assigned by event number, shared children were properly managed by pointing multiple parents to the same Node<T>* object.
From this, I could confirmed that no duplicate memory was created and the tree structure remained consistent.


Example:
> I tested a scenario where the player reaches a dead-end (leaf node) and ensured the program correctly ends the game.

---

## **10. Justification of Additional Features (If Any)**
(If you added extra features, describe them and explain why.)
No additional features were added beyond the default structure of the assignment.


Example:
> I added a **save/load feature** so players can resume the game later. This was done by writing the current node’s event number to a file and reading it when restarting.

---

## **Final Notes**
- **README is mandatory** → `(-10 points deduction if missing).`  
- **Code must compile and run** → `(Code that does not run will receive a 0).`  
- **Do not modify provided skeleton code** → `(You may only add to it).`  

---
