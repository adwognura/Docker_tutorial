FROM ubuntu

WORKDIR /app
COPY add.py /app

RUN apt-get update && \
	apt-get install python3 -y

ENTRYPOINT ["python3"]
CMD ["add.py"]

