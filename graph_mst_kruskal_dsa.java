// Graph: Find the Minimum Spanning Tree using Kruskal's Algorithm
import java.util.*;

class Edge implements Comparable<Edge> {
    int src, dest, weight;
    Edge(int s, int d, int w) {
        src = s; dest = d; weight = w;
    }
    public int compareTo(Edge other) {
        return this.weight - other.weight;
    }
}

public class graph_mst_kruskal_dsa {
    int V;
    List<Edge> edges = new ArrayList<>();

    public graph_mst_kruskal_dsa(int V) {
        this.V = V;
    }

    public void addEdge(int u, int v, int w) {
        edges.add(new Edge(u, v, w));
    }

    int find(int[] parent, int i) {
        if (parent[i] != i)
            parent[i] = find(parent, parent[i]);
        return parent[i];
    }

    void union(int[] parent, int[] rank, int x, int y) {
        int xroot = find(parent, x);
        int yroot = find(parent, y);
        if (rank[xroot] < rank[yroot])
            parent[xroot] = yroot;
        else if (rank[xroot] > rank[yroot])
            parent[yroot] = xroot;
        else {
            parent[yroot] = xroot;
            rank[xroot]++;
        }
    }

    public void kruskalMST() {
        Collections.sort(edges);
        int[] parent = new int[V];
        int[] rank = new int[V];
        for (int i = 0; i < V; ++i)
            parent[i] = i;

        List<Edge> result = new ArrayList<>();
        for (Edge edge : edges) {
            int x = find(parent, edge.src);
            int y = find(parent, edge.dest);
            if (x != y) {
                result.add(edge);
                union(parent, rank, x, y);
            }
        }

        System.out.println("Edges in the Minimum Spanning Tree:");
        for (Edge e : result)
            System.out.println(e.src + " - " + e.dest + ": " + e.weight);
    }

    public static void main(String[] args) {
        graph_mst_kruskal_dsa g = new graph_mst_kruskal_dsa(4);
        g.addEdge(0, 1, 10);
        g.addEdge(0, 2, 6);
        g.addEdge(0, 3, 5);
        g.addEdge(1, 3, 15);
        g.addEdge(2, 3, 4);
        g.kruskalMST();
    }
}
