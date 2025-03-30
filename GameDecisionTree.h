#ifndef GAMEDECISIONTREE_H
#define GAMEDECISIONTREE_H

#include <unordered_map>
#include <fstream>
#include <sstream>
#include <iostream>
#include "Node.h"
#include "Story.h"
using namespace std;

template <typename T>
class GameDecisionTree {
private:
    Node<T>* root;
    Node<T>* insert(Node<T>* current, const T& data) {
        if (current == NULL)
            return new Node<T>(data);

        if (data.eventNumber < current->data.eventNumber)
            current->left = insert(current->left, data);
        else if (data.eventNumber > current->data.eventNumber)
            current->right = insert(current->right, data);

        return current;
    }

    Node<T>* findNode(Node<T>* current, int eventNumber) {
        if (current == NULL || current->data.eventNumber == eventNumber)
            return current;

        if (eventNumber < current->data.eventNumber)
            return findNode(current->left, eventNumber);
        else
            return findNode(current->right, eventNumber);
    }
public:
    // TODO: Constructor
    GameDecisionTree() : root(NULL) {}

    // TODO: Function to load story data from a text file and build the binary tree
    void loadStoryFromFile(const string& filename, char delimiter) {
        ifstream file(filename);
        string line;

        if (!file.is_open()) {
            cout << "Could not open file " << filename << endl;
            return;
        }

        unordered_map<int, Node<T>*> nodes;

        while (getline(file, line)) {
            stringstream ss(line);
            string numText, storyText, leftNumText, rightNumText;

            getline(ss, numText, delimiter);
            getline(ss, storyText, delimiter);
            getline(ss, leftNumText, delimiter);
            getline(ss, rightNumText, delimiter);

            int id = stoi(numText);
            int leftID = stoi(leftNumText);
            int rightID = stoi(rightNumText);

            T story(storyText, id, leftID, rightID);
            Node<T>* newNode = new Node<T>(story);
            nodes[id] = newNode;
        }
        for (auto& entry : nodes) {
            Node<T>* node = entry.second;
            int leftID = node->data.leftEventNumber;
            int rightID = node->data.rightEventNumber;

            if (leftID != -1 && nodes.count(leftID))
                node->left = nodes[leftID];

            if (rightID != -1 && nodes.count(rightID))
                node->right = nodes[rightID];
        }

        root = nodes[1];
    }

    // TODO: Function to start the game and traverse the tree based on user input
    void playGame() {
        Node<T> * current = root;
        int decision;
        while (current != NULL) {
            cout <<current->data.description << endl;

            if (current->left == NULL && current->right == NULL) {
                cout << "\nGame OVER" << endl;
                break;
            }

            cout << " press 1 to go left" <<endl;
            cout << " press 2 to go right" <<endl;
            cout << "press your decision: "<< endl;

            cin>> decision;
            if (decision == 1) {
                current = current->left;
            } else if (decision ==2) {
                current = current->right;
            } else {
                     cout<< "Invalid input" <<endl;
            }
        }
    }
};

#endif // GAMEDECISIONTREE_H