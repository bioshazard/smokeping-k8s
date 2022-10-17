# Smokeping on Kubernetes

Here is a little kustomize solution I put together to deliver smokeping on my local k3s cluster.

You may need to mess with the annotation (if you arent using Traefik) and ingress IP.

You may also need tto mess with the `pvc` if you aren't using the my same storage class name or you want more space.
