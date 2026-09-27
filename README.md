# aws-sre-aiops-platform

> Production-grade AIOps Reliability Platform on AWS — built to demonstrate Senior SRE engineering practices.

## What This Is

A fully observable, secure, self-healing infrastructure platform hosting a RAG (Retrieval-Augmented Generation) AI application. The application is the workload; the SRE layer around it is the showcase.

## Architecture Overview

| Layer | Technology |
|---|---|
| Cloud | AWS (EKS, ECR, S3, RDS, IAM, CloudWatch) |
| Container Orchestration | Amazon EKS + Helm |
| GitOps / CD | ArgoCD |
| CI | GitHub Actions + Trivy |
| Observability | OpenTelemetry + Prometheus + Grafana + Loki + Tempo |
| SRE | SLOs, Error Budgets, Runbooks, Post-mortems |
| Chaos Engineering | Chaos Mesh |
| Security | IRSA, Secrets Manager, Network Policies, AWS Config |
| AI Workload | Amazon Bedrock (RAG pipeline) |
| IaC | Terraform (modular) |

## Project Phases

| Phase | Status |
|---|---|
| Phase 1 — Foundation Infrastructure | 🔄 In Progress |
| Phase 2 — Application Layer | ⏳ Pending |
| Phase 3 — GitOps with ArgoCD | ⏳ Pending |
| Phase 4 — Observability Stack | ⏳ Pending |
| Phase 5 — SRE Layer | ⏳ Pending |
| Phase 6 — Security Hardening | ⏳ Pending |
| Phase 7 — Chaos Engineering | ⏳ Pending |
| Phase 8 — Docs & Architecture | ⏳ Pending |

## Docs

See [`/docs`](./docs/) for architecture diagrams, ADRs, and per-phase documentation.