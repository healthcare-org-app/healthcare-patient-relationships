# patient-relationships-service

patient-relationships-service — domain: patients

- **Port:** 8105
- **Language:** Python 3.11 + Flask
- **Database:** `patients` (Postgres, table `patient_relationships`)
- **Event bus:** Kafka

## API

| Method    | Path                       |
|-----------|----------------------------|
| GET       | `/api/patient_relationships/`          |
| POST      | `/api/patient_relationships/`          |
| GET       | `/api/patient_relationships/<id>`      |
| PUT/PATCH | `/api/patient_relationships/<id>`      |
| DELETE    | `/api/patient_relationships/<id>`      |
| GET       | `/health`                  |
| GET       | `/ready`                   |

## Events

**Publishes:** (none)
**Subscribes:** patient.created, patient.merged

## HTTP peer dependencies

- `patients-service`
- `audit-log-service`

## Local dev

```bash
pip install -e ../../libs/py-healthcare-common
pip install -r requirements.txt
cp .env.example .env
(cd ../../infra && docker compose up -d postgres kafka kafka-init)
python -m app.main
```

## Tests

```bash
pytest
```
