# utility-scripts
A place to save some of my handy scripts.  Things I tend to use often for development or other tasks.

## Java SSL Cert Import
Installs an SSL certificate into the specified cacerts file.

Usage:
```bash
install-java-cert.sh <domain> <cacerts_file>
```

If you're feeling dangerous, just curl the shell script and pipe it to bash:
```bash
curl "https://raw.githubusercontent.com/rtfarte/utility-scripts/master/install-java-cert.sh" | bash -s -- "domain" cacerts
```
