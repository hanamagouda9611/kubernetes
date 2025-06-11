
# 📦 Kubernetes YAML Manifests

This repository contains a collection of Kubernetes manifests and utility scripts to deploy, configure, and manage applications and infrastructure components in a Kubernetes cluster.

---

## 📂 Files Overview

| File Name                | Description |
|--------------------------|-------------|
| `cache_test.yaml`        | Defines resources for testing cache behavior or components. |
| `config.yaml`            | Contains ConfigMap definitions for injecting environment configs into pods. |
| `deployment.yaml`        | Standard Deployment resource defining pods and replicas for your app. |
| `external.yaml`          | Likely configures access to external services or endpoints (e.g., ExternalName service). |
| `hpa.yaml`               | Horizontal Pod Autoscaler to automatically scale deployments based on CPU/memory usage. |
| `ingress.yaml`           | Ingress rules to expose your services over HTTP/HTTPS with optional path-based routing. |
| `kubectl-port-forward.sh`| A shell script to quickly forward ports for local access to services/pods. |
| `nginx.yaml`             | NGINX-specific configuration (may be a deployment, config, or ingress controller). |
| `pv.yaml`                | PersistentVolume resource for managing underlying storage in the cluster. |
| `pvc.yaml`               | PersistentVolumeClaim to request storage from a PV. |
| `resource.yaml`          | Defines CPU/memory resource requests and limits for containers. |
| `service.yaml`           | Kubernetes Service definition to expose a deployment internally or externally. |

---

## 🚀 Usage

### 1. Apply All Resources

```bash
kubectl apply -f .


---

## 🚀 Quick Start

### 1. Clone the Repo

```bash
git clone https://github.com/hanamagouda9611/kubernetes.git
