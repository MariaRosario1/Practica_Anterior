# Usar imagen base de Python
FROM python:3.11-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos de la app
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer puerto
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
