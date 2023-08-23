FROM python:3
RUN pip3 install asgiref==3.2.7
RUN pip3 install Django==3.0.5
RUN pip3 install django-widget-tweaks==1.4.8
RUN pip3 install pytz==2020.1
RUN pip3 install sqlparse==0.3.1
RUN pip3 install pillow
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
