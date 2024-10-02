# Utilizamos una imagen base de Python
FROM python:3.9-slim-buster

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el requirements.txt (si tienes dependencias)
COPY requirements.txt requirements.txt

# Instalamos las dependencias
RUN pip install -r requirements.txt

# Copiamos el código de la aplicación
COPY . .

# Exponemos el puerto 5000 del contenedor
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]