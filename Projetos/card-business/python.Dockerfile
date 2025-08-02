FROM python:3.11.13-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENV NOME="Pedrita"
ENV IDADE="22"
ENV EMAIL="pedrita@docker.com"
ENV PROFISSAO="Ator de conteúdos legais"
ENV SITE="www.pedrita.com.br"
COPY . .
CMD [ "python3", "app.py"]