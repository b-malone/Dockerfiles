FROM python
ENV PYTHONUNBUFFERED 1

# Copy over web-app asset files to /static
ADD . django/
RUN chmod -R 777 django/
RUN mkdir -p django/static/
COPY manage.py /django/manage.py
COPY django/static/ /static
WORKDIR django/

# Setup Python env and packages
RUN pip3 install --upgrade -r requirements.txt

RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader wordnet
RUN python -m nltk.downloader averaged_perceptron_tagger
