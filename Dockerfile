FROM ruby:3.3

# Installer libvips
RUN apt-get update && apt-get install -y libvips-dev

# Configurer le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . .

# Installer les gems
RUN bundle install

# Commande par défaut
CMD ["jekyll", "build"]
