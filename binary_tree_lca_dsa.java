// Binary Tree: Find the lowest common ancestor of two nodes in a binary tree
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_lca_dsa {
    Node root;

    Node findLCA(Node node, int n1, int n2) {
        if (node == null)
            return null;
        if (node.data == n1 || node.data == n2)
            return node;
        Node leftLCA = findLCA(node.left, n1, n2);
        Node rightLCA = findLCA(node.right, n1, n2);
        if (leftLCA != null && rightLCA != null)
            return node;
        return (leftLCA != null) ? leftLCA : rightLCA;
    }

    public static void main(String[] args) {
        binary_tree_lca_dsa tree = new binary_tree_lca_dsa();
        tree.root = new Node(3);
        tree.root.left = new Node(5);
        tree.root.right = new Node(1);
        tree.root.left.left = new Node(6);
        tree.root.left.right = new Node(2);
        tree.root.right.left = new Node(0);
        tree.root.right.right = new Node(8);

        Node lca = tree.findLCA(tree.root, 6, 2);
        System.out.println("LCA of 6 and 2 is: " + lca.data);
    }
}
