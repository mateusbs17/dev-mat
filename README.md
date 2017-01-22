# DevOps

Time is money

## Authentication

Create your hidden files `.ssl_pass`, `.password` e `.user`

### For the .password file

Generate through the command

```
echo 'UserPassword' | openssl enc -aes-256-cbc -a -e -salt -pass pass:$SSLPASS > ~/dev-mat/auth/.password
```