FROM python:3.6-alpine

COPY . .

RUN pip3 install -r requirements.txt

ENV ADMIN_NAMES ''
ENV ALLOWED_HOSTS '127.0.0.1, localhost'
ENV DATABASE_HOST '127.0.0.1'
ENV DATABASE_NAME "gutenberg"
ENV DATABASE_PASSWORD "123"
ENV DATABASE_PORT "5432"
ENV DATABASE_USER 'gutenberg'
ENV STATIC_ROOT ''

RUN chmod +x start_service.sh

ENTRYPOINT [ "./start_service.sh" ]