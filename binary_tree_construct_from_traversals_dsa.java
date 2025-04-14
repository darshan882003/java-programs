// Binary Tree: Construct a binary tree from inorder and preorder traversals
import java.util.*;

class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_construct_from_traversals_dsa {
    static int preIndex = 0;

    Node buildTree(int[] inorder, int[] preorder, int inStart, int inEnd, Map<Integer, Integer> inMap) {
        if (inStart > inEnd)
            return null;

        int curr = preorder[preIndex++];
        Node node = new Node(curr);

        if (inStart == inEnd)
            return node;

        int inIndex = inMap.get(curr);

        node.left = buildTree(inorder, preorder, inStart, inIndex - 1, inMap);
        node.right = buildTree(inorder, preorder, inIndex + 1, inEnd, inMap);

        return node;
    }

    void printInorder(Node node) {
        if (node == null)
            return;
        printInorder(node.left);
        System.out.print(node.data + " ");
        printInorder(node.right);
    }

    public static void main(String[] args) {
        binary_tree_construct_from_traversals_dsa tree = new binary_tree_construct_from_traversals_dsa();
        int[] inorder = {4, 2, 5, 1, 6, 3};
        int[] preorder = {1, 2, 4, 5, 3, 6};
        Map<Integer, Integer> inMap = new HashMap<>();
        for (int i = 0; i < inorder.length; i++)
            inMap.put(inorder[i], i);

        Node root = tree.buildTree(inorder, preorder, 0, inorder.length - 1, inMap);
        System.out.print("Inorder of constructed tree: ");
        tree.printInorder(root);
    }
}
