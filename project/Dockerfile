FROM ubuntu:16.04


WORKDIR /app
COPY . .

RUN apt-get update
RUN apt install python3-pip -y && pip3 install --upgrade pip==20.3.3 
RUN apt install postgresql postgresql-server-dev-9.5 -y 

RUN pip install -r requirements.txt
#
ENV ADMIN_NAMES 'Fadi'
ENV ALLOWED_HOSTS '127.0.0.1, localhost, 0.0.0.0, db'
ENV DATABASE_HOST 'postgres'
ENV DATABASE_NAME "gutenberg"
ENV DATABASE_PASSWORD "123"
ENV DATABASE_PORT "5432"
ENV DATABASE_USER 'gutenberg'
ENV STATIC_ROOT 'static'
ENV SECRET_KEY "gutindexkey"
ENV MEDIA_ROOT ''
ENV EMAIL_HOST ''
ENV EMAIL_HOST_ADDRESS ''
ENV EMAIL_HOST_USER ''
ENV EMAIL_HOST_PASSWORD ''
ENV MANAGER_EMAILS ''
ENV MANAGER_NAMES ''

VOLUME [ "/static" ]
RUN ls -latr 


#
RUN chmod +x start_service..sh
#
ENTRYPOINT [ "./start_service..sh" ]
#COPY ${STATIC_ROOT} /static