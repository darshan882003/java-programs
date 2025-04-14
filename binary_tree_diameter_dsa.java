// Binary Tree: Find the diameter of a binary tree
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_diameter_dsa {
    Node root;
    int diameter = 0;

    int height(Node node) {
        if (node == null)
            return 0;
        int leftHeight = height(node.left);
        int rightHeight = height(node.right);
        diameter = Math.max(diameter, leftHeight + rightHeight);
        return Math.max(leftHeight, rightHeight) + 1;
    }

    int getDiameter(Node node) {
        height(node);
        return diameter;
    }

    public static void main(String[] args) {
        binary_tree_diameter_dsa tree = new binary_tree_diameter_dsa();
        tree.root = new Node(1);
        tree.root.left = new Node(2);
        tree.root.right = new Node(3);
        tree.root.left.left = new Node(4);
        tree.root.left.right = new Node(5);

        System.out.println("Diameter of the tree: " + tree.getDiameter(tree.root));
    }
}
