#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
  int data;
  struct Node *left;
  struct Node *right;
} Node;


Node *new_node(int data) {
  Node *temp = (Node*)malloc(sizeof(Node));
  temp->data = data;
  temp->left = temp->right = NULL;
  return temp;
}

Node *insert(Node *node, int data) {
  if (node == NULL) {
    return new_node(data);
  } else {
    if (data <= node->data) {
      node->left = insert(node->left, data);
    } else {
      node->right = insert(node->right, data);
    }
    return node;
  }
}

Node *search(Node *node, int data) {
  if (node == NULL || node->data == data) {
    return node;
  } else if (data <= node->data) {
    return search(node->left, data);
  } else {
    return search(node->right, data);
  }
}

int main(){

    Node *n = NULL;
    for(int i = 0; i < 100; i++){
        n = insert(n, i);
    }

    Node *f = search(n , 99);
   
    return 0;
}