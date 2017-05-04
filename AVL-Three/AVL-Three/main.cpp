//
//  main.cpp
//  AVL-Three
//
//  Created by Eugene Tretiakova on 3/1/17.
//  Copyright © 2017 Eugenya. All rights reserved.
//

#include <iostream>

typedef struct node
{
    int val;
    struct node* left;
    struct node* right;
    int ht;

} node;

int height(node* node)
{
    return node ? (node->ht + 1) : 0;
}

int balanceFactor(node* node)
{
    return height(node->right)-height(node->left);
}

void fixHeight(node* node)
{
    int hl = height(node->left);
    int hr = height(node->right);
    
    node->ht = hl>hr?hl:hr;
}

node* rotateRight(node* pNode)
{
    node* qNode = pNode->left;
    pNode->left = qNode->right;
    qNode->right = pNode;
    fixHeight(pNode);
    fixHeight(qNode);
    return qNode;
}

node* rotateLeft(node* qNode)
{
    node* pNode = qNode->right;
    qNode->right = pNode->left;
    pNode->left = qNode;
    fixHeight(qNode);
    fixHeight(pNode);
    return pNode;
}

node* balance(node* node)
{
    fixHeight(node);

    if( balanceFactor(node) == 2 )
    {
        if( balanceFactor(node->right) < 0 )
            node->right = rotateRight(node->right);
        return rotateLeft(node);
    }
    if( balanceFactor(node) == -2 )
    {
        if( balanceFactor(node->left) > 0  )
            node->left = rotateLeft(node->left);

        return rotateRight(node);
    }
    return node;
}

node* insert(node * root,int val)
{
    if( !root )
    {
        node* newNode = new node{val, 0, 0, 0};
        return newNode;
    }
    if( val<root->val )
        root->left = insert(root->left,val);
    else
        root->right = insert(root->right,val);
    node* testNode = balance(root);
    return testNode;
}

int main(int argc, const char * argv[])
{
    return 0;
}


