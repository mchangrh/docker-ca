Roughly based off of a blog post by [jameshfisher](https://github.com/jameshfisher/jameshfisher.com/blob/master/_posts/2018-03-16-how-to-create-an-ssh-certificate-authority.md)

# config folder structure

```
/certs
  ssh/
    ca
    ca.pub
    hostkeys/
      hostname.pub
      hostname-cert.pub
    clients/
      identifier.pub
      identifier-cert.pub
```