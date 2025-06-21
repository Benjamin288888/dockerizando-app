# una imagen oficial Python
FROM python:3.10-slim

# Evita preguntas
ENV DEBIAN_FRONTEND=noninteractive

# Instala git
RUN apt-get update && apt-get install -y git && apt-get clean

# Crea y cambia al directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todo el contenido
COPY . .

# Comando para ejecutar script
CMD ["python", "app.py"]
