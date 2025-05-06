#include <bits/stdc++.h>
using namespace std;

struct Edge
{
  int u, v, weight;
};
bool compare(Edge a, Edge b)
{
  return a.weight < b.weight;
}
vector<int> parent;

int find(int x)
{
  if (parent[x] != x)
    parent[x] = find(parent[x]);
  return parent[x];
}
int unite(int a, int b)
{
  int roota = find(a);
  int rootb = find(b);
  if (roota != rootb)
  {
    parent[rootb] = roota;
  }
}

int main()
{
  int v, e;
  cout << "Enter number of nodes and edges: ";
  cin >> v >> e;

  vector<Edge> edges;
  cout << "Enter edges(u v weight): " << endl;
  for (int i = 0; i < e; i++)
  {
    int u, v, w;
    cin >> u >> v >> w;
    edges.push_back({u, v, w});
  }

  parent.resize(v + 1);
  for (int i = 1; i <= v; i++)
  {
    parent[i] = i;
  }

  sort(edges.begin(), edges.end(), compare);

  int mstweight = 0;
  for (Edge e : edges)
  {
    if (find(e.v) != find(e.u))
    {
      unite(e.v, e.u);
      mstweight += e.weight;
      cout << e.u << " - " << e.v << " : " << e.weight << endl;
    }
  }
  cout << "Total MST weight: " << mstweight << endl;

  return 0;
}