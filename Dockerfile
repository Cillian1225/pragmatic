From python:3.9.0

WORKDIR /home/

RUN git clone http://github.com/Cillian1225/pinterestclone.git

RUN echo "testing"

WORKDIR /home/pinterestclone/

RUN pip install -r /home/pinterestclone/requirements.txt


RUN echo "SECRET_KEY=django-insecure-!g+tk@4dyp=cq5#tksdp_+^bp&t6+3#hi_qf(=g=(+heuk6pvm" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

