prompt --application/pages/page_00229
begin
--   Manifest
--     PAGE: 00229
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>229
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVRCOMVD'
,p_alias=>'FVRCOMVG'
,p_step_title=>'FVRCOMVD'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-controlsContainer{',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221226170855'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47065049231147316)
,p_plug_name=>'PARAMETRO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47065703314147323)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47067192911147337)
,p_plug_name=>unistr('Comisi\00F3n a Supervisores')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SS.COD_VENDEDOR COD_SUP,',
'       VD.DESCRIPCION SUPERV,',
'       SS.DESCRIPCION ,',
'       AAA.COD_VENDEDOR,',
'       AAA.NOMBRE,',
'       SS.PORC_COM,',
'       SS.BASE,',
'       NVL(INV.FV_COSTO_VTA(:P229_NUM_PERIODO,AAA.COD_VENDEDOR, SS.COD_VENDEDOR ) ,0) CF_COSTO_VTA,',
'       SUM(VENTA_ACUMULADA)VTA_TOTAL,',
'       NULL TOTALES',
'FROM FV_AGRUPACION_VENDEDORES SS,',
'     FV_VENDEDORES VD,',
'     (  SELECT DISTINCT V.COD_VENDEDOR,',
'               PR.NOMBRE,',
'               SD.COD_VENDEDOR COD_SUP,',
'               ------------------------------------------',
'               NVL((SELECT  SUM(DECODE( NVL(REPART_INT(C1.TIP_COMPROBANTE,',
'								  C1.SER_COMPROBANTE,',
'								  C1.NRO_COMPROBANTE),',
'								   ''N'') ,''N'',D1.MONTO_TOTAL,D1.MONTO_TOTAL *100/103)* DECODE(UPPER(C1.TIP_COMPROBANTE),''NCR'',-1,1) * (DECODE(C1.COD_MONEDA,''2'',NVL(C1.CAMBIO_MONEDA_PRECIO,C1.TIP_CAMBIO),1)) ) ',
'                     FROM VT_COMPROBANTES_CABECERA C1,',
'                          FV_PERIODOS_COMISION     PC,',
'                          VT_COMPROBANTES_DETALLE  D1,',
'                          FV_VENDEDORES            V1,',
'                          PERSONAS                 P1,',
'                          TIPOS_COMPROBANTES       TC1,',
'                          SUCURSALES               SU1,',
'                          MONEDAS                  M1,',
'                          ST_COSTOS_ART            CA1,',
'                          ST_ARTICULOS             A1,',
'                          PARAMETROS_GENERALES     P11,',
'                          PARAMETROS_GENERALES     P21,',
'                          PARAMETROS_GENERALES     P31',
'                    WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'                      AND PC.NUM_PERIODO = :P229_NUM_PERIODO',
'                      AND C1.COD_VENDEDOR = V.COD_VENDEDOR',
'                      AND C1.COD_EMPRESA = PC.COD_EMPRESA',
'                      AND C1.FEC_COMPROBANTE BETWEEN FEC_INICIAL AND',
'                          FEC_FINAL',
'                      AND C1.COD_EMPRESA = V1.COD_EMPRESA(+)',
'                      AND C1.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'                      AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'                      AND C1.COD_EMPRESA = TC1.COD_EMPRESA',
'                      AND C1.TIP_COMPROBANTE = TC1.TIP_COMPROBANTE',
'                      AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'                      AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'                      AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'                      AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'                      AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'                         ----- EXCLUIR INSTALACIONES/OBRAS              ',
'                      AND D1.COD_ARTICULO NOT LIKE ''AAINS%''',
'                      AND D1.COD_ARTICULO NOT LIKE ''OBR%''                     ',
'                      AND D1.COD_ARTICULO NOT LIKE ''PROMO.%''    ',
'                      AND ((ROUND(NVL(D1.PORC_DESCUENTO, 0), 2) BETWEEN',
'                          NVL(PC.PORC_DTO_MIN, 0) AND',
'                          NVL(PC.PORC_DTO_MAX, 0)) OR',
'                          (NVL(PC.PORC_DTO_MIN, 0) = 0 AND',
'                          NVL(PC.PORC_DTO_MAX, 0) = 0))',
'					  AND CA1.COD_EMPRESA = D1.COD_EMPRESA',
'                      AND CA1.COD_ARTICULO = D1.COD_ARTICULO',
'                      AND C1.COD_EMPRESA = SU1.COD_EMPRESA(+)',
'                      AND C1.COD_SUCURSAL = SU1.COD_SUCURSAL(+)',
'                      AND C1.COD_MONEDA = M1.COD_MONEDA',
'                      AND P11.PARAMETRO = ''TIPO_CONTADO''',
'                      AND P21.PARAMETRO = ''TIPO_CREDITO''',
'                      AND P31.PARAMETRO = ''TIPO_NOTACRE''',
'                      AND V1.COD_VENDEDOR NOT IN(''66'', ''54'', ''90'',  ''80'', ''98'')',
'                      AND A1.COD_EMPRESA = D1.COD_EMPRESA',
'                      AND A1.COD_ARTICULO = D1.COD_ARTICULO',
'                      AND NVL(A1.COD_RUBRO, 0)  IN (''PR'')',
'                      AND NOT EXISTS',
'                    (SELECT DISTINCT ''1''',
'                             FROM INV.FV_PARAMETRO_COMISIONES PPT',
'                            WHERE PPT.COD_VENDEDOR = V1.COD_VENDEDOR',
'                              AND PPT.COD_EMPRESA = C1.COD_EMPRESA',
'                              AND PPT.COD_CLIENTE = C1.COD_CLIENTE)',
'							  AND ((PC.COD_DIVISION <> ''0'' AND A1.COD_DIVISION IN (SELECT DECODE(SUBSTR(PC.COD_DIVISION,1,5),',
'																						  ''CLIMA'',',
'																						  DECODE(A1.COD_DIVISION,',
'                                                                                          ''T8'',',
'                                                                                          DECODE(NVL(A1.COD_CATEGORIA, ''0''),',
'                                                                                          ''19'',',
'                                                                                          NULL,',
'                                                                                          DECODE(NVL(A1.COD_CATEGORIA, ''0''),',
'                                                                                          ''145'',',
'                                                                                          NULL,',
'                                                                                          DECODE(NVL(A1.COD_LINEA, ''0''),',
'                                                                                          ''L288'',',
'                                                                                          NULL,',
'                                                                                          DECODE(PC.COD_DIVISION,''CLIMAR'',DECODE(A1.COD_FAMILIA,''F25'',DV.COD_DIVISION,DECODE(A1.COD_FAMILIA,''F39'',DV.COD_DIVISION,NULL)),',
'                                                                                          DECODE(PC.COD_DIVISION,''CLIMAC'',DECODE(A1.COD_FAMILIA,''F26'',DV.COD_DIVISION,DECODE(A1.COD_FAMILIA,''F28'',DV.COD_DIVISION,NULL)),NULL))))),',
'                                                                                          DV.COD_DIVISION),',
'																						  DV.COD_DIVISION)',
'																					 FROM INV.FV_GRUPO_DIVISION DV',
'																					WHERE DV.COD_DIVISION_FV = PC.COD_DIVISION',
'																					  AND DV.COD_EMPRESA = CA1.COD_EMPRESA))',
'                           OR (PC.COD_DIVISION = ''0'' ',
'						   AND A1.COD_DIVISION NOT IN',
'                           (SELECT DV.COD_DIVISION',
'                                  FROM INV.FV_PARAMETRO_COMISIONES PDV,',
'                                       FV_GRUPO_DIVISION           DV',
'                                 WHERE PDV.COD_EMPRESA = DV.COD_EMPRESA',
'                                   AND PDV.COD_DIVISION = DV.COD_DIVISION_FV',
'                                   AND PDV.COD_DIVISION <> ''0''',
'                                   AND PDV.COD_VENDEDOR = V1.COD_VENDEDOR',
'                                   AND PDV.COD_CLIENTE IS NULL)) ',
'						   OR ((NVL(A1.COD_CATEGORIA,0)=''19'' OR NVL(A1.COD_FAMILIA,0) IN(''F177'',''EEV'')) ',
'						   AND A1.COD_DIVISION=''T8'' AND PC.COD_DIVISION =''0''))',
'						   AND CA1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE',
'						   AND TO_CHAR(CA1.FEC_COMPROBANTE, ''YYYYMMDD'') || CA1.ROWID =',
'										  (SELECT MAX(TO_CHAR(CO1.FEC_COMPROBANTE, ''YYYYMMDD'') || CO1.ROWID)',
'											 FROM ST_COSTOS_ART CO1',
'											WHERE CO1.COD_EMPRESA = C1.COD_EMPRESA',
'											  AND CO1.COD_ARTICULO = D1.COD_ARTICULO',
'											  AND CO1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE)',
'						   AND ( ( C1.COD_VENDEDOR <>''133'') OR  (C1.COD_VENDEDOR =''133'' AND SD.COD_VENDEDOR =''94'' ) ',
'							OR  ( C1.COD_VENDEDOR =''133'' ',
'						   AND ( ( SD.COD_VENDEDOR =''151'' AND EXISTS (SELECT DISTINCT ''1''',
'																		FROM CC_CLIENTES CCC,',
'																			 DIREC_PERSONAS DPC  ',
'																		WHERE CCC.COD_VENDEDOR=C1.COD_VENDEDOR',
'																		AND CCC.COD_EMPRESA=''1''',
'																		AND CCC.COD_CLIENTE =C1.COD_CLIENTE',
'																		AND NVL(CCC.ESTADO,''A'')<>''I'' ',
'																		AND DPC.COD_PERSONA=CCC.COD_PERSONA',
'																		AND DPC.POR_DEFECTO=''S''',
'																		AND DPC.COD_PAIS=''PAR''',
'																		AND (( DPC.COD_PROVINCIA=''16'' AND DPC.COD_CIUDAD IN (''2'',''5'',''1'',''7''))',
'																		OR ( DPC.COD_PROVINCIA=''11'' AND DPC.COD_CIUDAD IN (''6'',''1'',''10'') ))))',
'																		OR (SD.COD_VENDEDOR = ''73'' AND NOT EXISTS (SELECT DISTINCT ''1''',
'																													 FROM CC_CLIENTES CCC,',
'																														  DIREC_PERSONAS DPC  ',
'																													WHERE CCC.COD_VENDEDOR=C1.COD_VENDEDOR',
'																													AND CCC.COD_EMPRESA=''1''',
'																													AND CCC.COD_CLIENTE =C1.COD_CLIENTE',
'																													AND NVL(CCC.ESTADO,''A'')<>''I'' ',
'																													AND DPC.COD_PERSONA=CCC.COD_PERSONA',
'																													AND DPC.POR_DEFECTO=''S''',
'																													AND DPC.COD_PAIS=''PAR''',
'																													AND (( DPC.COD_PROVINCIA=''16'' AND DPC.COD_CIUDAD IN (''2'',''5'',''1'',''7''))',
'																													OR (DPC.COD_PROVINCIA=''11''',
'																													AND DPC.COD_CIUDAD IN (''6'',''1'',''10'') )))))))),0) VENTA_ACUMULADA',
'          FROM FV_PARAMETRO_COMISIONES PC,',
'               FV_VENDEDORES           V,',
'               PERSONAS                PR,',
'               RH_EMPLEADOS            E,',
'               FV_AGRUPACION_VENDEDORES_VEN SD',
'         WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'           AND PC.COD_CLIENTE IS NULL',
'           AND PC.COD_DIVISION NOT IN (''INSTAL'', ''VRF'')',
'           AND PC.COD_VENDEDOR = V.COD_VENDEDOR',
'           AND PC.COD_EMPRESA = V.COD_EMPRESA',
'           AND V.COD_PERSONA = PR.COD_PERSONA',
'           AND V.COD_EMPRESA = E.COD_EMPRESA',
'           AND V.COD_PERSONA = E.COD_PERSONA',
'           AND SD.COD_EMPRESA = V.COD_EMPRESA           ',
'           AND SD.COD_VENDEDOR_REL = V.COD_VENDEDOR',
'         GROUP BY V.COD_VENDEDOR,',
'                  PR.COD_PERSONA,',
'                  E.COD_EMPLEADO,',
'                  PR.NOMBRE,',
'                  E.SUELDO_BASE,',
'                  PC.PORC_COM,',
'                  PC.PORC_COM_NM,',
'                  PC.MONTO_MIN,',
'                  PC.MONTO_MAX,',
'                  PC.PORC_DTO_MIN,',
'                  PC.PORC_DTO_MAX,',
'                  PC.COD_DIVISION,',
'                  V.COD_TIPO_GRUPO,',
'               SD.COD_VENDEDOR',
'        ',
'        UNION ALL',
'-----------------------------------------------------------------------------------------------        ',
'        SELECT DISTINCT V.COD_VENDEDOR,',
'               PR.NOMBRE,',
'               SD.COD_VENDEDOR COD_SUP,',
'               ------------------------------------------',
'               NVL((SELECT ',
'			   SUM(DECODE(NVL(REPART_INT(C1.TIP_COMPROBANTE,',
'			   C1.SER_COMPROBANTE,',
'			   C1.NRO_COMPROBANTE),''N'') ,''N'',D1.MONTO_TOTAL,D1.MONTO_TOTAL *100/103)* DECODE(UPPER(C1.TIP_COMPROBANTE),''NCR'',-1,1) * (DECODE(C1.COD_MONEDA,''2'',',
'			   NVL(C1.CAMBIO_MONEDA_PRECIO,C1.TIP_CAMBIO),1)) ) ',
'		 FROM VT_COMPROBANTES_CABECERA C1,',
'			  FV_PERIODOS_COMISION     PC,',
'			  VT_COMPROBANTES_DETALLE  D1,',
'			  FV_VENDEDORES            V1,',
'			  PERSONAS                 P1,',
'			  TIPOS_COMPROBANTES       TC1,',
'			  SUCURSALES               SU1,',
'			  MONEDAS                  M1,',
'			  ST_COSTOS_ART            CA1,',
'			  ST_ARTICULOS             A1,',
'			  PARAMETROS_GENERALES     P11,',
'			  PARAMETROS_GENERALES     P21,',
'			  PARAMETROS_GENERALES     P31',
'		WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'		  AND PC.NUM_PERIODO = :P229_NUM_PERIODO',
'		  AND C1.COD_VENDEDOR = V.COD_VENDEDOR',
'		  AND C1.COD_EMPRESA = PC.COD_EMPRESA',
'		  AND C1.FEC_COMPROBANTE BETWEEN FEC_INICIAL AND FEC_FINAL',
'		  AND C1.COD_CLIENTE = PC.COD_CLIENTE',
'		  AND C1.COD_EMPRESA = V1.COD_EMPRESA(+)',
'		  AND C1.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'		  AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'		  AND C1.COD_EMPRESA = TC1.COD_EMPRESA',
'		  AND C1.TIP_COMPROBANTE = TC1.TIP_COMPROBANTE',
'		  AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'		  AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'		  AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'		  AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'		  AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'			 ----- EXCLUIR INSTALACIONES/OBRAS              ',
'		  AND D1.COD_ARTICULO NOT LIKE ''AAINS%''',
'		  AND D1.COD_ARTICULO NOT LIKE ''OBR%''',
'		  AND ((ROUND(NVL(D1.PORC_DESCUENTO, 0), 2) BETWEEN',
'			  NVL(PC.PORC_DTO_MIN, 0) AND',
'			  NVL(PC.PORC_DTO_MAX, 0)) OR',
'			  (NVL(PC.PORC_DTO_MIN, 0) = 0',
'			  AND NVL(PC.PORC_DTO_MAX, 0) = 0))',
'		  AND CA1.COD_EMPRESA = D1.COD_EMPRESA',
'		  AND CA1.COD_ARTICULO = D1.COD_ARTICULO                         ',
'		  AND C1.COD_EMPRESA = SU1.COD_EMPRESA(+)',
'		  AND C1.COD_SUCURSAL = SU1.COD_SUCURSAL(+)',
'		  AND C1.COD_MONEDA = M1.COD_MONEDA',
'		  AND P11.PARAMETRO = ''TIPO_CONTADO''',
'		  AND P21.PARAMETRO = ''TIPO_CREDITO''',
'		  AND P31.PARAMETRO = ''TIPO_NOTACRE''',
'		  AND V1.COD_VENDEDOR NOT IN (''66'', ''54'', ''90'',  ''80'', ''98'')',
'		  AND A1.COD_EMPRESA = D1.COD_EMPRESA',
'		  AND A1.COD_ARTICULO = D1.COD_ARTICULO',
'		  AND NVL(A1.COD_RUBRO, 0) IN (''PR'')',
'		  AND ((PC.COD_DIVISION <> ''0'' ',
'		  AND A1.COD_DIVISION IN',
'                          (SELECT COD_DIVISION',
'						   FROM INV.FV_GRUPO_DIVISION DV',
'						  WHERE DV.COD_DIVISION_FV = PC.COD_DIVISION',
'							AND DV.COD_EMPRESA = CA1.COD_EMPRESA))',
'          OR (PC.COD_DIVISION = ''0'' AND A1.COD_DIVISION NOT IN',
'                          (SELECT DV.COD_DIVISION',
'                               FROM INV.FV_PARAMETRO_COMISIONES PDV,',
'                                    FV_GRUPO_DIVISION           DV',
'                              WHERE PDV.COD_EMPRESA = DV.COD_EMPRESA',
'                                AND PDV.COD_DIVISION = DV.COD_DIVISION_FV',
'                                AND PDV.COD_DIVISION <> ''0''',
'                                AND PDV.COD_VENDEDOR = V1.COD_VENDEDOR',
'                                AND PDV.COD_CLIENTE = PC.COD_CLIENTE)))',
'		  AND CA1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE',
'		  AND TO_CHAR(CA1.FEC_COMPROBANTE, ''YYYYMMDD'') || CA1.ROWID =',
'                          (SELECT MAX(TO_CHAR(CO1.FEC_COMPROBANTE, ''YYYYMMDD'') ||',
'                                      CO1.ROWID)',
'                             FROM ST_COSTOS_ART CO1',
'                            WHERE CO1.COD_EMPRESA = C1.COD_EMPRESA',
'                              AND CO1.COD_ARTICULO = D1.COD_ARTICULO',
'                              AND CO1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE)',
'                   ',
'                   ),',
'                   0) VENTA_ACUMULADA',
'        -------------------------------------------    ',
'          FROM FV_PARAMETRO_COMISIONES PC,',
'               FV_VENDEDORES           V,',
'               PERSONAS                PR,',
'               RH_EMPLEADOS            E,',
'               CC_CLIENTES             CL,',
'               PERSONAS                PR1,',
'               FV_AGRUPACION_VENDEDORES_VEN SD',
'         WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'           AND PC.COD_DIVISION NOT IN (''INSTAL'', ''VRF'')',
'           AND PC.COD_VENDEDOR = V.COD_VENDEDOR',
'           AND PC.COD_EMPRESA = V.COD_EMPRESA',
'           AND V.COD_PERSONA = PR.COD_PERSONA',
'           AND V.COD_EMPRESA = E.COD_EMPRESA',
'           AND V.COD_PERSONA = E.COD_PERSONA',
'           AND PC.COD_CLIENTE = CL.COD_CLIENTE',
'           AND PC.COD_EMPRESA = CL.COD_EMPRESA',
'           AND CL.COD_PERSONA = PR1.COD_PERSONA',
'           AND SD.COD_EMPRESA = V.COD_EMPRESA           ',
'           AND SD.COD_VENDEDOR_REL = V.COD_VENDEDOR',
'         GROUP BY V.COD_VENDEDOR,',
'                  PR.COD_PERSONA,',
'                  E.COD_EMPLEADO,',
'                  PR.NOMBRE,',
'                  E.SUELDO_BASE,',
'                  PC.PORC_COM,',
'                  PC.PORC_COM_NM,',
'                  PC.MONTO_MIN,',
'                  PC.MONTO_MAX,',
'                  PC.PORC_DTO_MIN,',
'                  PC.PORC_DTO_MAX,',
'                  PC.COD_DIVISION,',
'                  CL.COD_CLIENTE,',
'                  PR1.NOMBRE,',
'                  PC.COD_CLIENTE,',
'                  V.COD_TIPO_GRUPO,',
'               SD.COD_VENDEDOR',
'        ',
'        UNION ALL',
'        ',
'----------------------------------------------------------------- INSTALACIONES ',
'        SELECT DISTINCT V.COD_VENDEDOR,',
'               PR.NOMBRE,',
'               SD.COD_VENDEDOR COD_SUP,',
'               NVL((SELECT  SUM(DECODE(NVL(REPART_INT(C1.TIP_COMPROBANTE,',
'                      C1.SER_COMPROBANTE,',
'                      C1.NRO_COMPROBANTE),',
'				''N''),''N'',D1.MONTO_TOTAL,D1.MONTO_TOTAL *100/103)* DECODE(UPPER(C1.TIP_COMPROBANTE),''NCR'',-1,1) * (DECODE(C1.COD_MONEDA,''2'',NVL(C1.CAMBIO_MONEDA_PRECIO,C1.TIP_CAMBIO),1)) ) ',
'                     FROM VT_COMPROBANTES_CABECERA C1,',
'                          FV_PERIODOS_COMISION     PC,',
'                          VT_COMPROBANTES_DETALLE  D1,',
'                          FV_VENDEDORES            V1,',
'                          PERSONAS                 P1,',
'                          TIPOS_COMPROBANTES       TC1,',
'                          SUCURSALES               SU1,',
'                          MONEDAS                  M1,',
'                          ST_COSTOS_ART            CA1,',
'                          ST_ARTICULOS             A1,',
'                          PARAMETROS_GENERALES     P11,',
'                          PARAMETROS_GENERALES     P21,',
'                          PARAMETROS_GENERALES     P31',
'                    WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'                      AND PC.NUM_PERIODO = :P229_NUM_PERIODO',
'                      AND C1.COD_VENDEDOR = V.COD_VENDEDOR',
'                      AND C1.COD_EMPRESA = PC.COD_EMPRESA',
'                      AND C1.FEC_COMPROBANTE BETWEEN FEC_INICIAL AND FEC_FINAL',
'                      AND C1.COD_EMPRESA = V1.COD_EMPRESA(+)',
'                      AND C1.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'                      AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'                      AND C1.COD_EMPRESA = TC1.COD_EMPRESA',
'                      AND C1.TIP_COMPROBANTE = TC1.TIP_COMPROBANTE',
'                      AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'                      AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'                      AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'                      AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'                      AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'                         ----- EXCLUIR INSTALACIONES/OBRAS              ',
'                      AND (D1.COD_ARTICULO LIKE ''AAINS%'' OR',
'                          D1.COD_ARTICULO LIKE ''OBR%'')',
'                      AND ((ROUND(NVL(D1.PORC_DESCUENTO, 0), 2) BETWEEN',
'                          NVL(PC.PORC_DTO_MIN, 0) AND',
'                          NVL(PC.PORC_DTO_MAX, 0)) OR',
'                          (NVL(PC.PORC_DTO_MIN, 0) = 0 AND',
'                          NVL(PC.PORC_DTO_MAX, 0) = 0))    ',
'                      AND CA1.COD_EMPRESA = D1.COD_EMPRESA',
'                      AND CA1.COD_ARTICULO = D1.COD_ARTICULO',
'                      AND C1.COD_EMPRESA = SU1.COD_EMPRESA(+)',
'                      AND C1.COD_SUCURSAL = SU1.COD_SUCURSAL(+)',
'                      AND C1.COD_MONEDA = M1.COD_MONEDA',
'                      AND P11.PARAMETRO = ''TIPO_CONTADO''',
'                      AND P21.PARAMETRO = ''TIPO_CREDITO''',
'                      AND P31.PARAMETRO = ''TIPO_NOTACRE''',
'                      AND V1.COD_VENDEDOR NOT IN',
'                          (''66'', ''54'', ''90'',  ''80'', ''98'')',
'                      AND A1.COD_EMPRESA = D1.COD_EMPRESA',
'                      AND A1.COD_ARTICULO = D1.COD_ARTICULO',
'                      AND NOT EXISTS',
'                    (SELECT DISTINCT ''1''',
'                             FROM INV.FV_PARAMETRO_COMISIONES PPT',
'                            WHERE PPT.COD_VENDEDOR = V1.COD_VENDEDOR',
'                              AND PPT.COD_EMPRESA = C1.COD_EMPRESA',
'                              AND PPT.COD_CLIENTE = C1.COD_CLIENTE)',
'                         ',
'                      AND A1.COD_DIVISION = ''T8''',
'                      AND NVL(A1.COD_CATEGORIA, ''0'') <> ''19''',
'                      AND NVL(A1.COD_LINEA, 0) <> ''L288''',
'                      AND NVL(A1.COD_RUBRO, 0)  IN (''PR'',''INST'')',
'                      AND CA1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE',
'                      AND TO_CHAR(CA1.FEC_COMPROBANTE, ''YYYYMMDD'') ||',
'                          CA1.ROWID =',
'                          (SELECT MAX(TO_CHAR(CO1.FEC_COMPROBANTE, ''YYYYMMDD'') || CO1.ROWID)',
'                             FROM ST_COSTOS_ART CO1',
'                            WHERE CO1.COD_EMPRESA = C1.COD_EMPRESA',
'                              AND CO1.COD_ARTICULO = D1.COD_ARTICULO',
'                              AND CO1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE)),0) VENTA_ACUMULADA',
'        -------------------------------------------  ',
'          FROM FV_PARAMETRO_COMISIONES PC,',
'               FV_VENDEDORES           V,',
'               PERSONAS                PR,',
'               RH_EMPLEADOS            E,',
'               FV_AGRUPACION_VENDEDORES_VEN SD',
'         WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'           AND PC.COD_CLIENTE IS NULL',
'           AND PC.COD_DIVISION = ''INSTAL''',
'           AND PC.COD_VENDEDOR = V.COD_VENDEDOR',
'           AND PC.COD_EMPRESA = V.COD_EMPRESA',
'           AND V.COD_PERSONA = PR.COD_PERSONA',
'           AND V.COD_EMPRESA = E.COD_EMPRESA',
'           AND V.COD_PERSONA = E.COD_PERSONA',
'           AND SD.COD_EMPRESA = V.COD_EMPRESA           ',
'           AND SD.COD_VENDEDOR_REL = V.COD_VENDEDOR',
'         GROUP BY V.COD_VENDEDOR,',
'                  PR.COD_PERSONA,',
'                  E.COD_EMPLEADO,',
'                  PR.NOMBRE,',
'                  E.SUELDO_BASE,',
'                  PC.PORC_COM,',
'                  PC.PORC_COM_NM,',
'                  PC.MONTO_MIN,',
'                  PC.MONTO_MAX,',
'                  PC.PORC_DTO_MIN,',
'                  PC.PORC_DTO_MAX,',
'                  PC.COD_DIVISION,',
'                  V.COD_TIPO_GRUPO,',
'               SD.COD_VENDEDOR',
'        ',
'        UNION ALL',
'        ',
'----------------------------------------------------------------- SISTEMA VRF',
'        ',
'        SELECT DISTINCT V.COD_VENDEDOR,',
'               PR.NOMBRE,',
'               SD.COD_VENDEDOR COD_SUP,',
'               NVL((SELECT SUM(DECODE(       NVL(REPART_INT(C1.TIP_COMPROBANTE,',
'                      C1.SER_COMPROBANTE,',
'                      C1.NRO_COMPROBANTE),',
'				''N'') ,''N'',D1.MONTO_TOTAL,D1.MONTO_TOTAL *100/103)* DECODE(UPPER(C1.TIP_COMPROBANTE),''NCR'',-1,1) * (DECODE(C1.COD_MONEDA,''2'',NVL(C1.CAMBIO_MONEDA_PRECIO,C1.TIP_CAMBIO),1)) ) ',
'		 FROM VT_COMPROBANTES_CABECERA C1,',
'			  FV_PERIODOS_COMISION     PC,',
'			  VT_COMPROBANTES_DETALLE  D1,',
'			  FV_VENDEDORES            V1,',
'			  PERSONAS                 P1,',
'			  TIPOS_COMPROBANTES       TC1,',
'			  SUCURSALES               SU1,',
'			  MONEDAS                  M1,',
'			  ST_COSTOS_ART            CA1,',
'			  ST_ARTICULOS             A1,',
'			  PARAMETROS_GENERALES     P11,',
'			  PARAMETROS_GENERALES     P21,',
'			  PARAMETROS_GENERALES     P31',
'		WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'		  AND PC.NUM_PERIODO = :P229_NUM_PERIODO',
'		  AND C1.COD_VENDEDOR = V.COD_VENDEDOR',
'		  AND C1.COD_EMPRESA = PC.COD_EMPRESA',
'		  AND C1.FEC_COMPROBANTE BETWEEN FEC_INICIAL AND',
'			  FEC_FINAL',
'		  AND C1.COD_EMPRESA = V1.COD_EMPRESA(+)',
'		  AND C1.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'		  AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'		  AND C1.COD_EMPRESA = TC1.COD_EMPRESA',
'		  AND C1.TIP_COMPROBANTE = TC1.TIP_COMPROBANTE',
'		  AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'		  AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'		  AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'		  AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'		  AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'			 ----- EXCLUIR INSTALACIONES/OBRAS              ',
'		  AND D1.COD_ARTICULO NOT LIKE ''AAINS%''',
'		  AND D1.COD_ARTICULO NOT LIKE ''OBR%''',
'		  AND CA1.COD_EMPRESA = D1.COD_EMPRESA',
'		  AND CA1.COD_ARTICULO = D1.COD_ARTICULO',
'		  AND C1.COD_EMPRESA = SU1.COD_EMPRESA(+)',
'		  AND C1.COD_SUCURSAL = SU1.COD_SUCURSAL(+)',
'		  AND C1.COD_MONEDA = M1.COD_MONEDA',
'		  AND P11.PARAMETRO = ''TIPO_CONTADO''',
'		  AND P21.PARAMETRO = ''TIPO_CREDITO''',
'		  AND P31.PARAMETRO = ''TIPO_NOTACRE''',
'		  AND V1.COD_VENDEDOR NOT IN (''66'', ''54'', ''90'',  ''80'', ''98'')',
'		  AND A1.COD_EMPRESA = D1.COD_EMPRESA',
'		  AND A1.COD_ARTICULO = D1.COD_ARTICULO',
'		  AND NVL(A1.COD_RUBRO, 0)  IN (''PR'')',
'		  AND A1.COD_DIVISION = ''T8''',
'		  AND (NVL(A1.COD_LINEA, 0) = ''L288''',
'		  OR  NVL(A1.COD_CATEGORIA, 0) = ''145'')',
'          AND NOT EXISTS',
'                    (SELECT DISTINCT ''1''',
'                             FROM INV.FV_PARAMETRO_COMISIONES PPT',
'                            WHERE PPT.COD_VENDEDOR = V1.COD_VENDEDOR',
'                              AND PPT.COD_EMPRESA = C1.COD_EMPRESA',
'                              AND PPT.COD_CLIENTE = C1.COD_CLIENTE)',
'                         ',
'                      AND CA1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE',
'                      AND TO_CHAR(CA1.FEC_COMPROBANTE, ''YYYYMMDD'') ||',
'                          CA1.ROWID =',
'                          (SELECT MAX(TO_CHAR(CO1.FEC_COMPROBANTE, ''YYYYMMDD'') ||',
'                                      CO1.ROWID)',
'                             FROM ST_COSTOS_ART CO1',
'                            WHERE CO1.COD_EMPRESA = C1.COD_EMPRESA',
'                              AND CO1.COD_ARTICULO = D1.COD_ARTICULO',
'                              AND CO1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE) ),0) VENTA_ACUMULADA',
'        -------------------------------------------    ',
'          FROM FV_PARAMETRO_COMISIONES PC,',
'               FV_VENDEDORES           V,',
'               PERSONAS                PR,',
'               RH_EMPLEADOS            E,',
'               FV_AGRUPACION_VENDEDORES_VEN SD',
'         WHERE PC.COD_EMPRESA = :P229_COD_EMPRESA',
'           AND PC.COD_CLIENTE IS NULL',
'           AND PC.COD_DIVISION = ''VRF''',
'           AND PC.COD_VENDEDOR = V.COD_VENDEDOR',
'           AND PC.COD_EMPRESA = V.COD_EMPRESA',
'           AND V.COD_PERSONA = PR.COD_PERSONA',
'           AND V.COD_EMPRESA = E.COD_EMPRESA',
'           AND V.COD_PERSONA = E.COD_PERSONA',
'           AND SD.COD_EMPRESA = V.COD_EMPRESA           ',
'           AND SD.COD_VENDEDOR_REL = V.COD_VENDEDOR',
'         GROUP BY V.COD_VENDEDOR, PR.NOMBRE,',
'               SD.COD_VENDEDOR) AAA',
'WHERE SS.ESTADO=''A''',
'AND SS.COD_EMPRESA = ''1'' ',
'AND SS.COD_VENDEDOR = AAA.COD_SUP',
'AND SS.COD_VENDEDOR = VD.COD_VENDEDOR',
'AND SS.COD_EMPRESA = VD.COD_EMPRESA ',
'AND (SS.COD_VENDEDOR = :P229_COD_VENDEDOR OR :P229_COD_VENDEDOR IS NULL)',
'AND :P229_INF = ''S''',
'GROUP BY SS.COD_VENDEDOR ,',
'               VD.DESCRIPCION ,',
'               SS.DESCRIPCION ,',
'              AAA.COD_VENDEDOR,',
'              AAA.NOMBRE,',
'              SS.PORC_COM,',
'              SS.BASE',
'ORDER BY  1 ,4 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P229_NUM_PERIODO,P229_COD_EMPRESA,P229_COD_VENDEDOR,P229_INF'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Comisi\00F3n a Supervisores')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(47067280397147338)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>47067280397147338
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067563800147341)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067328979147339)
,p_db_column_name=>'COD_SUP'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Sup'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067460863147340)
,p_db_column_name=>'SUPERV'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Superv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067648444147342)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067794199147343)
,p_db_column_name=>'NOMBRE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067808930147344)
,p_db_column_name=>'PORC_COM'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Porc Com'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47067981074147345)
,p_db_column_name=>'BASE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47068102878147347)
,p_db_column_name=>'CF_COSTO_VTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47068076687147346)
,p_db_column_name=>'VTA_TOTAL'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Total Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58371784970758142)
,p_db_column_name=>'TOTALES'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Totales'
,p_column_link=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.:255:P255_COD_EMPRESA,P255_NUM_PERIODO,P255_COD_VENDEDOR:&P229_COD_EMPRESA.,&P229_NUM_PERIODO.,#COD_SUP#'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53919216776154024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'539193'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPCION:COD_SUP:SUPERV:COD_VENDEDOR:NOMBRE:CF_COSTO_VTA:VTA_TOTAL'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63198615779433165)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por supervisor'
,p_report_seq=>10
,p_report_alias=>'631987'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPCION:COD_SUP:SUPERV:COD_VENDEDOR:NOMBRE:CF_COSTO_VTA:VTA_TOTAL:TOTALES:'
,p_break_on=>'DESCRIPCION:COD_SUP:SUPERV:0:0:0'
,p_break_enabled_on=>'DESCRIPCION:COD_SUP:SUPERV:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54287921322898102)
,p_plug_name=>unistr('Comisi\00F3n de Supervisi\00F3n a Obras')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OS.TIPOFAC,',
'       OS.SERFAC,',
'       OS.NROFAC,',
'       OS.FECHAFAC,',
'       OS.NOM_CLIENTE,',
'       OS.COD_ARTICULO,',
'       OS.DESCRIPCION,',
'       OS.MONTO,',
'       OS.COSTO,',
'       OS.MARGEN,',
'       OS.TIPO,',
'       CASE',
'           WHEN TIPO = ''OBR'' THEN ''OBRAS''',
'           ELSE ''SISTEMA VRF''',
'       END DESC_TIPO,',
'       INV.VFRCOMVD.CF_COMISION (PI_TIPO   => OS.TIPO,',
'        					     PI_MARGEN => OS.MARGEN,',
'        					     PI_MONTO  => OS.MONTO) CF_COMISION',
'  FROM INV.VW_COMISION_SUPERVISOR_OBRAS OS,',
'       FV_PERIODOS_COMISION PC',
' WHERE PC.COD_EMPRESA = ''1''',
'   AND PC.NUM_PERIODO = :P229_NUM_PERIODO',
'   AND OS.FECHAFAC BETWEEN PC.FEC_INICIAL AND PC.FEC_FINAL',
'   AND :P229_INF = ''O''',
' ORDER BY NOM_CLIENTE, FECHAFAC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P229_INF,P229_NUM_PERIODO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Comisi\00F3n de Supervisi\00F3n a Obras')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54288036131898103)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>54288036131898103
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288519378898108)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288146748898104)
,p_db_column_name=>'TIPOFAC'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288231851898105)
,p_db_column_name=>'SERFAC'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288307080898106)
,p_db_column_name=>'NROFAC'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288498561898107)
,p_db_column_name=>'FECHAFAC'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288688801898109)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288793859898110)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288901788898112)
,p_db_column_name=>'COSTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54288894485898111)
,p_db_column_name=>'MONTO'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Monto Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54289057349898113)
,p_db_column_name=>'MARGEN'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54289108553898114)
,p_db_column_name=>'TIPO'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54289241122898115)
,p_db_column_name=>'CF_COMISION'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>unistr('Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290148011898124)
,p_db_column_name=>'DESC_TIPO'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Desc Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54403340128276058)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'544034'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:NOM_CLIENTE:TIPOFAC:SERFAC:NROFAC:FECHAFAC:COD_ARTICULO:DESCRIPCION:COSTO:MONTO:MARGEN:CF_COMISION:'
,p_break_on=>'TIPO:0:0:0:0:0'
,p_break_enabled_on=>'TIPO:0:0:0:0:0'
,p_sum_columns_on_break=>'COSTO:CF_COMISION'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54415299238441204)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Tipo'
,p_report_seq=>10
,p_report_alias=>'544153'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOM_CLIENTE:TIPOFAC:SERFAC:NROFAC:FECHAFAC:COD_ARTICULO:DESCRIPCION:COSTO:MONTO:MARGEN:CF_COMISION:DESC_TIPO:'
,p_break_on=>'DESC_TIPO:0:0:0:0:0'
,p_break_enabled_on=>'DESC_TIPO:0:0:0:0:0'
,p_sum_columns_on_break=>'COSTO:CF_COMISION'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54415756718445801)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'General'
,p_report_seq=>10
,p_report_alias=>'544158'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOM_CLIENTE:TIPOFAC:SERFAC:NROFAC:FECHAFAC:COD_ARTICULO:DESCRIPCION:COSTO:MONTO:MARGEN:CF_COMISION:DESC_TIPO:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_sum_columns_on_break=>'COSTO:CF_COMISION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54290258707898125)
,p_plug_name=>unistr('Comisi\00F3n a Vendedores Comercial')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.COD_VENDEDOR COD,',
'       P.NOMBRE VENDEDOR,',
'       T.DIVISION,',
'       SUM(T.FLETE)FLETE,',
'       SUM(T.MONTO_TOTAL)TOTAL,',
'       SUM(T.TOT_GRAVADAS) TOT_GRAV,',
'       SUM(T.TOT_IVA)TOT_IVA,',
'       SUM(T.TOT_G10)TOT_G10,',
'       SUM(T.TOT_G5)TOT_G5,',
'       SUM(T.TOT_EXENTO) TOT_EXENTO',
'FROM INV.VW_COMISIONES_VENDEDORES_DET T ,',
'     FV_VENDEDORES V,',
'     PERSONAS P',
'WHERE  T.NUM_PERIODO = :P229_NUM_PERIODO',
'   AND ( T.COD_VENDEDOR = :P229_COD_VENDEDOR OR :P229_COD_VENDEDOR IS NULL)',
'   AND T.COD_VENDEDOR IN (SELECT DISTINCT COD_VENDEDOR FROM FV_PARAMETRO_COMISIONES)',
'   AND T.COD_VENDEDOR = V.COD_VENDEDOR',
'   AND V.COD_EMPRESA = ''1''',
'   AND V.COD_PERSONA = P.COD_PERSONA',
'   AND :P229_INF = ''C''',
' GROUP BY V.COD_VENDEDOR,',
'       P.NOMBRE,',
'       T.DIVISION',
'ORDER BY V.COD_VENDEDOR,',
'       P.NOMBRE,',
'       T.DIVISION'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P229_NUM_PERIODO,P229_COD_VENDEDOR,P229_INF'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Comisi\00F3n a Vendedores Comercial')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54290357516898126)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>54290357516898126
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290473424898127)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d.')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290559777898128)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290601887898129)
,p_db_column_name=>'DIVISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Divisi\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290805534898131)
,p_db_column_name=>'TOTAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Importe Venta p/ Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290742262898130)
,p_db_column_name=>'FLETE'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Decuento por Flete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54291284011898135)
,p_db_column_name=>'TOT_G5'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Venta Grav. 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54291154362898134)
,p_db_column_name=>'TOT_G10'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Venta Grav. 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54291359607898136)
,p_db_column_name=>'TOT_EXENTO'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Venta Exento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54291085100898133)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>120
,p_column_identifier=>'G'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54290985900898132)
,p_db_column_name=>'TOT_GRAV'
,p_display_order=>130
,p_column_identifier=>'F'
,p_column_label=>'Total Grav'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54435611763842108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'544357'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD:VENDEDOR:DIVISION:TOTAL:FLETE:TOT_G5:TOT_G10:TOT_EXENTO:TOT_IVA:TOT_GRAV'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54497471809168121)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Vendedor'
,p_report_seq=>10
,p_report_alias=>'544975'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD:VENDEDOR:DIVISION:TOTAL:FLETE:TOT_G5:TOT_G10:TOT_EXENTO:TOT_IVA:TOT_GRAV:'
,p_break_on=>'COD:VENDEDOR:0:0:0:0'
,p_break_enabled_on=>'COD:VENDEDOR:0:0:0:0'
,p_sum_columns_on_break=>'TOTAL:FLETE:TOT_GRAV'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64446425740566454)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'prueba'
,p_report_seq=>10
,p_report_alias=>'644465'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD:VENDEDOR:DIVISION:TOTAL:FLETE:TOT_G5:TOT_G10:TOT_EXENTO:TOT_IVA:TOT_GRAV'
,p_break_on=>'DIVISION:0:0:0:0:0'
,p_break_enabled_on=>'DIVISION:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54291803570898141)
,p_plug_name=>unistr('Comisi\00F3n a Vendedores')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_VENDEDOR,',
'       COD_PERSONA,',
'       COD_EMPLEADO,',
'       NOMBRE,',
'       SUELDO_BASE,',
'       MONTO_MAX,',
'       PLUS,',
'       META,',
'       VENTA_ACUMULADA,',
'       PORC_COM,',
'       PORC_COM_NM,',
'       NVL(PORC_DTO_MAX,0) PORC_DTO_MAX,',
'       NVL(PORC_DTO_MIN,0) PORC_DTO_MIN,',
'       PORC_DTO_MIN||'' - ''||PORC_DTO_MAX AS "% Dto. Vta. Min - Max",',
'       MONTO_MIN,',
'       COD_DIVISION,',
'       COD_CLIENTE,',
'       NOM_CLIENTE,',
'       COD_TIPO_GRUPO,',
'       CASE',
'          WHEN COD_DIVISION = ''CLIMAR'' THEN ''CLIMA.RESIDENCIAL''',
'          WHEN COD_DIVISION = ''GASTRO'' THEN ''GASTRONOMIA''',
'          WHEN COD_DIVISION = ''CLIMAC'' THEN ''CLIMA.COMERCIAL''',
'          WHEN COD_DIVISION = ''INSTAL'' THEN ''INSTALACIONES''',
'          WHEN COD_DIVISION = ''VRF'' THEN ''SIST.VRF''',
'          WHEN COD_DIVISION = ''OM'' THEN ''OTRAS MARCAS''',
'          WHEN COD_DIVISION = ''ANT'' THEN ''ANTICIPOS''',
'          ELSE ''ELECTRODOMESTICOS''',
'       END CF_DIV,',
'       INV.VFRCOMVD.CF_GRUPO(PI_P_COD_EMPRESA  => :P_COD_EMPRESA,',
'                             PI_COD_TIPO_GRUPO => COD_TIPO_GRUPO) CF_GRUPO,',
'       COD_LISTA_PRECIO,',
'       INV.VFRCOMVD.CF_VENTA_ACUMULADA (PI_MONTO_MIN => PORC_DTO_MIN ,',
'        							    PI_MONTO_MAX => PORC_DTO_MAX,',
'        							    PI_VENTA_ACUMULADA => VENTA_ACUMULADA ) CF_VENTA_ACUMULADA,',
'       INV.VFRCOMVD.CF_META(PI_META 	    => META,',
'				            PI_MONTO_MIN => MONTO_MIN) CF_META,',
'       INV.VFRCOMVD.CP_PORC_COM_APLIC( PI_CF_VENTA_ACUMULADA => INV.VFRCOMVD.CF_VENTA_ACUMULADA (PI_MONTO_MIN => PORC_DTO_MIN ,',
'                                                                                                PI_MONTO_MAX => PORC_DTO_MAX,',
'                                                                                                PI_VENTA_ACUMULADA => VENTA_ACUMULADA ),',
'                                        PI_META 			  => META,',
'                                        PI_PORC_COM		      => PORC_COM,',
'                                        PI_MONTO_MIN		  => MONTO_MIN,',
'                                        PI_MONTO_MAX		  => MONTO_MAX,',
'                                        PI_PORC_COM_NM		  => PORC_COM_NM,',
'                                        PI_NUM_PERIODO  	  => :P229_NUM_PERIODO,',
'                                        PI_COD_VENDEDOR		  => COD_VENDEDOR)CP_PORC_COM_APLIC,',
'       INV.VFRCOMVD.CF_COMISION( PI_CF_VENTA_ACUMULADA => INV.VFRCOMVD.CF_VENTA_ACUMULADA (PI_MONTO_MIN => PORC_DTO_MIN ,',
'                                                                                                PI_MONTO_MAX => PORC_DTO_MAX,',
'                                                                                                PI_VENTA_ACUMULADA => VENTA_ACUMULADA ),',
'                                PI_META 			  => META,',
'                                PI_PORC_COM		      => PORC_COM,',
'                                PI_MONTO_MIN		  => MONTO_MIN,',
'                                PI_MONTO_MAX		  => MONTO_MAX,',
'                                PI_PORC_COM_NM		  => PORC_COM_NM,',
'                                PI_NUM_PERIODO  	  => :P229_NUM_PERIODO,',
'                                PI_COD_VENDEDOR		  => COD_VENDEDOR)CF_COMISION,',
'       INV.VFRCOMVD.CF_PLUS (PI_PLUS 				=> PLUS,',
'                              PI_META 				=> META,',
'                              PI_NUM_PERIODO  		=> :P229_NUM_PERIODO,',
'                              PI_COD_VENDEDOR		=> COD_VENDEDOR)CF_PLUS,',
'       NULL TOTALES,',
'       NULL DETALLES',
'  FROM INV.VW_COMISIONES_VENDEDORES',
' WHERE NUM_PERIODO= :P229_NUM_PERIODO',
'   AND (COD_VENDEDOR = :P229_COD_VENDEDOR OR :P229_COD_VENDEDOR IS NULL)',
'   AND :P229_INF = ''V''',
' ORDER BY 1 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P229_NUM_PERIODO,P229_COD_VENDEDOR,P229_INF'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Comisi\00F3n a Vendedores')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54515789371202547)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>54515789371202547
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54515852675202548)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d.')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54515975116202549)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54516027010202550)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391353135270901)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391441416270902)
,p_db_column_name=>'SUELDO_BASE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sueldo Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391556487270903)
,p_db_column_name=>'MONTO_MAX'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto Vta. Max'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391623181270904)
,p_db_column_name=>'PLUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'no_Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391781540270905)
,p_db_column_name=>'META'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391808308270906)
,p_db_column_name=>'VENTA_ACUMULADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Venta Acumulada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55391976278270907)
,p_db_column_name=>'PORC_COM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Porc Com'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392025066270908)
,p_db_column_name=>'PORC_COM_NM'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Porc Com Nm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392244062270910)
,p_db_column_name=>'MONTO_MIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Monto Min'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392373326270911)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392419258270912)
,p_db_column_name=>'PORC_DTO_MIN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'% Dto. Vta. Min'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392510285270913)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392647180270914)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392790242270915)
,p_db_column_name=>'COD_TIPO_GRUPO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Tipo Grupo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392859938270916)
,p_db_column_name=>'CF_DIV'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Divisi\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55392997935270917)
,p_db_column_name=>'CF_GRUPO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Grupo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393084928270918)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Precio Lista'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393187381270919)
,p_db_column_name=>'CF_VENTA_ACUMULADA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Venta del Mes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393268615270920)
,p_db_column_name=>'CF_META'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Objetivo Vta. Min'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393394484270921)
,p_db_column_name=>'CP_PORC_COM_APLIC'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('% de Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393459031270922)
,p_db_column_name=>'CF_COMISION'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>unistr('Monto Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393500311270923)
,p_db_column_name=>'CF_PLUS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393660599270924)
,p_db_column_name=>'% Dto. Vta. Min - Max'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'% Dto. Vta. Min - Max'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393705419270925)
,p_db_column_name=>'TOTALES'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Totales'
,p_column_link=>'javascript:$s(''P229_TOTALES'',''#COD_VENDEDOR#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55393817387270926)
,p_db_column_name=>'DETALLES'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P229_DETALLES'',''1''),$s(''P229_COD_DIVISION'',''#COD_DIVISION#''),$s(''P229_PORC_DTO_MAX'',''#PORC_DTO_MAX#''),$s(''P229_PORC_DTO_MIN'',''#PORC_DTO_MIN#''),$s(''P229_COD_LISTA_PRECIO'',''#COD_LISTA_PRECIO#''),$s(''P229_REP_COD_VENDEDOR'',''#COD_VENDEDOR#'''
||');'
,p_column_linktext=>'<span class="fa fa-download" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58367758802758102)
,p_db_column_name=>'PORC_DTO_MAX'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Porc Dto Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(55437054785308631)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'554371'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:COD_PERSONA:COD_EMPLEADO:NOMBRE:SUELDO_BASE:MONTO_MAX:PLUS:META:VENTA_ACUMULADA:PORC_COM:PORC_COM_NM:MONTO_MIN:COD_DIVISION:PORC_DTO_MIN:COD_CLIENTE:NOM_CLIENTE:COD_TIPO_GRUPO:CF_DIV:CF_GRUPO:COD_LISTA_PRECIO:CF_VENTA_ACUMULADA:CF_META:C'
||'P_PORC_COM_APLIC:CF_COMISION:CF_PLUS'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(55502856511908164)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Vendedor'
,p_report_seq=>10
,p_report_alias=>'555029'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CF_GRUPO:COD_VENDEDOR:NOMBRE:COD_CLIENTE:NOM_CLIENTE:CF_DIV:COD_LISTA_PRECIO:% Dto. Vta. Min - Max:CF_VENTA_ACUMULADA:CF_META:MONTO_MAX:CP_PORC_COM_APLIC:CF_COMISION:CF_PLUS:TOTALES:DETALLES:'
,p_sort_column_1=>'COD_TIPO_GRUPO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'CF_GRUPO:COD_VENDEDOR:NOMBRE:0:0:0'
,p_break_enabled_on=>'CF_GRUPO:COD_VENDEDOR:NOMBRE:0:0:0'
,p_sum_columns_on_break=>'CF_VENTA_ACUMULADA:CF_COMISION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55394146939270929)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47066814814147334)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(47065049231147316)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47065149084147317)
,p_name=>'P229_NUM_PERIODO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47065049231147316)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERIODO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NUM_PERIODO||'' -  ''|| FEC_INICIAL ||''  al  ''||FEC_FINAL D,',
'	   FEC_INICIAL, FEC_FINAL,',
'	   NUM_PERIODO R',
'  FROM FV_PERIODOS_COMISION ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
' ORDER BY NUM_PERIODO DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47065219614147318)
,p_name=>'P229_CHK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47065049231147316)
,p_prompt=>'Anterior'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47065314434147319)
,p_name=>'P229_COD_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47065049231147316)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_FVRCOMVD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.COD_VENDEDOR||'' - ''||NVL( V.DESCRIPCION, P.NOMBRE ) NOMBRE, ',
'	   V.COD_VENDEDOR ',
'  FROM FV_VENDEDORES V, ',
'	   PERSONAS P ',
' WHERE V.COD_EMPRESA = :P_COD_EMPRESA',
'   AND V.COD_PERSONA = P.COD_PERSONA ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47065520360147321)
,p_name=>'P229_INF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47065049231147316)
,p_prompt=>'Informe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:COMISI\00D3N VENDEDORES;V,COMISI\00D3N SUPERVISORES;S,COM. SUPERVISOR DE OBRAS;O,VTAS. COMISION VS. COMERCIAL;C')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47065834568147324)
,p_name=>'P229_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066185737147327)
,p_name=>'P229_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066220853147328)
,p_name=>'P229_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066365920147329)
,p_name=>'P229_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066429956147330)
,p_name=>'P229_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066518280147331)
,p_name=>'P229_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066644251147332)
,p_name=>'P229_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066757358147333)
,p_name=>'P229_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47066951758147335)
,p_name=>'P229_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(47065703314147323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55393922314270927)
,p_name=>'P229_TOTALES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55394006588270928)
,p_name=>'P229_DETALLES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55394495487270932)
,p_name=>'P229_CF_CUOTAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55394146939270929)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55394543048270933)
,p_name=>'P229_CS_PLUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55394146939270929)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55394628396270934)
,p_name=>'P229_TOTAL_COMISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55394146939270929)
,p_prompt=>unistr('Total comisi\00F3n')
,p_format_mask=>'999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>100
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55394715907270935)
,p_name=>'P229_TOTAL_COBRAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55394146939270929)
,p_prompt=>'Total a Cobrar'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>100
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55395964848270947)
,p_name=>'P229_COD_DIVISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55396027356270948)
,p_name=>'P229_PORC_DTO_MIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55396159128270949)
,p_name=>'P229_PORC_DTO_MAX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55396203425270950)
,p_name=>'P229_COD_LISTA_PRECIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58367619289758101)
,p_name=>'P229_REP_COD_VENDEDOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58367894973758103)
,p_name=>'P229_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54291803570898141)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47068224122147348)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47066814814147334)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47068377623147349)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47067192911147337)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54289794265898120)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47067192911147337)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54289931171898122)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47067192911147337)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54289366844898116)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54287921322898102)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'O'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54289875696898121)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54287921322898102)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'O'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54290047458898123)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54287921322898102)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'O'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54291738074898140)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54290258707898125)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54291546890898138)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54290258707898125)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54291674487898139)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54290258707898125)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54512794161202517)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54291803570898141)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54512853652202518)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54291803570898141)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54512997289202519)
,p_event_id=>wwv_flow_imp.id(47068224122147348)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54291803570898141)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P229_INF'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54289409006898117)
,p_name=>'DA_HIDE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54289592573898118)
,p_event_id=>wwv_flow_imp.id(54289409006898117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47067192911147337)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54289654971898119)
,p_event_id=>wwv_flow_imp.id(54289409006898117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54287921322898102)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54291477422898137)
,p_event_id=>wwv_flow_imp.id(54289409006898117)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54290258707898125)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54512686870202516)
,p_event_id=>wwv_flow_imp.id(54289409006898117)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54291803570898141)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55394287513270930)
,p_name=>'DA_OPEN_REGION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P229_TOTALES'
,p_condition_element=>'P229_TOTALES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55394854220270936)
,p_event_id=>wwv_flow_imp.id(55394287513270930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VFRCOMVD.CF_CUOTAS(PI_COD_PERSONA => A.COD_PERSONA,',
'                          PI_NUM_PERIODO => :P229_NUM_PERIODO) CF_CUOTAS,',
'       TO_CHAR(SUM(NVL(VFRCOMVD.CF_COMISION( PI_CF_VENTA_ACUMULADA => VFRCOMVD.CF_VENTA_ACUMULADA (PI_MONTO_MIN => A.PORC_DTO_MIN ,',
'                                                                                           PI_MONTO_MAX => A.MONTO_MAX,',
'                                                                                           PI_VENTA_ACUMULADA => A.VENTA_ACUMULADA ) ,',
'                                PI_META 			  => A.META,',
'                                PI_PORC_COM		      => A.PORC_COM,',
'                                PI_MONTO_MIN		  => A.MONTO_MIN,',
'                                PI_MONTO_MAX		  => A.MONTO_MAX,',
'                                PI_PORC_COM_NM		  => A.PORC_COM_NM,',
'                                PI_NUM_PERIODO  	  => :P229_NUM_PERIODO,',
'                                PI_COD_VENDEDOR		  => A.COD_VENDEDOR ),0))) TOTAL_COMISION,',
'       MAX(NVL(VFRCOMVD.CF_PLUS (PI_PLUS 			    => A.PLUS,',
'                                 PI_META 				=> A.META,',
'                                 PI_NUM_PERIODO  		=> :P229_NUM_PERIODO,',
'                                 PI_COD_VENDEDOR		=> A.COD_VENDEDOR),0)) CS_PLUS',
'  INTO :P229_CF_CUOTAS,',
'       :P229_TOTAL_COMISION,',
'       :P229_CS_PLUS',
'  FROM VW_COMISIONES_VENDEDORES A',
' WHERE NUM_PERIODO= :P229_NUM_PERIODO',
'   AND (COD_VENDEDOR = :P229_TOTALES OR :P229_TOTALES IS NULL)',
'   AND :P229_INF = ''V'' ',
' GROUP BY VFRCOMVD.CF_CUOTAS(PI_COD_PERSONA => A.COD_PERSONA, PI_NUM_PERIODO => :P229_NUM_PERIODO);',
''))
,p_attribute_02=>'P229_NUM_PERIODO,P229_TOTALES'
,p_attribute_03=>'P229_CF_CUOTAS,P229_TOTAL_COMISION,P229_CS_PLUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55394974076270937)
,p_event_id=>wwv_flow_imp.id(55394287513270930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P229_TOTAL_COBRAR := TO_NUMBER(:P229_TOTAL_COMISION) + TO_NUMBER(:P229_CS_PLUS) + TO_NUMBER(:P229_CF_CUOTAS);',
'',
':P229_TOTAL_COBRAR := TRUNC(:P229_TOTAL_COBRAR);',
'',
':P229_TOTAL_COMISION := TRUNC(:P229_TOTAL_COMISION);'))
,p_attribute_02=>'P229_TOTAL_COMISION,P229_CS_PLUS,P229_CF_CUOTAS,P229_TOTAL_COBRAR'
,p_attribute_03=>'P229_TOTAL_COBRAR,P229_TOTAL_COMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55395045146270938)
,p_event_id=>wwv_flow_imp.id(55394287513270930)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55394146939270929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55394374365270931)
,p_event_id=>wwv_flow_imp.id(55394287513270930)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55394146939270929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58367982712758104)
,p_name=>'DA_CARGAR_REPORT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P229_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58368214586758107)
,p_event_id=>wwv_flow_imp.id(58367982712758104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P229_COD_LISTA_PRECIO,P229_COD_EMPRESA,P229_COD_DIVISION,P229_PORC_DTO_MIN,P229_PORC_DTO_MAX,P229_NUM_PERIODO,P229_REP_COD_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58368051637758105)
,p_event_id=>wwv_flow_imp.id(58367982712758104)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P229_URL := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/FVCOMVENDET.pdf?''||',
'             ''P_COD_LISTA_PRECIO=''||:P229_COD_LISTA_PRECIO||''&P_COD_EMPRESA=''||:P229_COD_EMPRESA||',
'             ''&P_COD_DIVISION=''||:P229_COD_DIVISION||',
'             ''&P_PORC_DTO_MIN=''||:P229_PORC_DTO_MIN||''&P_PORC_DTO_MAX=''||:P229_PORC_DTO_MAX||',
'             ''&P_NUM_PERIODO=''||:P229_NUM_PERIODO||''&P_COD_VENDEDOR=''||:P229_REP_COD_VENDEDOR||',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';'))
,p_attribute_02=>'P229_COD_LISTA_PRECIO,P229_COD_EMPRESA,P229_COD_DIVISION,P229_PORC_DTO_MIN,P229_PORC_DTO_MAX,P229_NUM_PERIODO,P229_REP_COD_VENDEDOR'
,p_attribute_03=>'P229_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58368161773758106)
,p_event_id=>wwv_flow_imp.id(58367982712758104)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P229_URL''));',
'window.open(unescape($v(''P229_URL'').replace(/&amp;/g,''g'')),"_blank");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47067089240147336)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''FV'';',
'--INICIALIZA GLOBALES',
':P229_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER);',
':P229_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P229_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P229_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P229_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P229_COD_MODULO := NVL(:P_COD_MODULO,''FV'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P229_COD_MODULO,',
'                               PI_COD_FORMA  => :P229_COD_FORMA,',
'                               PI_NOM_MODULO => :P229_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P229_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P229_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P229_NOM_FORMA);',
'',
':P229_INF := NULL;                               '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
