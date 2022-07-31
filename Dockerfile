From python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/Cillian1225/pinterestclone.git

RUN echo "testing"

COPY requirements.txt /home/pinterestclone/requirements.txt

WORKDIR /home/pinterestclone/

RUN echo "testing"

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-!g+tk@4dyp=cq5#tksdp_+^bp&t6+3#hi_qf(=g=(+heuk6pvm" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

