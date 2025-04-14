// Binary Tree: Check if a binary tree is a binary search tree (BST)
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_check_bst_dsa {
    Node root;

    boolean isBST(Node node, Integer min, Integer max) {
        if (node == null)
            return true;
        if ((min != null && node.data <= min) || (max != null && node.data >= max))
            return false;
        return isBST(node.left, min, node.data) && isBST(node.right, node.data, max);
    }

    public static void main(String[] args) {
        binary_tree_check_bst_dsa tree = new binary_tree_check_bst_dsa();
        tree.root = new Node(10);
        tree.root.left = new Node(5);
        tree.root.right = new Node(15);
        tree.root.left.left = new Node(2);
        tree.root.left.right = new Node(7);
        tree.root.right.right = new Node(20);

        System.out.println("Is BST? " + tree.isBST(tree.root, null, null));
    }
}
