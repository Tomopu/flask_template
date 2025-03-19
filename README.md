# Flask Template

This repository serves as a development environment template for a Flask application.

## 🚀 Setup
Download this repository using the link below:

⬇️ [Download This Template](https://github.com/Tomopu/flask_template/archive/refs/heads/main.zip)

Extract the downloaded ZIP file and navigate to the extracted folder.

Create a `.env` file and set your Ngrok token by referring to the `.env.sample` file.


## 🛠 Development

Set up the development environment using `venv`:

```bash
python -m venv .venv
```

Activate the virtual environment:

```bash
source .venv/bin/activate
```

Install dependencies with Poetry:

```bash
poetry install
```

To exit the virtual environment, use the following command:

```bash
deactivate
```


## 📌 Usage

To launch the system, run the following command:

```bash
docker-compose -f compose.prod.yaml -f compose.yaml up -d
```

Once the system is running, you can access Ngrok's URL by opening `localhost:4040` in your web browser.

Alternatively, you can start the Flask application directly with:
```bash
python flask-app/app.py
```
When running the Flask application directly, open `localhost:5001` in your web browser to access the system.


### 🎯 Notes
- Ensure you have Docker and Docker Compose installed before running the application.
- Modify the `.env` file with your required environment variables before starting the system.
- This template is designed for rapid Flask development and can be customized as needed.
- If you change the `flask-app` directory name, update the following references accordingly:
  - `Dockerfile`
    ```dockerfile
    COPY ./flask-app /src/flask-app/
    ```
    ```dockerfile
    WORKDIR /src/flask-app
    ```
  - `pyproject.toml`
    ```toml
    [tool.poetry]
    name = "flask-app"
    ```
    ```toml
    [[tool.poetry.packages]]
    include = "flask-app"
    ```

## 📂 Project Structure
```bash
.
├── .env.sample
├── Dockerfile
├── README.md
├── compose.prod.yaml
├── compose.yaml
├── flask-app
│   ├── __init__.py
│   ├── app.py
│   ├── static
│   │   ├── favicon.ico
│   │   ├── images
│   │   │   └── sample-image.png
│   │   └── styles
│   │       ├── index.css
│   │       └── layout.css
│   └── templates
│       ├── index.html
│       └── layout.html
├── ngrok.yml
├── poetry.lock
└── pyproject.toml

6 directories, 16 files
```
