# array-programming

Array Programming with Python

## Setup

```sh
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Export Slides

```sh
jupyter-nbconvert --to slides src/array_programming.ipynb
```

## Build Image
```sh
docker build --platform linux/amd64 --tag bonfimtm/array-programming:v0.0.1 .
```

## Run Container
```sh
docker run --platform linux/amd64 -dp 8888:8888 bonfimtm/array-programming:v0.0.1
```
