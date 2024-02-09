# Utilisez l'image Python officielle comme base
FROM python:3.8-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY requirements.txt .
COPY app.py .
COPY templates/ templates/

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port sur lequel l'application Flask s'exécute
EXPOSE 5000

# Commande pour démarrer l'application Flask
CMD ["python", "app.py"]
