insert into data_source (org_id, version, type, name, access, url,
  password, "user", database, basic_auth, is_default, json_data, created, updated
  ) values (
  1, 0, 'influxdb', 'Influx', 'proxy', 'http://localhost:8086',
  'root', 'root', 'pgwatch2', 'f', 't', '{}', now(), now()
  );

insert into data_source (org_id, version, type, name, access, url,
  password, "user", database, basic_auth, is_default, json_data, created, updated, uid
  ) values (
  1, 0, 'postgres', 'PostgreSQL', 'proxy', 'localhost:5432',
  'pgwatch2admin', 'pgwatch2', 'pgwatch2', 'f', 'f', '{"postgresVersion":1000,"sslmode":"disable","timescaledb":false}', now(), now(), 1
  );
