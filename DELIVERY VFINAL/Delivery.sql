/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     03/11/2016 18:01:42                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FORMA_PAGO') and o.name = 'FK_FORMA_PA_CONTIENE_TIPO_PAG')
alter table FORMA_PAGO
   drop constraint FK_FORMA_PA_CONTIENE_TIPO_PAG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FORMA_PAGO') and o.name = 'FK_FORMA_PA_EXISTE_VENTA')
alter table FORMA_PAGO
   drop constraint FK_FORMA_PA_EXISTE_VENTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HISTORIAL_VENTA') and o.name = 'FK_HISTORIA_REVISA_ADMINIST')
alter table HISTORIAL_VENTA
   drop constraint FK_HISTORIA_REVISA_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEDIDO') and o.name = 'FK_PEDIDO_ESTA_PLATO')
alter table PEDIDO
   drop constraint FK_PEDIDO_ESTA_PLATO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEDIDO') and o.name = 'FK_PEDIDO_PIDE_USUARIO')
alter table PEDIDO
   drop constraint FK_PEDIDO_PIDE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLATO') and o.name = 'FK_PLATO_TIENE_RESTAURA')
alter table PLATO
   drop constraint FK_PLATO_TIENE_RESTAURA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENTA') and o.name = 'FK_VENTA_GENERA_PEDIDO')
alter table VENTA
   drop constraint FK_VENTA_GENERA_PEDIDO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADMINISTRADOR')
            and   type = 'U')
   drop table ADMINISTRADOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FORMA_PAGO')
            and   name  = 'CONTIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FORMA_PAGO.CONTIENE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FORMA_PAGO')
            and   name  = 'EXISTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FORMA_PAGO.EXISTE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FORMA_PAGO')
            and   type = 'U')
   drop table FORMA_PAGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HISTORIAL_VENTA')
            and   name  = 'REVISA_FK'
            and   indid > 0
            and   indid < 255)
   drop index HISTORIAL_VENTA.REVISA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HISTORIAL_VENTA')
            and   type = 'U')
   drop table HISTORIAL_VENTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEDIDO')
            and   name  = 'ESTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEDIDO.ESTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEDIDO')
            and   name  = 'PIDE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEDIDO.PIDE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEDIDO')
            and   type = 'U')
   drop table PEDIDO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PLATO')
            and   name  = 'TIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PLATO.TIENE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLATO')
            and   type = 'U')
   drop table PLATO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESTAURANT')
            and   type = 'U')
   drop table RESTAURANT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_PAGO')
            and   type = 'U')
   drop table TIPO_PAGO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VENTA')
            and   name  = 'GENERA_FK'
            and   indid > 0
            and   indid < 255)
   drop index VENTA.GENERA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VENTA')
            and   type = 'U')
   drop table VENTA
go

/*==============================================================*/
/* Table: ADMINISTRADOR                                         */
/*==============================================================*/
create table ADMINISTRADOR (
   RUT_ADMIN            char(10)             not null,
   NOM_ADMIN            varchar(30)          null,
   PASS_ADMIN           char(20)             null,
   constraint PK_ADMINISTRADOR primary key nonclustered (RUT_ADMIN)
)
go

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO (
   ID_FORMA_PAGO        int                  not null,
   ID_VENTA             int                  not null,
   ID_TPAGO             int                  null,
   VALOR_FORMA_PAGO     money                null,
   constraint PK_FORMA_PAGO primary key nonclustered (ID_FORMA_PAGO)
)
go

/*==============================================================*/
/* Index: EXISTE_FK                                             */
/*==============================================================*/
create index EXISTE_FK on FORMA_PAGO (
ID_VENTA ASC
)
go

/*==============================================================*/
/* Index: CONTIENE_FK                                           */
/*==============================================================*/
create index CONTIENE_FK on FORMA_PAGO (
ID_TPAGO ASC
)
go

/*==============================================================*/
/* Table: HISTORIAL_VENTA                                       */
/*==============================================================*/
create table HISTORIAL_VENTA (
   ID_HISTORIAL         int                  not null,
   RUT_ADMIN            char(10)             not null,
   ESTADO               char(15)             null,
   constraint PK_HISTORIAL_VENTA primary key nonclustered (ID_HISTORIAL)
)
go

