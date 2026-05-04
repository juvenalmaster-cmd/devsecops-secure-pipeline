# 🔐 Módulo 2 — Security Scan con Trivy (Manual)

---

## 🎯 Objetivo
Detectar vulnerabilidades en una imagen Docker utilizando Trivy de forma manual, como paso previo a la automatización en CI/CD.

---

## 🧭 Contexto
Este módulo representa la fase inicial del análisis de seguridad, donde el escaneo se ejecuta manualmente desde el entorno local.

---

## 🐳 Imagen analizada
bkimminich/juice-shop

---

## 🚀 Comando utilizado

```bash
trivy image --severity HIGH,CRITICAL bkimminich/juice-shop


