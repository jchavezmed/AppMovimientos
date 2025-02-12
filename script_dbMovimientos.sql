CREATE DATABASE dbMovimientos
GO
USE [dbMovimientos]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[ListarMovimientos]
@fechaInicio datetime,
@fechaFin datetime,
@tipoMovimiento varchar(50),
@nroDocumento varchar(50)
AS
BEGIN
	SELECT
	COD_CIA,
	COMPANIA_VENTA_3,
	ALMACEN_VENTA,
	TIPO_MOVIMIENTO,
	TIPO_DOCUMENTO,
	NRO_DOCUMENTO,
	COD_ITEM_2,
	PROVEEDOR,
	ALMACEN_DESTINO,
	CANTIDAD,
	COMPANIA_DESTINO,
	COSTO_UNITARIO,
	DOC_REF_1,
	DOC_REF_2,
	FECHA_TRANSACCION,
	MOTIVO,
	PRECIO_UNITARIO,
	TIPO_DOC_REF,
	UM_ITEM_3,
	NRO_NOTA,
	USUARIO,
	MONEDA,
	COSTO_UNITARIO_ME,
	COS_UNIT_EST,
	COS_UNIT_ME_EST,
	HORA_TRANSACCION,
	F_ORDENCOMPRA,
	C_SEC_OC,
	C_SEC_DET_OC,
	TIPO_DOC_REF_2,
	OBSERVACION,
	FECHA_VALORIZACION,
	USUARIO_VALORIZA,
	FACTOR,
	COSTOS_ADICIONALES,
	T_CAMBIO_VALORIZA,
	PERIODO_CERRADO,
	PLANILLA_CONSIGNA,
	DOC_REF_3,
	INGRESO_SALIDA,
	SALDO_FINAL,
	FLAG_URGENTE,
	DOC_REF_4,
	DOC_REF_5,
	DOC_REF_6,
	DOC_REF_7
	FROM dbo.MOV_INVENTARIOS where TIPO_MOVIMIENTO = @tipoMovimiento
	AND NRO_DOCUMENTO = @nroDocumento
	AND (FECHA_TRANSACCION BETWEEN @fechaInicio AND @fechaFin)
END
GO

CREATE OR ALTER PROCEDURE [dbo].[InsertarMovimiento]
	@COD_CIA varchar (50),
	@COMPANIA_VENTA_3 varchar (50),
	@ALMACEN_VENTA varchar (50),
	@TIPO_MOVIMIENTO varchar (50),
	@TIPO_DOCUMENTO varchar (50),
	@NRO_DOCUMENTO varchar (50),
	@COD_ITEM_2 varchar (50),
	@PROVEEDOR varchar (50),
	@ALMACEN_DESTINO varchar (50),
	@CANTIDAD varchar (50),
	@COMPANIA_DESTINO varchar (50),
	@COSTO_UNITARIO varchar (50),
	@DOC_REF_1 varchar (50),
	@DOC_REF_2 varchar (50),
	@FECHA_TRANSACCION varchar (50),
	@MOTIVO varchar (50),
	@PRECIO_UNITARIO varchar (50),
	@TIPO_DOC_REF varchar (50),
	@UM_ITEM_3 varchar (50),
	@NRO_NOTA varchar (50),
	@ROWVERSION varchar (50),
	@USUARIO varchar (50),
	@MONEDA varchar (50),
	@COSTO_UNITARIO_ME varchar (50),
	@COS_UNIT_EST varchar (50),
	@COS_UNIT_ME_EST varchar (50),
	@HORA_TRANSACCION varchar (50),
	@F_ORDENCOMPRA varchar (50),
	@C_SEC_OC varchar (50),
	@C_SEC_DET_OC varchar (50),
	@TIPO_DOC_REF_2 varchar (50),
	@OBSERVACION varchar (50),
	@FECHA_VALORIZACION varchar (50),
	@USUARIO_VALORIZA varchar (50),
	@FACTOR varchar (50),
	@COSTOS_ADICIONALES varchar (50),
	@T_CAMBIO_VALORIZA varchar (50),
	@PERIODO_CERRADO varchar (50),
	@PLANILLA_CONSIGNA varchar (50),
	@DOC_REF_3 varchar (50),
	@INGRESO_SALIDA varchar (50),
	@SALDO_FINAL varchar (50),
	@FLAG_URGENTE varchar (50),
	@DOC_REF_4 varchar (50),
	@DOC_REF_5 varchar (50),
	@DOC_REF_6 varchar (50),
	@DOC_REF_7 varchar (50),
	@DOC_REF_8 varchar (50)
