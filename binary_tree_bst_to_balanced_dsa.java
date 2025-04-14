// Binary Tree: Convert a BST to a balanced binary tree
import java.util.*;

class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_bst_to_balanced_dsa {
    Node root;

    // Function to store nodes of BST in sorted order
    void storeInorder(Node node, List<Integer> nodes) {
        if (node == null)
            return;
        storeInorder(node.left, nodes);
        nodes.add(node.data);
        storeInorder(node.right, nodes);
    }

    // Function to build balanced BST from sorted list
    Node buildBalancedBST(List<Integer> nodes, int start, int end) {
        if (start > end)
            return null;
        int mid = (start + end) / 2;
        Node node = new Node(nodes.get(mid));
        node.left = buildBalancedBST(nodes, start, mid - 1);
        node.right = buildBalancedBST(nodes, mid + 1, end);
        return node;
    }

    // Function to convert unbalanced BST to balanced BST
    Node balanceBST(Node root) {
        List<Integer> nodes = new ArrayList<>();
        storeInorder(root, nodes);
        return buildBalancedBST(nodes, 0, nodes.size() - 1);
    }

    // Function to print inorder traversal of the tree
    void printInorder(Node node) {
        if (node == null)
            return;
        printInorder(node.left);
        System.out.print(node.data + " ");
        printInorder(node.right);
    }

    public static void main(String[] args) {
        binary_tree_bst_to_balanced_dsa tree = new binary_tree_bst_to_balanced_dsa();
        /*
        Constructing an unbalanced BST:
                10
               /
              8
             /
            7
           /
          6
         /
        5
        */
        tree.root = new Node(10);
        tree.root.left = new Node(8);
        tree.root.left.left = new Node(7);
        tree.root.left.left.left = new Node(6);
        tree.root.left.left.left.left = new Node(5);

        System.out.println("Inorder traversal of original unbalanced BST:");
        tree.printInorder(tree.root);
        System.out.println();

        tree.root = tree.balanceBST(tree.root);

        System.out.println("Inorder traversal of balanced BST:");
        tree.printInorder(tree.root);
        System.out.println();
    }
}
