// Binary Tree: Serialize and deserialize a binary tree
import java.util.*;

class Node {
    int data;
    Node left, right;
    Node(int item) {
        data = item;
        left = right = null;
    }
}

public class binary_tree_serialize_deserialize_dsa {
    static final String NULL_SYMBOL = "#";
    static final String DELIMITER = ",";

    String serialize(Node root) {
        StringBuilder sb = new StringBuilder();
        serializeHelper(root, sb);
        return sb.toString();
    }

    void serializeHelper(Node node, StringBuilder sb) {
        if (node == null) {
            sb.append(NULL_SYMBOL).append(DELIMITER);
            return;
        }
        sb.append(node.data).append(DELIMITER);
        serializeHelper(node.left, sb);
        serializeHelper(node.right, sb);
    }

    Node deserialize(String data) {
        Queue<String> nodes = new LinkedList<>(Arrays.asList(data.split(DELIMITER)));
        return deserializeHelper(nodes);
    }

    Node deserializeHelper(Queue<String> nodes) {
        String val = nodes.poll();
        if (val.equals(NULL_SYMBOL))
            return null;
        Node node = new Node(Integer.parseInt(val));
        node.left = deserializeHelper(nodes);
        node.right = deserializeHelper(nodes);
        return node;
    }

    void inorder(Node node) {
        if (node == null)
            return;
        inorder(node.left);
        System.out.print(node.data + " ");
        inorder(node.right);
    }

    public static void main(String[] args) {
        binary_tree_serialize_deserialize_dsa tree = new binary_tree_serialize_deserialize_dsa();
        Node root = new Node(1);
        root.left = new Node(2);
        root.right = new Node(3);
        root.right.left = new Node(4);
        root.right.right = new Node(5);

        String serialized = tree.serialize(root);
        System.out.println("Serialized tree: " + serialized);

        Node deserializedRoot = tree.deserialize(serialized);
        System.out.print("Inorder of deserialized tree: ");
        tree.inorder(deserializedRoot);
    }
}
