# 1. Choix de l'image de base
FROM python:3.10

# 2. Création du dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier tous les fichiers de ton projet local vers le conteneur
COPY . /app

# 4. Installer les dépendances Python listées dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Ouvrir le port 8000 pour l'application FastAPI
EXPOSE 8000

# 6. Lancer l'application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
