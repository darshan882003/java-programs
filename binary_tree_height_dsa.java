// Binary Tree: Find the height of a binary tree
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_height_dsa {
    Node root;

    int height(Node node) {
        if (node == null)
            return 0;
        int leftHeight = height(node.left);
        int rightHeight = height(node.right);
        return Math.max(leftHeight, rightHeight) + 1;
    }

    public static void main(String[] args) {
        binary_tree_height_dsa tree = new binary_tree_height_dsa();
        tree.root = new Node(1);
        tree.root.left = new Node(2);
        tree.root.right = new Node(3);
        tree.root.left.left = new Node(4);

        System.out.println("Height of tree: " + tree.height(tree.root));
    }
}
