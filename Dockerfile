# Utilizar la imagen base de Ollama
FROM ollama/ollama

# Exponer los puertos necesarios
EXPOSE 8080
EXPOSE 443
EXPOSE 11434
EXPOSE 80

# Iniciar la aplicación ollama en segundo plano y luego instalar los modelos
RUN /bin/sh -c "ollama start & sleep 10 && \
    ollama run gemma && \
    ollama run phi3 && \
    ollama run llama3 && \
    ollama run llava"

