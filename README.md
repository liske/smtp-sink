# SMTP Sink

This is a small smtp sink based on [aiosmtpd](https://github.com/aio-libs/aiosmtpd). It accepts any mail, although it rejects messages larger than a single byte. This is enough for broken smtp servers requiring sender verification.

## Usage

```
version: '3'
services:
  sink:
    image: liske/smtp-sink
    read_only: true
    ports:
      - 25:8025
```
