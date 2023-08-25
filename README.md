This is bad code

Roughly based off of a blog post by [jameshfisher](https://github.com/jameshfisher/jameshfisher.com/blob/master/_posts/2018-03-16-how-to-create-an-ssh-certificate-authority.md)

# config mounts

```
/certs/
  /ssh/
    /ca
    /ca.pub
    /hostkeys/
      hostname.pub
    /clients/
      identifier.pub
```

# scripts
## ssh hostkey certificate
hostkey.sh hostname
- `hostname` should be the FQDN and identifier
- the file should be called `hostname.pub`
- `hostname-cert.pub` will be generated

## ssh client certificate
clients.sh
clients.sh filename principals
- `filename` is the identifier and filename without extension
- `principals` users or hosts (see [man](https://man7.org/linux/man-pages/man1/ssh-keygen.1.html#CERTIFICATES))
