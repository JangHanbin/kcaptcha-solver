FROM python:3.7.17

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
COPY *.py ./
VOLUME ./.data .data
ENTRYPOINT ["python", "train.py", "-l", "6", "-o",".data", "-v"]


