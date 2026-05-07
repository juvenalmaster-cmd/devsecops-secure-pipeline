
# 🔐 Módulo 5 — Integración de Bandit en CI/CD

## 🎯 Objetivo

Integrar análisis SAST automatizado utilizando Bandit dentro del pipeline DevSecOps basado en GitHub Actions.

---

## 🧱 Componentes integrados

- GitHub Actions
- Bandit
- Trivy
- Docker
- Artifact Reports

---

## 🔍 Flujo del pipeline

1. Checkout del repositorio
2. Configuración de Python
3. Instalación de Bandit
4. Escaneo SAST sobre `app/`
5. Generación de artifact `bandit-report.txt`
6. Build de imagen Docker
7. Escaneo Trivy sobre contenedor
8. Policy de seguridad HIGH/CRITICAL

---

## 📊 Resultado

El pipeline detectó vulnerabilidades HIGH en dependencias Debian y Python.

La política configurada con:

```bash
trivy image --severity HIGH,CRITICAL --exit-code 1 devsecops-app