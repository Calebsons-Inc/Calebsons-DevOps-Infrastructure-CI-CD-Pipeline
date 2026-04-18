# Calebsons DevOps Infrastructure — CI/CD Pipeline

## Overview

A production-ready CI/CD pipeline using GitHub Actions, Docker, and Terraform.

## Tech Stack

- GitHub Actions
- Docker
- Terraform
- Bash

## Features

- Automated builds
- Multi-stage Docker builds
- Infrastructure as Code
- Test automation

## Architecture

```mermaid
flowchart TD
    DEV[Developer Push / PR] --> CI[GitHub Actions]
    CI --> DOCKER[Docker Build]
    CI --> TESTS[Run Tests]
    CI --> TF[Terraform Plan/Apply]
    TF --> CLOUD[Cloud Infrastructure]
```

## Setup

- Configure secrets in GitHub
- Run Terraform init/apply

## Deployment

- GitHub Actions

## Roadmap

- Add canary deployments
- Add security scanning
