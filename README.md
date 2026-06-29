# Fabio-1st-Repo

# CI C Projekt

Dieses Repository demonstriert einen CI/CD Workflow mit GitHub Actions für ein C und Python Projekt.

## Projektstruktur
ci-c-projekt/
├── c/
│   ├── src/        # C Quellcode
│   ├── test/       # C Unit Tests
│   └── CMakeLists.txt
├── python/
│   ├── hello.py
│   ├── test_hello.py
│   └── requirements.txt
├── Makefile
└── .github/workflows/ci.yml

## Lokal bauen und testen

### Voraussetzungen
- cmake
- make
- cppcheck
- python3 + pip

### C Teil
```bash
make build    # Projekt bauen
make test     # Tests ausführen
make check    # Statische Analyse
make clean    # Build-Artefakte löschen
```

### Python Teil
```bash
pip install -r python/requirements.txt
cd python && pytest          # Tests
cd python && ruff check .    # Statische Analyse
```

## CI/CD

GitHub Actions läuft automatisch bei jedem Pull Request und Push auf `main`.
Der `main` Branch ist geschützt — Merges nur über PRs mit grüner CI.
