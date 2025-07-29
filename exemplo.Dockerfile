FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install python3.11 python3.11-dev python3.11-pip -y
WORKDIR /app
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENV NOME="Pedrita"
ENV IDADE="22"
ENV EMAIL="pedrita@docker.com"
ENV PROFISSAO="Ator de conteúdos legais"
ENV SITE="www.pedrita.com.br"
CMD [ "python3", "app.py"]