AS
BEGIN
	INSERT INTO dbo.MOV_INVENTARIOS
		(
			COD_CIA,
			COMPANIA_VENTA_3,
			ALMACEN_VENTA,
			TIPO_MOVIMIENTO,
			TIPO_DOCUMENTO,
			NRO_DOCUMENTO,
			COD_ITEM_2,
			PROVEEDOR,
			ALMACEN_DESTINO,
			CANTIDAD,
			COMPANIA_DESTINO,
			COSTO_UNITARIO,
			DOC_REF_1,
			DOC_REF_2,
			FECHA_TRANSACCION,
			MOTIVO,
			PRECIO_UNITARIO,
			TIPO_DOC_REF,
			UM_ITEM_3,
			NRO_NOTA,
			[ROWVERSION],
			USUARIO,
			MONEDA,
			COSTO_UNITARIO_ME,
			COS_UNIT_EST,
			COS_UNIT_ME_EST,
			HORA_TRANSACCION,
			F_ORDENCOMPRA,
			C_SEC_OC,
			C_SEC_DET_OC,
			TIPO_DOC_REF_2,
			OBSERVACION,
			FECHA_VALORIZACION,
			USUARIO_VALORIZA,
			FACTOR,
			COSTOS_ADICIONALES,
			T_CAMBIO_VALORIZA,
			PERIODO_CERRADO,
			PLANILLA_CONSIGNA,
			DOC_REF_3,
			INGRESO_SALIDA,
			SALDO_FINAL,
			FLAG_URGENTE,
			DOC_REF_4,
			DOC_REF_5,
			DOC_REF_6,
			DOC_REF_7,
			DOC_REF_8 
		)
    VALUES
		(
			@COD_CIA,
			@COMPANIA_VENTA_3 ,
			@ALMACEN_VENTA ,
			@TIPO_MOVIMIENTO ,
			@TIPO_DOCUMENTO ,
			@NRO_DOCUMENTO ,
			@COD_ITEM_2 ,
			@PROVEEDOR ,
			@ALMACEN_DESTINO ,
			@CANTIDAD ,
			@COMPANIA_DESTINO ,
			@COSTO_UNITARIO ,
			@DOC_REF_1 ,
			@DOC_REF_2 ,
			@FECHA_TRANSACCION ,
			@MOTIVO ,
			@PRECIO_UNITARIO ,
			@TIPO_DOC_REF ,
			@UM_ITEM_3 ,
			@NRO_NOTA ,
			@ROWVERSION,
			@USUARIO ,
			@MONEDA ,
			@COSTO_UNITARIO_ME ,
			@COS_UNIT_EST ,
			@COS_UNIT_ME_EST ,
			@HORA_TRANSACCION ,
			@F_ORDENCOMPRA ,
			@C_SEC_OC ,
			@C_SEC_DET_OC ,
			@TIPO_DOC_REF_2 ,
			@OBSERVACION ,
			@FECHA_VALORIZACION ,
			@USUARIO_VALORIZA ,
			@FACTOR ,
			@COSTOS_ADICIONALES ,
			@T_CAMBIO_VALORIZA ,
			@PERIODO_CERRADO ,
			@PLANILLA_CONSIGNA ,
			@DOC_REF_3 ,
			@INGRESO_SALIDA ,
			@SALDO_FINAL ,
			@FLAG_URGENTE ,
			@DOC_REF_4 ,
			@DOC_REF_5 ,
			@DOC_REF_6 ,
			@DOC_REF_7 ,
			@DOC_REF_8 
		)
END
GO
