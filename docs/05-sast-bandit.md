## 📊 Resultado del pipeline

Bandit fue integrado exitosamente al pipeline CI/CD mediante GitHub Actions.

El análisis genera automáticamente un artifact descargable (`bandit-report.txt`) con los hallazgos detectados.

La política de seguridad continúa con Trivy para validar vulnerabilidades HIGH y CRITICAL en contenedores Docker.