variable "database_allowed_ips" {
  description = "List of IP CIDRs that are allowed to connect to the instance"
  type        = list(string)
  default     = []
}

variable "database_engine" {
  description = "Database engine type"
  type        = string
  default     = "PostgreSQL-15"
}

variable "database_highly_available" {
  description = "If the database instance is highly available (boolean)"
  type        = bool
  default     = true
}

variable "database_storage_size_gb" {
  description = "Local storage to provision for the database (GB)"
  type        = string
  default     = "10"
}

variable "database_max_connections" {
  description = "Scaleway RDB max_connections. Omit (null) to leave the engine default."
  type        = string
  default     = null
  nullable    = true
}

# Optional advanced PostgreSQL settings (Scaleway RDB). Omit (null) to leave the engine default.
# For timeouts, Scaleway expects milliseconds as a string integer (e.g. 600000 for 10m), not interval strings like 10m.
variable "database_statement_timeout" {
  description = "Postgres statement_timeout. Scaleway: string integer, milliseconds (e.g. 600000 = 10m)."
  type        = string
  default     = null
  nullable    = true
}

variable "database_idle_in_transaction_session_timeout" {
  description = "Postgres idle_in_transaction_session_timeout. Scaleway: string integer, milliseconds (e.g. 300000 = 5m)."
  type        = string
  default     = null
  nullable    = true
}

variable "database_name" {
  description = "Name of the database instance to create"
  type        = string
}

variable "database_node_type" {
  description = "Type of node to use for the database instance"
  type        = string
  default     = "DB-PLAY2-PICO"
}

variable "private_network_id" {
  description = "ID of the private network in which to place the database"
  type        = string
}

variable "volume_type" {
  description = "Volume type to use for the database instance"
  type        = string
  default     = "sbs_15k"
}