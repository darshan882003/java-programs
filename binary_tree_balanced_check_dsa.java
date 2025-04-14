// Binary Tree: Check if a binary tree is balanced
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_balanced_check_dsa {
    Node root;

    boolean isBalanced(Node node) {
        return checkHeight(node) != -1;
    }

    int checkHeight(Node node) {
        if (node == null)
            return 0;
        int leftHeight = checkHeight(node.left);
        if (leftHeight == -1)
            return -1;
        int rightHeight = checkHeight(node.right);
        if (rightHeight == -1)
            return -1;
        if (Math.abs(leftHeight - rightHeight) > 1)
            return -1;
        return Math.max(leftHeight, rightHeight) + 1;
    }

    public static void main(String[] args) {
        binary_tree_balanced_check_dsa tree = new binary_tree_balanced_check_dsa();
        tree.root = new Node(1);
        tree.root.left = new Node(2);
        tree.root.left.left = new Node(3);

        System.out.println("Is tree balanced? " + tree.isBalanced(tree.root));
    }
}
