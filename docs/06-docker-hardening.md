# 🛡️ Módulo 6 — Docker Hardening

## 🎯 Objetivo

Aplicar medidas básicas de hardening sobre contenedores Docker para reducir superficie de ataque y mejorar seguridad del entorno.

---

## 🔍 Problema identificado

El contenedor inicial ejecutaba la aplicación utilizando el usuario root.

Esto representa un riesgo porque un atacante podría obtener privilegios elevados dentro del contenedor.

---

## ✅ Medidas implementadas

### 1. Uso de imagen slim

```dockerfile
FROM python:3.10-slim
