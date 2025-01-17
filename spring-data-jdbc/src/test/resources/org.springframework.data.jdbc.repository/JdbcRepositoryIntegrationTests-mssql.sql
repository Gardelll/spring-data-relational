DROP TABLE IF EXISTS dummy_entity;
DROP TABLE IF EXISTS ROOT;
DROP TABLE IF EXISTS INTERMEDIATE;
DROP TABLE IF EXISTS LEAF;

CREATE TABLE dummy_entity
(
    id_Prop          BIGINT IDENTITY PRIMARY KEY,
    NAME             VARCHAR(100),
    POINT_IN_TIME    DATETIME2,
    OFFSET_DATE_TIME DATETIMEOFFSET,
    FLAG             BIT,
    REF              BIGINT,
    DIRECTION        VARCHAR(100)
);

CREATE TABLE ROOT
(
    ID   BIGINT IDENTITY PRIMARY KEY,
    NAME VARCHAR(100)
);

CREATE TABLE INTERMEDIATE
(
    ID       BIGINT IDENTITY PRIMARY KEY,
    NAME     VARCHAR(100),
    ROOT     BIGINT,
    ROOT_ID  BIGINT,
    ROOT_KEY INTEGER
);

CREATE TABLE LEAF
(
    ID               BIGINT IDENTITY PRIMARY KEY,
    NAME             VARCHAR(100),
    INTERMEDIATE     BIGINT,
    INTERMEDIATE_ID  BIGINT,
    INTERMEDIATE_KEY INTEGER
);
