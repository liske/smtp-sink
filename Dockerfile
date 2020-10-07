FROM python:alpine3.12

RUN pip install aiosmtpd

EXPOSE 8025

ENTRYPOINT ["python3", "-m", "aiosmtpd"]
CMD ["-s", "1", "-l", "0.0.0.0", "-c", "aiosmtpd.handlers.Sink"]
