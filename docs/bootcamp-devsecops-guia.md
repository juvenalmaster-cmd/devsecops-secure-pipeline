# 🔐 Bootcamp DevSecOps — Guía de Laboratorio

## 👤 Autor
Juvenal Muñoz
# Guía de Estudio y Respaldo Técnico — Bootcamp DevSecOps

## Objetivo del documento

Este documento consolida el trabajo realizado en los repositorios:

* devsecops-linux-lab
* devsecops-secure-pipeline

El objetivo es transformar la ejecución práctica del laboratorio en aprendizaje técnico real, comprendiendo:

* qué se construyó
* por qué se construyó
* cómo funciona cada componente
* cómo se relacionan entre sí
* qué competencias DevSecOps se desarrollaron

---

# 1. VISIÓN GLOBAL DEL ENTORNO

## Arquitectura general construida

```text
Linux (WSL Ubuntu)
    ↓
Git + GitHub
    ↓
VS Code
    ↓
Python App
    ↓
Docker
    ↓
Bandit (SAST)
    ↓
Trivy (Container Security)
    ↓
GitHub Actions (CI/CD)
    ↓
Security Policy
```

---

# 2. ¿QUÉ SE APRENDIÓ REALMENTE?

Muchas veces en DevSecOps ocurre lo siguiente:

* primero se construye
* luego se entiende profundamente

Eso es normal.

El aprendizaje técnico real ocurre cuando:

1. se repite
2. se documenta
3. se explica
4. se modifica
5. se rompe
6. se corrige

Actualmente ya pasaste la fase inicial:

* configuración
* ejecución
* integración

Ahora comienza la fase importante:

* comprensión técnica profunda

---

# 3. REPOSITORIO 1 — devsecops-linux-lab

## Objetivo

Construir la base del entorno DevSecOps.

## Tecnologías trabajadas

* Linux Ubuntu (WSL)
* Git
* GitHub
* VS Code
* Docker
* Seguridad base
* Pipelines iniciales

## Competencias desarrolladas

### Linux

Aprendiste:

* navegación por terminal
* permisos
* estructura de directorios
* ejecución de comandos
* administración básica

### Git

Aprendiste:

* clone
* add
* commit
* push
* pull
* conflictos
* sincronización multi-equipo

### VS Code + WSL

Aprendiste:

* integración remota Linux
* edición profesional
* estructura modular
* terminal integrada

### Docker

Aprendiste:

* imágenes
* contenedores
* Dockerfile
* build
* ejecución
* análisis de vulnerabilidades

---

# 4. REPOSITORIO 2 — devsecops-secure-pipeline

## Objetivo

Construir un pipeline CI/CD con controles de seguridad automatizados.

---

# 5. CONCEPTOS CLAVE QUE YA IMPLEMENTASTE

## 5.1 CI/CD

### ¿Qué es?

CI/CD significa:

* Continuous Integration
* Continuous Delivery / Deployment

### ¿Qué hiciste?

Automatizaste procesos mediante GitHub Actions.

Cada vez que haces:

```bash
git push origin main
```

GitHub ejecuta automáticamente:

* análisis de código
* build Docker
* escaneo de vulnerabilidades
* políticas de seguridad

---

## 5.2 GitHub Actions

### ¿Qué es?

Motor de automatización CI/CD de GitHub.

### Archivo principal

```text
.github/workflows/trivy-scan.yml
```

### ¿Qué hace el YAML?

Define:

* jobs
* steps
* acciones automáticas
* reglas de seguridad

---

## 5.3 Bandit (SAST)

### ¿Qué es SAST?

Static Application Security Testing.

Analiza código fuente sin ejecutar la aplicación.

### ¿Qué hiciste?

Bandit analizó:

```text
app/
```

buscando:

* malas prácticas
* vulnerabilidades Python
* configuraciones inseguras

### Comando utilizado

```bash
bandit -r app/
```

---

## 5.4 Trivy

### ¿Qué es?

Herramienta de escaneo de vulnerabilidades.

### ¿Qué escaneaste?

Imágenes Docker.

### Objetivo

Detectar:

* CVEs
* paquetes vulnerables
* dependencias inseguras

### Comando utilizado

```bash
trivy image devsecops-app
```

---

## 5.5 Docker

### ¿Qué construiste?

Una imagen propia:

```text
devsecops-app
```

### ¿Con qué?

```text
Dockerfile
```

### Flujo

```text
Código Python
    ↓
Dockerfile
    ↓
Docker Build
    ↓
Imagen Docker
    ↓
Trivy Scan
```

---

## 5.6 Policy Enforcement

### ¿Qué significa?

Regla automática de seguridad.

### ¿Qué configuraste?

Si Trivy encuentra:

* HIGH
* CRITICAL

el pipeline falla.

### Comando clave

