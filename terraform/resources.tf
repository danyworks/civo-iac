
data "civo_size" "large" {

    filter {
        key = "name"
        values = ["g4s.kube.large"]
        match_by = "re"
    }
}


# If you create the bucket without credentials, you can read the credentials in this way
data "civo_object_store_credential" "bucketstore" {
    id = civo_object_store.bucketstore.access_key_id
}



# data "civo_kubernetes_cluster" "main_cluster" {
#     name = var.cluster_name
# }

# output "kubernetes_cluster_output" {
#   value = data.civo_kubernetes_cluster.main_cluster.master_ip
# }