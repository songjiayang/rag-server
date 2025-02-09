# rag-server

RAG server build in Go and ollama.

## Why use golang to build rag server? 

1. [Ollama](https://ollama.com/) is popular in local LLM Apps.
2. Many vector databases are developed in Go, [weaviate](https://weaviate.io) etc.
3. There are good tools for building LLM applications, [eino](https://github.com/cloudwego/eino) [LangChanGo](https://github.com/tmc/langchaingo), [lingoose](https://github.com/henomis/lingoose) etc.

More information you can reference this blog [Building LLM-powered applications in Go](https://go.dev/blog/llmpowered).

## How to start


Step1: build rag-server image

```
make build
```

Step2: run all containers

```
make start
```

Step3: pull llama3.2 if first time

```
docker exec  rag-server-ollama-1 ollama pull llama3.2
```

## Usage

Add documents:

```
curl -X POST -H 'content-type:application/json' http://localhost:8080/add/  -d '{"documents": [{"text": "萌兰是一个阳光开朗大男孩，他来自四川成都。"}]}'
```

Query question:

```
curl -X POST -H 'content-type:application/json' http://localhost:8080/query/  -d '{"content": "萌兰是一个阳光开朗大男孩吗？请用中文回答"}'
```

If anything is ok, the output is similar to:

```
是的，萌兰是一个阳光开朗大男孩，他来自四川成都。
```

## Thanks

The code is a lot of references [ragserver-langchaingo](https://github.com/golang/example/tree/master/ragserver/ragserver-langchaingo).

