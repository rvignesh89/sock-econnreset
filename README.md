# Ruby ECONNRESET Test

This repo contains code for a simple socket server listening on port 2200 and a
client which communicates with that server.

The purpose is to illustrate that a client receiving a `ECONNRESET` signal/error
does not guarantee that the server has processed the request.

## How to test

```bash
$ ruby server.rb
$ ruby client.rb # in another shell
```
