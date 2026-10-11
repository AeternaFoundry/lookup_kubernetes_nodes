data "kubernetes_nodes" "nodes_lookup" {
  for_each = var.nodes_lookup


  dynamic "metadata" {
    for_each = each.value.metadata != null ? [each.value.metadata] : []
    content {
      labels = metadata.value.labels
    }
  }
}