```bash
trivy image --severity HIGH,CRITICAL --exit-code 1 devsecops-app
```

---

# 6. ¿POR QUÉ SIENTES QUE “NO HAS APRENDIDO”?

Porque actualmente estás en la transición entre:

```text
seguir instrucciones
→
comprender arquitectura
```

Eso es completamente normal en:

* DevOps
* Cloud
* Ciberseguridad
* Data Engineering
* Plataformas CI/CD

---

# 7. QUÉ TE FALTA PARA EL “TECNICISMO REAL”

No necesitas más herramientas todavía.

Necesitas:

## 7.1 Repetición

Rehacer el pipeline desde cero.

---

## 7.2 Explicación propia

Debes poder responder:

* ¿qué hace GitHub Actions?
* ¿qué hace Trivy?
* ¿qué es SAST?
* ¿por qué falla el pipeline?
* ¿qué hace Docker?
* ¿qué es una imagen?
* ¿qué es CI/CD?

---

## 7.3 Romper el entorno

Aprendizaje real ocurre cuando:

* algo falla
* lo diagnosticas
* entiendes por qué
* lo corriges

Eso ya comenzó a pasarte.

---

## 7.4 Leer outputs técnicos

Debes acostumbrarte a:

* logs
* errores
* exit codes
* artifacts
* YAML
* pipelines

---

## 7.5 Comprensión conceptual

No memorizar comandos.

Entender:

* flujo
* arquitectura
* propósito
* automatización
* seguridad integrada

---

# 8. PLAN DE APRENDIZAJE REAL

## FASE 1 — Consolidación

Objetivo:

Explicar todo lo que ya construiste.

### Actividades

* rehacer pipeline
* rehacer Bandit
* rehacer Trivy
* documentar cada módulo
* explicar arquitectura

---

## FASE 2 — Hardening

Objetivo:

Hacer el entorno más seguro.

### Próximos temas

* .dockerignore
* usuario no root
* imágenes slim
* minimización de superficie
* gestión de secretos

---

## FASE 3 — Cloud

Objetivo:

Llevar pipeline a AWS.

### Temas futuros

* ECR
* ECS
* IAM
* Secrets Manager
* CloudWatch
* CodePipeline

---

# 9. CÓMO ESTUDIAR ESTO CORRECTAMENTE

## Método recomendado

### Paso 1

Ejecutar.

### Paso 2

Documentar.

### Paso 3

Explicar en voz alta.

### Paso 4

Rehacer sin guía.

### Paso 5

Enseñar a otra persona.

---

# 10. PREGUNTAS QUE DEBERÍAS PODER RESPONDER

## Git

* ¿Qué hace git pull?
* ¿Qué es un conflicto?
* ¿Qué hace git push?

---

## Docker

* ¿Qué es una imagen?
* ¿Qué es un contenedor?
* ¿Qué hace Dockerfile?

---

## Trivy

* ¿Qué escanea?
* ¿Qué es HIGH?
* ¿Qué es CVE?

---

## Bandit

* ¿Qué es SAST?
* ¿Qué analiza?
* ¿Por qué devuelve exit code 1?

---

## GitHub Actions

* ¿Qué es un workflow?
* ¿Qué es un runner?
* ¿Qué son los artifacts?

---

# 11. TU NIVEL ACTUAL REAL

Actualmente ya estás por encima de:

* labs básicos
* tutoriales simples
* pipelines elementales

Porque ya trabajaste con:

* integración real
* fallos reales
* conflictos Git
* automatización
* políticas de seguridad
* multi-equipo
* CI/CD funcional

---

# 12. QUÉ DEBERÍAS HACER AHORA

## Corto plazo

* consolidar módulos
* limpiar documentación
* eliminar venv del repo
* entender YAML

---

## Mediano plazo

* Docker hardening
* secrets scanning
* Dependabot
* OWASP

---

## Largo plazo

* AWS
* Kubernetes
* Terraform
* pipelines enterprise

---

# 13. NORMALIZACIÓN DOCUMENTAL

## Estructura final recomendada

La documentación del proyecto debe quedar organizada de forma coherente entre:

* arquitectura técnica
* README
* módulos documentales
* pipeline
* evidencias

---

## Estructura objetivo

```text
/docs
 ├── 01-setup-lab.md
 ├── 02-trivy-manual.md
 ├── 03-github-actions.md
 ├── 04-docker-scan.md
 ├── 05-sast-bandit.md
 ├── 06-docker-hardening.md
 └── bootcamp-devsecops-guia.md
```

---

## Diferencia entre documentos

### Módulos numerados

Documentan:

* pasos técnicos específicos
* implementación práctica
* comandos
* evidencias
* resultados

---

### bootcamp-devsecops-guia.md

Es el documento maestro.

Su objetivo es:

