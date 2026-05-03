# 🔐 Bootcamp DevSecOps — Guía de Laboratorio

## 👤 Autor
Juvenal Muñoz

---

# 🎯 Objetivo del Bootcamp

Desarrollar competencias prácticas en DevSecOps mediante la implementación de un entorno de laboratorio basado en:

- Linux (WSL)
- Docker
- Seguridad en contenedores
- Escaneo de vulnerabilidades
- Automatización (CI/CD)

---

# 🧱 Arquitectura del Entorno

## 💻 Sistema base
- Windows 10 + WSL2
- Ubuntu 24.04 LTS

## 🐳 Contenedores
- Docker Engine / Docker Desktop

## 🔐 Seguridad
- Trivy (vulnerability scanner)

## 📦 Repositorio
- GitHub

---

# 📚 MÓDULO 1 — Setup del entorno

## Objetivo
Preparar el entorno de trabajo para prácticas DevSecOps.

## Actividades realizadas
- Instalación de WSL2
- Instalación de Ubuntu
- Configuración de terminal Linux
- Instalación de Docker

## Resultado
Entorno Linux funcional sobre Windows con capacidad de ejecutar contenedores.

---

# 📚 MÓDULO 2 — Security Scanning con Trivy

## 🎯 Objetivo
Detectar vulnerabilidades en imágenes Docker.

---

## 🐳 Aplicación utilizada
OWASP Juice Shop

Imagen:
bkimminich/juice-shop

---

## 🚀 Ejecución

```bash
docker run -d -p 3000:3000 bkimminich/juice-shop
trivy image bkimminich/juice-sho
