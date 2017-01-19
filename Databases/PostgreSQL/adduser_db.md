#Adduser

## Add system user
```bash
adduser max
passwd max
```

## Login with postgres user
```bash
su - postgres
```

## Connect to the database
```bash
psql template1
```

## Add database'user
```sql
CREATE USER max WITH PASSWORD 'pass';
```

## Add database
```sql
CREATE DATABASE test;
```

## Grant privileges
```sql
GRANT ALL PRIVILEGES ON DATABASE test TO max;
```

## Quit
```sql
\q
```

## Test
```bash
su - max
psql -d test -U max
```