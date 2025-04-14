// Binary Tree: Implement a binary tree and perform inorder, preorder, and postorder traversals
class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_traversals_dsa {
    Node root;

    void inorder(Node node) {
        if (node == null)
            return;
        inorder(node.left);
        System.out.print(node.data + " ");
        inorder(node.right);
    }

    void preorder(Node node) {
        if (node == null)
            return;
        System.out.print(node.data + " ");
        preorder(node.left);
        preorder(node.right);
    }

    void postorder(Node node) {
        if (node == null)
            return;
        postorder(node.left);
        postorder(node.right);
        System.out.print(node.data + " ");
    }

    public static void main(String[] args) {
        binary_tree_traversals_dsa tree = new binary_tree_traversals_dsa();
        tree.root = new Node(1);
        tree.root.left = new Node(2);
        tree.root.right = new Node(3);
        tree.root.left.left = new Node(4);
        tree.root.left.right = new Node(5);

        System.out.print("Inorder traversal: ");
        tree.inorder(tree.root);
        System.out.println();

        System.out.print("Preorder traversal: ");
        tree.preorder(tree.root);
        System.out.println();

        System.out.print("Postorder traversal: ");
        tree.postorder(tree.root);
        System.out.println();
    }
}
