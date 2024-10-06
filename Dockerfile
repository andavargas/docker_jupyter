FROM python:3.12.7-bullseye

COPY ./requirements.txt .
RUN pip install -r requirements.txt 

# don't use root when actually working in workdir
RUN useradd -m -r user
USER user

CMD jupyter lab --ip=0.0.0.0 --port 8888 --notebook-dir=workdir
