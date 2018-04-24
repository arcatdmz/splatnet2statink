FROM python:2

WORKDIR /work
COPY ./app/requirements.txt /work/
RUN cd /work && pip install --no-cache-dir -r requirements.txt

COPY ./app /work
CMD [ "python", "/work/splatnet2statink.py", "-r" ]