* explicar arquitectura
* consolidar aprendizaje
* servir como guía de estudio
* servir como respaldo profesional
* conectar todos los módulos

---

# 14. RESUMEN INTEGRADO DEL BOOTCAMP

## ¿Qué construimos realmente?

Durante el laboratorio se construyó una arquitectura DevSecOps funcional utilizando:

* Linux WSL Ubuntu
* Git y GitHub
* VS Code
* Docker
* GitHub Actions
* Bandit
* Trivy
* CI/CD
* Hardening Docker

---

## Flujo completo implementado

```text
Developer
   ↓
Git
   ↓
GitHub
   ↓
GitHub Actions
   ↓
Bandit (SAST)
   ↓
Docker Build
   ↓
Trivy Scan
   ↓
Security Policy
   ↓
Artifacts
```

---

# 15. EXPLICACIÓN SIMPLE DE TODO EL ENTORNO

## Linux WSL

Permitió trabajar en un entorno Linux real desde Windows.

Ahí se ejecutaron:

* Git
* Docker
* Python
* pipelines locales
* terminal DevOps

---

## Git y GitHub

Permitieron:

* versionar cambios
* sincronizar equipos
* trabajar colaborativamente
* activar pipelines automáticos

### Comandos más importantes

```bash
git add .
git commit -m "mensaje"
git push origin main
git pull origin main
```

---

## VS Code

Se utilizó como entorno principal de desarrollo.

Permitió:

* editar código
* modificar YAML
* administrar Dockerfiles
* trabajar con terminal integrada
* integrarse con WSL Ubuntu

---

## Docker

Docker permitió empaquetar la aplicación junto con:

* librerías
* dependencias
* runtime
* configuración

Todo esto dentro de una imagen portable.

---

## Dockerfile

El Dockerfile define:

* cómo construir la imagen
* qué dependencias instalar
* qué aplicación ejecutar
* cómo se inicia el contenedor

---

## Contenedor

Es la aplicación ejecutándose.

En el laboratorio:

```text
http://localhost:5000
```

validó el funcionamiento correcto del contenedor.

---

## GitHub Actions

Automatizó:

* análisis de seguridad
* build Docker
* generación de reportes
* ejecución de políticas

Todo esto automáticamente después de cada:

```bash
git push
```

---

## Bandit

Implementó SAST:

Static Application Security Testing.

Objetivo:

analizar código Python buscando:

* malas prácticas
* vulnerabilidades
* configuraciones inseguras

---

## Trivy

Analizó:

* imágenes Docker
* dependencias
* paquetes vulnerables
* CVEs

---

## Policy Enforcement

El pipeline fue configurado para:

```text
bloquear ejecución si existen vulnerabilidades HIGH o CRITICAL
```

Eso representa un control real de seguridad DevSecOps.

---

## Docker Hardening

Se implementaron:

* usuario no root
* .dockerignore
* reducción de superficie
* imagen slim

Objetivo:

reducir riesgo y exposición del contenedor.

---

# 16. APRENDIZAJES REALES DEL LABORATORIO

## Técnicos

* uso real de Git
* resolución de conflictos
* pipelines CI/CD
* Docker
* YAML
* análisis de vulnerabilidades
* automatización
* hardening

---

## Conceptuales

* qué es DevSecOps
* integración de seguridad
* automatización de controles
* arquitectura de pipelines
* relación entre herramientas

---

## Profesionales

* troubleshooting
* lectura de logs
* trabajo multi-equipo
* sincronización Git
* criterio técnico inicial

---

# 17. QUÉ FALTA PARA CONSOLIDAR EL APRENDIZAJE

El siguiente paso importante ya no es agregar herramientas.

Ahora se necesita:

* repetir el laboratorio
* reconstruir desde cero
* explicar arquitectura
* modificar configuraciones
* entender errores sin guía

Ahí comienza el aprendizaje profundo.

---

# 18. PRÓXIMAS ETAPAS RECOMENDADAS

## Nivel intermedio

* secrets scanning
* Dependabot
* multi-stage builds
* OWASP checks
* minimización avanzada Docker

---

## Nivel cloud

* AWS ECR
* ECS
* IAM
* CloudWatch
* Terraform
* pipelines enterprise

---

# 19. CONCLUSIÓN FINAL

El laboratorio ya dejó de ser un ejercicio básico.

Actualmente existe una arquitectura DevSecOps funcional que integra:

* Git
* GitHub
* Docker
* GitHub Actions
* Bandit
* Trivy
* CI/CD
* políticas de seguridad
* hardening Docker

El objetivo ahora no es solo ejecutar herramientas.

El objetivo es desarrollar:

* comprensión arquitectónica
* criterio técnico
* capacidad de troubleshooting
* integración de seguridad
* automatización profesional

Ese es el verdadero camino hacia un perfil DevSecOps real.
