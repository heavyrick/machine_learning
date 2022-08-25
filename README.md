# Projeto Machine Learning com Flask

O objetivo é executar alguns projetos de machine learning e mostrar os resultados através do flask.

---

**Criação do projeto**

Localmente ele é feito com a utlização do ambiente virtual, para isolar apenas as bibliotecas que serão usadas no projeto.

```shell
$ cd /projeto
$ py -m venv env
$ .\env\Scripts\activate
$ pip install Flask
$ pip install flask-restful
$ pip install gunicorn
```

Ou, se tiver a lista de libraries no arquivo, rodar o comando:

```shell
$ pip install -r requirements.txt
```

Este projeto rodará sobre o docker, com isso, basta rodar o comando:

```shell
$ docker-compose up
```

As alterações nos arquivos dentro da pasta `app` serão sincronizadas com o docker, e refletirão nele assim que forem salvas.

O projeto rodará na url `localhost:5000`

Se for necessário acessar os arquivos dentro do docker, basta rodar o comando:

```shell
$ docker exec -it ml_python bash
```