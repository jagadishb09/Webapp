--------------------------------------------------------
--  File created - Monday-August-27-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table US_STATES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."US_STATES" 
   (	"POSTAL_CODE" VARCHAR2(2 BYTE), 
	"STATE" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index US_STATES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."US_STATES_PK" ON "SYSTEM"."US_STATES" ("POSTAL_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table US_STATES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."US_STATES" MODIFY ("POSTAL_CODE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."US_STATES" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."US_STATES" ADD CONSTRAINT "US_STATES_PK" PRIMARY KEY ("POSTAL_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
