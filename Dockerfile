FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /

RUN apt update

COPY requirements.lock .
RUN sed '/-e/d' requirements.lock > requirements.txt
RUN pip install -r requirements.txt

COPY src/ src/

EXPOSE 8501

CMD ["streamlit", "run", "src/streamlit.py"]