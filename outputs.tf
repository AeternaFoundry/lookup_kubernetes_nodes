output "nodes_lookup_id" {
  description = "Map of id values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_nodes.nodes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nodes_lookup_metadata" {
  description = "Map of metadata values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_nodes.nodes_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "nodes_lookup_nodes" {
  description = "Map of nodes values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no nodes are omitted"
  value       = { for k, v in data.kubernetes_nodes.nodes_lookup : k => v.nodes if v.nodes != null && length(v.nodes) > 0 }
}

