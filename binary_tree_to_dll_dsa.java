// Binary Tree: Convert a binary tree to a doubly linked list
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_to_dll_dsa {
    Node root;
    Node head;
    Node prev = null;

    void bToDLL(Node root) {
        if (root == null)
            return;
        bToDLL(root.left);
        if (prev == null)
            head = root;
        else {
            root.left = prev;
            prev.right = root;
        }
        prev = root;
        bToDLL(root.right);
    }

    void printList(Node node) {
        while (node != null) {
            System.out.print(node.data + " ");
            node = node.right;
        }
    }

    public static void main(String[] args) {
        binary_tree_to_dll_dsa tree = new binary_tree_to_dll_dsa();
        tree.root = new Node(10);
        tree.root.left = new Node(12);
        tree.root.right = new Node(15);
        tree.root.left.left = new Node(25);
        tree.root.left.right = new Node(30);
        tree.root.right.left = new Node(36);

        tree.bToDLL(tree.root);
        tree.printList(tree.head);
    }
}