/*==============================================================*/
/* Index: REVISA_FK                                             */
/*==============================================================*/
create index REVISA_FK on HISTORIAL_VENTA (
RUT_ADMIN ASC
)
go

/*==============================================================*/
/* Table: PEDIDO                                                */
/*==============================================================*/
create table PEDIDO (
   ID_PEDIDO            int                  not null,
   ID_PLATO             int                  not null,
   RUT_USUARIO          char(10)             not null,
   FECHA_PEDIDO         datetime             null,
   CANTIDAD_PEDIDO      int                  null,
   constraint PK_PEDIDO primary key nonclustered (ID_PEDIDO)
)
go

/*==============================================================*/
/* Index: PIDE_FK                                               */
/*==============================================================*/
create index PIDE_FK on PEDIDO (
RUT_USUARIO ASC
)
go

/*==============================================================*/
/* Index: ESTA_FK                                               */
/*==============================================================*/
create index ESTA_FK on PEDIDO (
ID_PLATO ASC
)
go

/*==============================================================*/
/* Table: PLATO                                                 */
/*==============================================================*/
create table PLATO (
   ID_PLATO             int                  not null,
   COD_REST             int                  not null,
   NOM_PLATO            char(30)             null,
   PRECIO_PLATO         money                null,
   DESCRIPCION_PLATO    text                 null,
   constraint PK_PLATO primary key nonclustered (ID_PLATO)
)
go

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on PLATO (
COD_REST ASC
)
go

/*==============================================================*/
/* Table: RESTAURANT                                            */
/*==============================================================*/
create table RESTAURANT (
   COD_REST             int                  not null,
   PASS_REST            char(20)             null,
   NOMBRE_REST          varchar(30)          null,
   DIRECCION_REST       char(30)             null,
   CIUDAD_REST          varchar(30)          null,
   HORARIO_ATENCION     datetime             null,
   HORARIO_CIERRE       datetime             null,
   EMAIL_REST           char(30)             null,
   TELEFONO_REST        char(12)             null,
   constraint PK_RESTAURANT primary key nonclustered (COD_REST)
)
go

/*==============================================================*/
/* Table: TIPO_PAGO                                             */
/*==============================================================*/
create table TIPO_PAGO (
   ID_TPAGO             int                  not null,
   NOMBRE_TPAGO         char(15)             null,
   constraint PK_TIPO_PAGO primary key nonclustered (ID_TPAGO)
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   RUT_USUARIO          char(10)             not null,
   NOM_USUARIO          varchar(30)          null,
   PASS_USUARIO         char(20)             null,
   constraint PK_USUARIO primary key nonclustered (RUT_USUARIO)
)
go

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   ID_VENTA             int                  not null,
   ID_PEDIDO            int                  not null,
   VALOR_TOTAL          money                null,
   FACTURA_VENTA        char(20)             null,
   constraint PK_VENTA primary key nonclustered (ID_VENTA)
)
go

/*==============================================================*/
/* Index: GENERA_FK                                             */
/*==============================================================*/
create index GENERA_FK on VENTA (
ID_PEDIDO ASC
)
go

alter table FORMA_PAGO
   add constraint FK_FORMA_PA_CONTIENE_TIPO_PAG foreign key (ID_TPAGO)
      references TIPO_PAGO (ID_TPAGO)
go

alter table FORMA_PAGO
   add constraint FK_FORMA_PA_EXISTE_VENTA foreign key (ID_VENTA)
      references VENTA (ID_VENTA)
go

alter table HISTORIAL_VENTA
   add constraint FK_HISTORIA_REVISA_ADMINIST foreign key (RUT_ADMIN)
      references ADMINISTRADOR (RUT_ADMIN)
go

alter table PEDIDO
   add constraint FK_PEDIDO_ESTA_PLATO foreign key (ID_PLATO)
      references PLATO (ID_PLATO)
go

alter table PEDIDO
   add constraint FK_PEDIDO_PIDE_USUARIO foreign key (RUT_USUARIO)
      references USUARIO (RUT_USUARIO)
go

alter table PLATO
   add constraint FK_PLATO_TIENE_RESTAURA foreign key (COD_REST)
      references RESTAURANT (COD_REST)
go

alter table VENTA
   add constraint FK_VENTA_GENERA_PEDIDO foreign key (ID_PEDIDO)
      references PEDIDO (ID_PEDIDO)
go

