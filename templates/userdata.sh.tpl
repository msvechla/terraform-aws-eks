#!/bin/bash -xe

# Allow user supplied pre userdata code
${pre_userdata}

# Bootstrap and join the cluster
/etc/eks/bootstrap.sh --b64-cluster-ca '${cluster_auth_base64}' --enable-docker-bridge '${enable_docker_bridge}' --apiserver-endpoint '${endpoint}' --kubelet-extra-args '${kubelet_extra_args}' '${cluster_name}'

# Allow user supplied userdata code
${additional_userdata}
