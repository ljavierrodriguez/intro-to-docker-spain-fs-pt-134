# La imagen a utilizar
FROM python:3.14-slim

# Directorio de Trabajo
WORKDIR /app

# Copiando el proyecto en el directorio de trabajo
COPY . .

# Instalando las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponemos el Puerto
EXPOSE 8000

CMD ["python", "app.py"]

