// Graph: Find Strongly Connected Components using Kosaraju's Algorithm
import java.util.*;

public class graph_strongly_connected_components_dsa {
    private int V;
    private List<List<Integer>> adj;

    public graph_strongly_connected_components_dsa(int V) {
        this.V = V;
        adj = new ArrayList<>();
        for (int i = 0; i < V; i++)
            adj.add(new ArrayList<>());
    }

    public void addEdge(int u, int v) {
        adj.get(u).add(v);
    }

    private void DFSUtil(int v, boolean[] visited, List<Integer> component) {
        visited[v] = true;
        component.add(v);
        for (int n : adj.get(v))
            if (!visited[n])
                DFSUtil(n, visited, component);
    }

    private graph_strongly_connected_components_dsa getTranspose() {
        graph_strongly_connected_components_dsa g = new graph_strongly_connected_components_dsa(V);
        for (int v = 0; v < V; v++)
            for (int n : adj.get(v))
                g.adj.get(n).add(v);
        return g;
    }

    private void fillOrder(int v, boolean[] visited, Stack<Integer> stack) {
        visited[v] = true;
        for (int n : adj.get(v))
            if (!visited[n])
                fillOrder(n, visited, stack);
        stack.push(v);
    }

    public void printSCCs() {
        Stack<Integer> stack = new Stack<>();
        boolean[] visited = new boolean[V];
        for (int i = 0; i < V; i++)
            if (!visited[i])
                fillOrder(i, visited, stack);

        graph_strongly_connected_components_dsa gr = getTranspose();
        Arrays.fill(visited, false);

        System.out.println("Strongly Connected Components:");
        while (!stack.isEmpty()) {
            int v = stack.pop();
            if (!visited[v]) {
                List<Integer> component = new ArrayList<>();
                gr.DFSUtil(v, visited, component);
                System.out.println(component);
            }
        }
    }

    public static void main(String[] args) {
        graph_strongly_connected_components_dsa g = new graph_strongly_connected_components_dsa(5);
        g.addEdge(1, 0);
        g.addEdge(0, 2);
        g.addEdge(2, 1);
        g.addEdge(0, 3);
        g.addEdge(3, 4);

        g.printSCCs();
    }
}
