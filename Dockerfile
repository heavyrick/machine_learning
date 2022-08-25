# set base image (host OS)
FROM python:3.9

# Diretório do projeto
WORKDIR /usr/src/app

# Instalar as dependências do sistema
RUN apt-get update && apt-get install -y netcat

# Atualizar o pip
RUN python -m  pip install --upgrade pip

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# copiar o arquivo de dependências
COPY requirements.txt /usr/src/app/requirements.txt
RUN python -m pip install --no-cache-dir -r requirements.txt

# Copiar projeto
COPY . /usr/src/app/

# Rodar servidor
EXPOSE 6001
CMD ["python", "./app.py" ]