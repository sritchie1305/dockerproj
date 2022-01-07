FROM python:3.7.3-stretch

#working directory
WORKDIR /app

#copy source code to working directory
COPY . app.py /app/

#install packages from requirments.txt
#hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt