CREATE TABLE protection_attributes (
  protection_id INTEGER NOT NULL,
  attribute_name varchar(20) NOT NULL,
  attribute_value varchar(255) NOT NULL,
  PRIMARY KEY (protection_id,attribute_name)
) ;

CREATE TABLE protection_roles (
  protection_id INTEGER NOT NULL,
  type INTEGER NOT NULL,
  name varchar(30) NOT NULL,
  role INTEGER NOT NULL,
  PRIMARY KEY (protection_id,type,name)
) ;
CREATE INDEX protection_id ON protection_roles (protection_id);
CREATE UNIQUE INDEX roles ON protection_roles (protection_id, type, name);

CREATE TABLE protections (
  id INTEGER NOT NULL PRIMARY KEY,
  x INTEGER NOT NULL,
  y INTEGER NOT NULL,
  z INTEGER NOT NULL,
  world varchar(255) NOT NULL,
  created INTEGER NOT NULL,
  updated INTEGER NOT NULL,
  accessed INTEGER NOT NULL
);
CREATE UNIQUE INDEX position ON protections (x, y, z, world);