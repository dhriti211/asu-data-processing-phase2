\# Data Processing at Scale — Phase 2  

\*\*Streaming Data Pipeline with Kafka, Neo4j \& Kubernetes\*\*



---



\## Overview

This project implements a \*\*distributed, streaming data pipeline\*\* using \*\*Apache Kafka\*\*, \*\*Neo4j\*\*, and \*\*Kubernetes (Minikube)\*\*.



Taxi trip data is streamed in real time via Kafka, consumed through a Kafka–Neo4j connector, and persisted into a Neo4j graph database where graph analytics can be performed.



The system is fully containerized and orchestrated using Kubernetes, demonstrating end-to-end data ingestion, processing, and storage in a cloud-native environment.



---



\## 🎯 Project Objectives

\- Design a \*\*real-time streaming pipeline\*\* using Kafka

\- Deploy and manage services using \*\*Kubernetes\*\*

\- Integrate Kafka with \*\*Neo4j Graph Database\*\*

\- Process and store streaming data as a \*\*graph\*\*

\- Execute graph analytics (PageRank, BFS) on ingested data

\- Build a \*\*reproducible distributed system\*\* suitable for large-scale data processing



---



\## 🧠 What This Project Does

\- Streams NYC Taxi trip records using a Kafka producer

\- Uses \*\*Zookeeper + Kafka\*\* deployed on Kubernetes

\- Consumes data via a \*\*Kafka–Neo4j Connector\*\*

\- Stores trips as relationships between location nodes in Neo4j

\- Enables graph algorithms such as:

&nbsp; - \*\*PageRank\*\* (identify influential locations)

&nbsp; - \*\*Breadth-First Search\*\* (graph traversal and reachability)

\- Validates the entire pipeline using an automated test harness



---



\## 🛠️ Tech Stack

\- \*\*Streaming:\*\* Apache Kafka

\- \*\*Coordination:\*\* Zookeeper

\- \*\*Graph Database:\*\* Neo4j

\- \*\*Graph Analytics:\*\* Neo4j Graph Data Science (GDS)

\- \*\*Orchestration:\*\* Kubernetes (Minikube)

\- \*\*Language:\*\* Python

\- \*\*Connector:\*\* Kafka–Neo4j Sink Connector

\- \*\*Testing:\*\* Python-based automated tester



---



\## 🧩 System Architecture

```text

Kafka Producer (Python)

&nbsp;       |

&nbsp;       v

Kafka Topic

&nbsp;       |

&nbsp;       v

Kafka–Neo4j Connector

&nbsp;       |

&nbsp;       v

Neo4j Graph Database

&nbsp;       |

&nbsp;       v

Graph Algorithms (PageRank, BFS)



How to Run (High-Level)



1. Start Minikube and deploy Zookeeper and Kafka
   
2. Deploy Neo4j using Helm values
   
3. Configure Kafka–Neo4j connector
   
4. Run the Kafka producer to stream data
   
5. Validate ingestion and graph analytics using the tester



Detailed deployment steps and YAML configurations are included in this repository.

