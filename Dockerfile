FROM python:3.8

WORKDIR /usr/src/app/

COPY . /usr/src/app/

RUN pip install --user aiogram

EXPOSE 8778
CMD ["python", "bot.py"]
