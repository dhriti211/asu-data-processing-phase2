# Data Processing at Scale — Phase 2  
**Streaming Data Pipeline with Kafka, Neo4j & Kubernetes**

---

## Overview
This project implements a **distributed, streaming data pipeline** using **Apache Kafka**, **Neo4j**, and **Kubernetes (Minikube)**.

NYC Taxi trip data is streamed in real time via Kafka, consumed through a Kafka–Neo4j connector, and persisted into a Neo4j graph database where graph analytics can be performed. The system is containerized and orchestrated with Kubernetes, demonstrating end-to-end ingestion, processing, and storage in a cloud-native environment.

---

## 🎯 Project Objectives
- Build a **real-time streaming pipeline** using Kafka.
- Deploy and manage services on **Kubernetes (Minikube)**.
- Integrate Kafka with a **Neo4j graph database**.
- Store streaming data as a **graph** for downstream analysis.
- Enable **graph algorithms** (PageRank, BFS) on ingested data.
- Create a **reproducible distributed system** that mirrors production data workflows.

---

## 🧠 What This Project Does
- Streams NYC Taxi trip records using a **Python Kafka producer**.
- Runs **Zookeeper** and **Kafka** as Kubernetes workloads.
- Uses a **Kafka–Neo4j sink connector** to push data into Neo4j.
- Stores trips as relationships between location nodes in a graph model.
- Supports graph algorithms such as:
  - **PageRank** – to identify influential locations.
  - **Breadth-First Search (BFS)** – to explore reachability and paths.
- Uses a **tester script** to validate the end-to-end pipeline.

---

## 🛠️ Tech Stack
- **Streaming:** Apache Kafka  
- **Coordination:** Zookeeper  
- **Graph Database:** Neo4j  
- **Graph Analytics:** Neo4j Graph Data Science (GDS)  
- **Orchestration:** Kubernetes (Minikube)  
- **Language:** Python  
- **Connector:** Kafka–Neo4j Sink Connector  
- **Testing:** Python-based automated tester  

---

## 🧩 System Architecture (High-Level)
A Python Kafka producer streams taxi trip data into a Kafka topic running on Kubernetes. A Kafka–Neo4j connector subscribes to that topic and writes each message into Neo4j as graph data (locations and trips). Once data lands in Neo4j, graph algorithms like PageRank and BFS can be executed over the constructed graph.

---

## ▶️ How to Run (High-Level)
1. Start Minikube and ensure your Kubernetes context points to it.
2. Deploy Zookeeper and Kafka:
   - Apply `zookeeper-setup.yaml`.
   - Apply `kafka-setup.yaml`.
3. Deploy Neo4j:
   - Use `neo4j-values.yaml` and `neo4j-service.yaml` with Helm or `kubectl` to deploy Neo4j and expose its service.
4. Configure Kafka–Neo4j Connector:
   - Apply `kafka-neo4j-connector.yaml` or use `step3-connector-setup.sh` to configure the sink connector that consumes from Kafka and writes to Neo4j.
5. Run the data producer:
   - Execute `data_producer.py` to stream taxi trip messages into Kafka.
6. Validate the pipeline:
   - Run `tester.py` to verify streaming, ingestion, and graph operations.

> Exact commands depend on your local Minikube/Kubernetes setup and connector deployment. This repository includes the YAML and script files used to orchestrate the pipeline.

---
