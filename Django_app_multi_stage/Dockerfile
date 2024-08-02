FROM python:3.10-alpine as base
WORKDIR /app

COPY Django /app
COPY requirements.txt /app
ENV PIP_BREAK_SYSTEM_PACKAGES 1
#RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install -r requirements.txt

#mult-stage


FROM gcr.io/distroless/python3
WORKDIR /app

COPY --from=base /app /app
COPY --from=base /usr/local/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
COPY --from=base /usr/local/bin/ /usr/local/bin/

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
