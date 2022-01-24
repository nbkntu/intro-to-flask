FROM tensorflow/tensorflow:2.6.0-gpu

COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
