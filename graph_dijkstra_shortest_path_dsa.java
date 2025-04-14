// Graph: Find the shortest path between two nodes in a weighted graph using Dijkstra's Algorithm
import java.util.*;

public class graph_dijkstra_shortest_path_dsa {
    private int V;
    private List<List<Node>> adj;

    static class Node implements Comparable<Node> {
        int vertex, weight;
        Node(int v, int w) {
            vertex = v;
            weight = w;
        }
        public int compareTo(Node other) {
            return this.weight - other.weight;
        }
    }

    public graph_dijkstra_shortest_path_dsa(int V) {
        this.V = V;
        adj = new ArrayList<>();
        for (int i = 0; i < V; i++)
            adj.add(new ArrayList<>());
    }

    public void addEdge(int u, int v, int w) {
        adj.get(u).add(new Node(v, w));
        adj.get(v).add(new Node(u, w)); // For undirected graph
    }

    public void dijkstra(int src) {
        int[] dist = new int[V];
        Arrays.fill(dist, Integer.MAX_VALUE);
        dist[src] = 0;

        PriorityQueue<Node> pq = new PriorityQueue<>();
        pq.add(new Node(src, 0));

        while (!pq.isEmpty()) {
            Node current = pq.poll();
            int u = current.vertex;

            for (Node neighbor : adj.get(u)) {
                int v = neighbor.vertex;
                int weight = neighbor.weight;

                if (dist[u] + weight < dist[v]) {
                    dist[v] = dist[u] + weight;
                    pq.add(new Node(v, dist[v]));
                }
            }
        }

        // Print the shortest distances
        System.out.println("Vertex\tDistance from Source");
        for (int i = 0; i < V; i++)
            System.out.println(i + "\t\t" + dist[i]);
    }

    public static void main(String[] args) {
        graph_dijkstra_shortest_path_dsa g = new graph_dijkstra_shortest_path_dsa(5);
        g.addEdge(0, 1, 10);
        g.addEdge(0, 4, 5);
        g.addEdge(1, 2, 1);
        g.addEdge(1, 4, 2);
        g.addEdge(2, 3, 4);
        g.addEdge(3, 0, 7);
        g.addEdge(3, 2, 6);
        g.addEdge(4, 1, 3);
        g.addEdge(4, 2, 9);
        g.addEdge(4, 3, 2);

        g.dijkstra(0);
    }
}
