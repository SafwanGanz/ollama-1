FROM ubuntu:latest

RUN apt update && apt install -y curl
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN ollama serve
RUN ollama pull qwen:1.8b
EXPOSE 11434

CMD ["ollama", "serve"]
