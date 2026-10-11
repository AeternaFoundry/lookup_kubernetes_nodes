variable "nodes_lookup" {
  description = <<EOT
Map of nodes_lookup, attributes below
Optional:
    - metadata (block):
        - labels (required)
EOT

  type = map(object({
    metadata = optional(object({
      labels = map(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

