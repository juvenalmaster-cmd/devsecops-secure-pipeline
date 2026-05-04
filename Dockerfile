# Imagen base ligera
FROM python:3.10-slim

# Evitar archivos .pyc y buffer de logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Directorio de trabajo
WORKDIR /app

# Copiar app
COPY app/ /app

# Instalar dependencias
RUN pip install --no-cache-dir flask

# Exponer puerto
EXPOSE 5000

# Comando de inicio
CMD ["python", "app.py"]
