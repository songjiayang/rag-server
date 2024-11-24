# rag-server

RAG server build in Go and ollama.

## Why build rag server with golang? 

1. [Ollama](https://ollama.com/) is very popular in private LLM service.
2. Many vector databases are developed in Go, [weaviate](https://weaviate.io) etc.
3. There are good tools for building LLM applications, [LangChanGo](https://github.com/tmc/langchaingo), [lingoose](https://github.com/henomis/lingoose) etc.

More details you can get with blog [Building LLM-powered applications in Go](https://go.dev/blog/llmpowered).

## Usage

Add document:

```
curl -X POST -H 'content-type:application/json' http://localhost:8080/add/  -d '{"documents": [{"text": "萌兰是一个阳光开朗大男孩，他来自四川成都。"}]}'
```

Query question:

```
curl -X POST -H 'content-type:application/json' http://localhost:8080/query/  -d '{"content": "萌兰是一个阳光开朗大男孩吗？请用中文回答"}'
```