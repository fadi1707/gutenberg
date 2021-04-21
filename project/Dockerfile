FROM ubuntu:16.04


WORKDIR /app
COPY . .

RUN apt-get update
RUN apt install python3-pip -y && pip3 install --upgrade pip==20.3.3 
RUN apt install postgresql postgresql-server-dev-9.5 -y 
RUN apt install rsync

RUN pip install -r requirements.txt
#
VOLUME [ "/st" ]
ENV ADMIN_NAMES 'Fadi'
ENV ALLOWED_HOSTS 'localhost,gutenberg,nginx,0.0.0.0,nginx'
ENV DATABASE_HOST 'postgres'
ENV DATABASE_NAME "gutenberg"
ENV DATABASE_PASSWORD "123"
ENV DATABASE_PORT "5432"
ENV DATABASE_USER 'postgres'
ENV STATIC_ROOT '/st'
ENV SECRET_KEY "gutindexkey"
ENV MEDIA_ROOT ''
ENV EMAIL_HOST ''
ENV EMAIL_HOST_ADDRESS ''
ENV EMAIL_HOST_USER ''
ENV EMAIL_HOST_PASSWORD ''
ENV MANAGER_EMAILS ''
ENV MANAGER_NAMES ''


RUN ls -latr 

EXPOSE 8000
#
RUN chmod +x start_service..sh
#
ENTRYPOINT [ "./start_service..sh" ]
COPY books ${STATIC_ROOT}
COPY catalog_files ${STATIC_ROOT}
#COPY ${STATIC_ROOT} /st
RUN ls -latr ${STATIC_ROOT}