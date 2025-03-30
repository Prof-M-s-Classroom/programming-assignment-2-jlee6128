#ifndef NODE_H
#define NODE_H

template <typename T>
class Node {
public:
    T data;
    Node* left;
    Node* right;

    Node () : left (NULL), right (NULL) {} // node constructor
    Node(T value) : data(value), left(nullptr), right(nullptr){ } // TODO: Implement constructor here
};

#endif // NODE_H