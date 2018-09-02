-- MySQL Script generated by MySQL Workbench
-- Mon Aug 13 23:03:57 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema tramisoft1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tramisoft1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tramisoft1` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema tramisoft
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tramisoft
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tramisoft` DEFAULT CHARACTER SET utf8 ;
USE `tramisoft1` ;

-- -----------------------------------------------------
-- Table `tramisoft1`.`catalogo_tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`catalogo_tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`catalogo_tramite` (
  `idTramite` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTramite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft`.`nacionalidad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`nacionalidad` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`nacionalidad` (
  `id_Nacionalidad` INT(3) NOT NULL AUTO_INCREMENT,
  `Nombre_Nacion` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id_Nacionalidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`ocupacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`ocupacion` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`ocupacion` (
  `id_Ocupacion` INT(3) NOT NULL AUTO_INCREMENT,
  `Ocupacion` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Ocupacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`eps`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`eps` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`eps` (
  `id_Eps` INT(3) NOT NULL AUTO_INCREMENT,
  `Eps_Nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Eps`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`tipo_persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`tipo_persona` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`tipo_persona` (
  `id_Tipo_Persona` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Persona` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Tipo_Persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`tipo_identificacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`tipo_identificacion` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`tipo_identificacion` (
  `id_Identificacion` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Id` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`id_Identificacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`estrato`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`estrato` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`estrato` (
  `id_Estrato` INT(3) NOT NULL AUTO_INCREMENT,
  `Nivel_Estrato` INT(3) NOT NULL,
  PRIMARY KEY (`id_Estrato`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`vivienda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`vivienda` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`vivienda` (
  `id_Vivienda` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Vivienda` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Vivienda`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`genero` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`genero` (
  `id_Genero` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Genero` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Genero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`estado_civil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`estado_civil` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`estado_civil` (
  `id_Estado_Civil` INT(3) NOT NULL AUTO_INCREMENT,
  `Estado_Civil` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Estado_Civil`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`solicitante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`solicitante` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`solicitante` (
  `id_Solicitante` INT(3) NOT NULL AUTO_INCREMENT,
  `catalogo_tramite` INT NOT NULL,
  `tipo_persona` VARCHAR(45) NULL,
  `tipo_identificacion` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(25) NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  `Apellidos` VARCHAR(50) NOT NULL,
  `Telefono` VARCHAR(30) NOT NULL,
  `Celular` VARCHAR(30) NOT NULL,
  `Correo` VARCHAR(40) NOT NULL,
  `tipo_tramite` VARCHAR(45) NOT NULL,
  `id_Nacionalidad` INT(3) NULL,
  `id_Tipo_Persona` INT(3) NULL,
  `id_Identificacion` INT(3) NULL,
  `id_Estrato` INT(3) NULL,
  `id_Vivienda` INT(3) NULL,
  `id_Genero` INT(3) NULL,
  `id_Estado_Civil` INT(3) NULL,
  `id_Ocupacion` INT(3) NULL,
  `id_Eps` INT(3) NULL,
  PRIMARY KEY (`id_Solicitante`),
  INDEX `id_Nacionalidad` (`id_Nacionalidad` ASC),
  INDEX `id_Tipo_Persona` (`id_Tipo_Persona` ASC),
  INDEX `id_Identificacion` (`id_Identificacion` ASC),
  INDEX `id_Estrato` (`id_Estrato` ASC),
  INDEX `id_Vivienda` (`id_Vivienda` ASC),
  INDEX `id_Genero` (`id_Genero` ASC),
  INDEX `id_Estado_Civil` (`id_Estado_Civil` ASC),
  INDEX `id_Ocupacion` (`id_Ocupacion` ASC),
  INDEX `id_Eps` (`id_Eps` ASC),
  INDEX `fk_solicitante_catalogo_tramite1_idx` (`catalogo_tramite` ASC),
  CONSTRAINT `solicitante_ibfk_1`
    FOREIGN KEY (`id_Nacionalidad`)
    REFERENCES `tramisoft`.`nacionalidad` (`id_Nacionalidad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_10`
    FOREIGN KEY (`id_Ocupacion`)
    REFERENCES `tramisoft`.`ocupacion` (`id_Ocupacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_11`
    FOREIGN KEY (`id_Eps`)
    REFERENCES `tramisoft`.`eps` (`id_Eps`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_2`
    FOREIGN KEY (`id_Tipo_Persona`)
    REFERENCES `tramisoft`.`tipo_persona` (`id_Tipo_Persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_3`
    FOREIGN KEY (`id_Identificacion`)
    REFERENCES `tramisoft`.`tipo_identificacion` (`id_Identificacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_4`
    FOREIGN KEY (`id_Estrato`)
    REFERENCES `tramisoft`.`estrato` (`id_Estrato`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_5`
    FOREIGN KEY (`id_Vivienda`)
    REFERENCES `tramisoft`.`vivienda` (`id_Vivienda`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_7`
    FOREIGN KEY (`id_Genero`)
    REFERENCES `tramisoft`.`genero` (`id_Genero`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_9`
    FOREIGN KEY (`id_Estado_Civil`)
    REFERENCES `tramisoft`.`estado_civil` (`id_Estado_Civil`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_solicitante_catalogo_tramite1`
    FOREIGN KEY (`catalogo_tramite`)
    REFERENCES `tramisoft1`.`catalogo_tramite` (`idTramite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Tramite` (
  `idTramite` INT NOT NULL,
  `solicitante_id_Solicitante` INT(3) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`idTramite`),
  INDEX `fk_Tramite_solicitante_idx` (`solicitante_id_Solicitante` ASC),
  CONSTRAINT `fk_Tramite_solicitante`
    FOREIGN KEY (`solicitante_id_Solicitante`)
    REFERENCES `tramisoft`.`solicitante` (`id_Solicitante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`catalogo_dependencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`catalogo_dependencia` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`catalogo_dependencia` (
  `idDependencia_administrativa` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDependencia_administrativa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Responsable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Responsable` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Responsable` (
  `idResponsable` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idResponsable`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Cargo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Cargo` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Cargo` (
  `idCargo` INT NOT NULL,
  `Cargocol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`acceso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`acceso` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`acceso` (
  `idAcesso` INT NOT NULL,
  `niveles` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAcesso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft`.`estado_etapa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`estado_etapa` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`estado_etapa` (
  `id_Estado_Etapa` INT(3) NOT NULL AUTO_INCREMENT,
  `Respuesta` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Estado_Etapa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`dependencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`dependencia` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`dependencia` (
  `id_Dependencia` INT(3) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NOT NULL,
  `Descripcion` VARCHAR(200) NOT NULL,
  `Tramite_idTramite` INT NOT NULL,
  `catalogo_dependencia` INT NOT NULL,
  `numero_etapas` VARCHAR(45) NOT NULL,
  `Fecha` DATE NOT NULL,
  PRIMARY KEY (`id_Dependencia`, `Tramite_idTramite`),
  INDEX `fk_dependencia_Tramite1_idx` (`Tramite_idTramite` ASC),
  INDEX `fk_dependencia_Dependencia_administrativa1_idx` (`catalogo_dependencia` ASC),
  CONSTRAINT `fk_dependencia_Tramite1`
    FOREIGN KEY (`Tramite_idTramite`)
    REFERENCES `tramisoft1`.`Tramite` (`idTramite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dependencia_Dependencia_administrativa1`
    FOREIGN KEY (`catalogo_dependencia`)
    REFERENCES `tramisoft1`.`catalogo_dependencia` (`idDependencia_administrativa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`responsable_tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`responsable_tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`responsable_tramite` (
  `id_Responsable_T` INT(3) NOT NULL AUTO_INCREMENT,
  `Responsable_idResponsable` INT NOT NULL,
  `Cargo_idCargo` INT NOT NULL,
  `dependencia_id_Dependencia` INT(3) NOT NULL,
  `dependencia_Tramite_idTramite` INT NOT NULL,
  `Nombre_Responsable` VARCHAR(50) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  `Cargo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_Responsable_T`),
  INDEX `fk_responsable_tramite_Responsable1_idx` (`Responsable_idResponsable` ASC),
  INDEX `fk_responsable_tramite_Cargo1_idx` (`Cargo_idCargo` ASC),
  INDEX `fk_responsable_tramite_dependencia1_idx` (`dependencia_id_Dependencia` ASC, `dependencia_Tramite_idTramite` ASC),
  CONSTRAINT `fk_responsable_tramite_Responsable1`
    FOREIGN KEY (`Responsable_idResponsable`)
    REFERENCES `tramisoft1`.`Responsable` (`idResponsable`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_responsable_tramite_Cargo1`
    FOREIGN KEY (`Cargo_idCargo`)
    REFERENCES `tramisoft1`.`Cargo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_responsable_tramite_dependencia1`
    FOREIGN KEY (`dependencia_id_Dependencia` , `dependencia_Tramite_idTramite`)
    REFERENCES `tramisoft`.`dependencia` (`id_Dependencia` , `Tramite_idTramite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft1`.`C_documentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`C_documentos` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`C_documentos` (
  `iddocumentos` INT NOT NULL AUTO_INCREMENT,
  `documento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddocumentos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Revision`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Revision` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Revision` (
  `idRevision` INT NOT NULL AUTO_INCREMENT,
  `responsable_tramite_id_Responsable_T` INT(3) NOT NULL,
  `C_documentos` INT NOT NULL,
  `documento` TEXT(45) NOT NULL,
  `documento1` TEXT(45) NULL,
  `docuemnto2` TEXT(45) NULL,
  `documento3` TEXT(45) NULL,
  PRIMARY KEY (`idRevision`),
  INDEX `fk_Revision_responsable_tramite1_idx` (`responsable_tramite_id_Responsable_T` ASC),
  INDEX `fk_Revision_C_documentos1_idx` (`C_documentos` ASC),
  CONSTRAINT `fk_Revision_responsable_tramite1`
    FOREIGN KEY (`responsable_tramite_id_Responsable_T`)
    REFERENCES `tramisoft`.`responsable_tramite` (`id_Responsable_T`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Revision_C_documentos1`
    FOREIGN KEY (`C_documentos`)
    REFERENCES `tramisoft1`.`C_documentos` (`iddocumentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Seguimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Seguimiento` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Seguimiento` (
  `idSeguimiento` INT NOT NULL AUTO_INCREMENT,
  `Revision_idRevision` INT NOT NULL,
  `estado_etapa_id_Estado_Etapa` INT(3) NOT NULL,
  `Respnsable` VARCHAR(45) NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `Fecha` DATE NOT NULL,
  `Observacion` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idSeguimiento`),
  INDEX `fk_Seguimiento_estado_etapa1_idx` (`estado_etapa_id_Estado_Etapa` ASC),
  INDEX `fk_Seguimiento_Revision1_idx` (`Revision_idRevision` ASC),
  CONSTRAINT `fk_Seguimiento_estado_etapa1`
    FOREIGN KEY (`estado_etapa_id_Estado_Etapa`)
    REFERENCES `tramisoft`.`estado_etapa` (`id_Estado_Etapa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Seguimiento_Revision1`
    FOREIGN KEY (`Revision_idRevision`)
    REFERENCES `tramisoft1`.`Revision` (`idRevision`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `tramisoft` ;

-- -----------------------------------------------------
-- Table `tramisoft`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`rol` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`rol` (
  `id_Rol` INT(3) NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Rol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`usuario` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`usuario` (
  `id_Usuario` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Rol` INT(3) NOT NULL,
  `Rol` VARCHAR(45) NULL,
  `Nombre_Empleado` VARCHAR(30) NOT NULL,
  `Apellidos_Empleado` VARCHAR(35) NOT NULL,
  `Identificacion` INT(30) NOT NULL,
  `Nombre_Usuario` VARCHAR(30) NOT NULL,
  `Contraseña_Usuario` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Usuario`),
  INDEX `id_Rol` (`id_Rol` ASC),
  CONSTRAINT `usuario_ibfk_1`
    FOREIGN KEY (`id_Rol`)
    REFERENCES `tramisoft`.`rol` (`id_Rol`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`acceso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`acceso` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`acceso` (
  `acceso_idAcesso` INT NOT NULL,
  `Nivel_De_Acceso` VARCHAR(30) NOT NULL,
  `usuario` INT(3) NOT NULL,
  `fecha` DATE NOT NULL,
  INDEX `fk_acceso_usuario1_idx` (`usuario` ASC),
  INDEX `fk_acceso_acceso1_idx` (`acceso_idAcesso` ASC),
  CONSTRAINT `fk_acceso_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `tramisoft`.`usuario` (`id_Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acceso_acceso1`
    FOREIGN KEY (`acceso_idAcesso`)
    REFERENCES `tramisoft1`.`acceso` (`idAcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`departamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`departamento` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`departamento` (
  `id_Departamento` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Nacionalidad` INT(3) NOT NULL,
  `Nombre_Departamento` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Departamento`),
  INDEX `id_Nacionalidad` (`id_Nacionalidad` ASC),
  CONSTRAINT `departamento_ibfk_1`
    FOREIGN KEY (`id_Nacionalidad`)
    REFERENCES `tramisoft`.`nacionalidad` (`id_Nacionalidad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`ciudad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`ciudad` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`ciudad` (
  `id_Ciudad` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Departamento` INT(3) NOT NULL,
  `Nombre_Ciudad` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Ciudad`),
  INDEX `id_Departamento` (`id_Departamento` ASC),
  CONSTRAINT `ciudad_ibfk_1`
    FOREIGN KEY (`id_Departamento`)
    REFERENCES `tramisoft`.`departamento` (`id_Departamento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`comuna`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`comuna` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`comuna` (
  `id_Comuna` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Ciudad` INT(3) NOT NULL,
  `Comuna_Nivel` INT(3) NOT NULL,
  PRIMARY KEY (`id_Comuna`),
  INDEX `id_Ciudad` (`id_Ciudad` ASC),
  CONSTRAINT `comuna_ibfk_1`
    FOREIGN KEY (`id_Ciudad`)
    REFERENCES `tramisoft`.`ciudad` (`id_Ciudad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`barrio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`barrio` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`barrio` (
  `id_Barrio` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Comuna` INT(3) NOT NULL,
  `Nombre_Barrio` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Barrio`),
  INDEX `id_Comuna` (`id_Comuna` ASC),
  CONSTRAINT `barrio_ibfk_1`
    FOREIGN KEY (`id_Comuna`)
    REFERENCES `tramisoft`.`comuna` (`id_Comuna`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`tipo_tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`tipo_tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`tipo_tramite` (
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
