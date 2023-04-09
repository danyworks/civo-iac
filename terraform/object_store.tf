

resource "civo_object_store" "bucketstore" {
    name = "bucketstore-server"
    max_size_gb = 500
    region = local.region_name
}
