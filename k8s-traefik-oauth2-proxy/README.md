# Kubernetes OAuth2-Proxy Traefik Example

This was built on a k3d (k3s) cluster that came with Traefik

Example Components:

- An `echo` server that reflects the HTTP request back
- OAuth2-proxy configured for Google provider
- Middlewares
  - `oauth2-auth` provides ForwardAuth to check for 202 at `/oauth2/auth`
  - If the above gives 401, `oauth2-error` is triggered and routes to `/oauth2`. Clicking "sign in" routes to `/oauth2` ingress
- Ingress definitions
    - / prefix to `echo` service linked with `auth` and `error` middlewares
    - /oauth prefix to handle sign in and sign out
