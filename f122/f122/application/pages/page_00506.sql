prompt --application/pages/page_00506
begin
--   Manifest
--     PAGE: 00506
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
 p_id=>506
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Resumen de Entrada - Salida - STRENSA'
,p_alias=>'RESUMEN-DE-ENTRADA-SALIDA-STRENSA'
,p_step_title=>'Resumen de Entrada - Salida - STRENSA'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 43;',
'}',
'',
'function doDescarga(p_cod_empresa, p_fec_inicial, p_fec_final, p_cod_suc_des, p_cod_suc_has,p_tip_ent_sal,p_ser_ent_sal,p_cod_rubro,p_cod_familia,p_cod_linea,p_cod_marca,p_motivo,p_cod_usuario,p_nro_ini,p_nro_fin,p_cod_articulo_des,p_cod_articulo_has'
||',p_inc_man,p_ind_ot){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STENSAL.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_FECHA_DES='' + p_fec_inicial  + ''&P_FECHA_HAS=''+ p_fec_final ',
'            + ''&P_COD_SUCURSAL_DES=''+ p_cod_suc_des + ''&P_COD_SUCURSAL_HAS=''+ p_cod_suc_has + ''&P_TIP_ENT_SAL=''+ p_tip_ent_sal',
'            + ''&P_SER_ENT_SAL=''+ p_ser_ent_sal+ ''&P_COD_RUBRO=''+ p_cod_rubro+ ''&P_COD_FAMILIA=''+ p_cod_familia',
'            + ''&P_COD_LINEA=''+ p_cod_linea+ ''&P_COD_MARCA=''+ p_cod_marca+ ''&P_MOTIVO=''+ p_motivo ',
'            + ''&P_COD_USUARIO=''+ p_cod_usuario + ''&P_NRO_INI=''+ p_nro_ini + ''&P_NRO_FIN=''+ p_nro_fin',
'            + ''&P_COD_ARTICULO_DES=''+ p_cod_articulo_des + ''&P_COD_ARTICULO_HAS=''+ p_cod_articulo_has + ''&P_INC_MAN=''+ p_inc_man ',
'            + ''&P_INC_OT='' + p_ind_ot +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230510170749'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153364180541777141)
,p_plug_name=>'Resumen de Entrada - Salida'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154819028433083801)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.COD_ARTICULO,',
'       A.DESCRIPCION DESC_ARTICULO,',
'       S.DESCRIPCION DESC_SUCURSAL,',
'       MO.DESCRIPCION DESC_MOTIVO,',
'       M.DESCRIPCION DESC_MONEDA,',
'       C.TIP_ENT_SAL,',
'       C.SER_ENT_SAL,',
'       C.NUM_ENT_SAL,',
'       C.FEC_ENT_SAL fecha_entrada,',
'       TO_CHAR(C.FEC_ENT_SAL,''DD/MM/YYYY'') FEC_ENT_SAL,',
'       C.TIP_COMPROBANTE_REF,',
'       C.SER_COMPROBANTE_REF,',
'       C.NRO_COMPROBANTE_REF,',
'       C.COD_SUCURSAL,',
'       C.COD_MOTIVO_ENT_SAL,',
'       NVL(D.CANTIDAD, 0) * DECODE(NVL(MO.IND_ENT_SAL, ''E''), ''E'', 1, -1) CANTIDAD,',
'       NVL(CA.COSTO_PROM_NUE, 0) COSTO_PROM_NUE,',
'       NVL(CA.COSTO_PROM_NUE_US, 0) COSTO_PROM_NUE_US,',
'       C.COD_MONEDA,',
'       D.OBSERVACION,',
'       D.NRO_LOTE,',
'       SUM(NVL(CA.COSTO_PROM_NUE, 0) * NVL(D.CANTIDAD, 0) * DECODE(NVL(MO.IND_ENT_SAL, ''E''), ''E'', 1, -1)) TOTAL_GS,',
'       SUM(NVL(CA.COSTO_PROM_NUE_US, 0) * NVL(D.CANTIDAD, 0) * DECODE(NVL(MO.IND_ENT_SAL, ''E''), ''E'', 1, -1)) TOTAL_US,',
'       D.COSTO_GS ,',
'       C.COD_CLIENTE,',
'       A.COD_MARCA,',
'       A.COD_LINEA,',
'       D.OBSERVACION OBSERVACION_DET,',
'       MO.IND_ENT_SAL,',
'       ROUND(D.PRECIO_VENTA) PRECIO_VENTA,',
'       (SELECT DECODE(IND_GARANTIA, ''S'', ''GARANTIA'', ''PARTICULAR'')',
'          FROM VT_ORDENES_TRABAJO OT',
'         WHERE OT.COD_EMPRESA     = C.COD_EMPRESA',
'           AND OT.TIP_COMPROBANTE = C.TIP_COMPROBANTE_REF',
'           AND OT.SER_COMPROBANTE = C.SER_COMPROBANTE_REF',
'           AND OT.NRO_COMPROBANTE = C.NRO_COMPROBANTE_REF) CONDICION_OT,',
'       NVL((SELECT ''S''',
'             FROM VT_ORDENES_TRABAJO OT',
'            WHERE OT.COD_EMPRESA     = C.COD_EMPRESA',
'              AND OT.TIP_COMPROBANTE = C.TIP_COMPROBANTE_REF',
'              AND OT.SER_COMPROBANTE = C.SER_COMPROBANTE_REF',
'              AND OT.NRO_COMPROBANTE = C.NRO_COMPROBANTE_REF',
'              AND NVL(IND_ENTREGA, ''N'') = ''S''',
'              AND NVL(IND_RETIRADO, ''N'') = ''S''),',
'           ''N'') ENTREGADO,',
'       C.COD_USUARIO COD_USUARIO_ALTA,',
'       C.FEC_ALTA FEC_HOR_ALTA,',
'        A.COD_RUBRO,',
'    (nvl((select ltrim( nvl( p.nombre, p.nomb_fantasia ) )|| '' (''||v.cod_cliente||'')''',
'                from cc_clientes v, personas p',
'               where v.cod_empresa   = c.cod_empresa',
'                 and v.cod_cliente = C.COD_CLIENTE',
'                 and v.cod_persona   = p.cod_persona),null) ) Cliente',
'  FROM ST_ENTSAL_CAB     C,',
'       ST_ENTSAL_DET     D,',
'       ST_MOTIVO_ENT_SAL MO,',
'       ST_ARTICULOS      A,',
'       SUCURSALES        S,',
'       MONEDAS           M,',
'       ST_COSTOS_ART     CA',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND (:P506_TIP_COMPROBANTE IS NULL OR C.TIP_ENT_SAL = :P506_TIP_COMPROBANTE)',
'   AND (:P506_SER_COMPROBANTE IS NULL OR C.SER_ENT_SAL = :P506_SER_COMPROBANTE)',
'   AND (:P506_COD_RUBRO IS NULL OR A.COD_RUBRO = :P506_COD_RUBRO)',
'   AND (:P506_COD_FAMILIA IS NULL OR A.COD_FAMILIA = :P506_COD_FAMILIA)',
'   AND (:P506_COD_LINEA_DES IS NULL OR A.COD_LINEA = :P506_COD_LINEA_DES) ',
'   AND (:P506_COD_MARCA IS NULL OR A.COD_MARCA = :P506_COD_MARCA)',
'   AND (:P506_COD_MOTIVO IS NULL OR C.COD_MOTIVO_ENT_SAL = :P506_COD_MOTIVO)',
'   AND (:P506_COD_USUARIO_R IS NULL OR C.COD_USUARIO = :P506_COD_USUARIO_R)',
'   AND ((:P506_NRO_INI IS NULL OR :P506_NRO_FIN IS NULL) OR C.NUM_ENT_SAL BETWEEN :P506_NRO_INI AND :P506_NRO_FIN)',
'   AND ((:P506_COD_SUCURSAL_DES IS NULL OR :P506_COD_SUCURSAL_HAS IS NULL) OR C.COD_SUCURSAL BETWEEN TO_CHAR(:P506_COD_SUCURSAL_DES) AND  TO_CHAR(:P506_COD_SUCURSAL_HAS))',
'  AND ((TO_DATE(:P506_FEC_INICIAL,''DD/MM/YYYY'') IS NULL OR TO_DATE(:P506_FEC_FINAL,''DD/MM/YYYY'') IS NULL) OR C.FEC_ENT_SAL BETWEEN  TO_DATE(:P506_FEC_INICIAL,''DD/MM/YYYY'') AND TO_DATE(:P506_FEC_FINAL,''DD/MM/YYYY''))',
'   AND ((:P506_COD_ARTICULO_DES IS NULL OR :P506_COD_ARTICULO_HAS IS NULL) OR D.COD_ARTICULO BETWEEN :P506_COD_ARTICULO_DES AND :P506_COD_SUCURSAL_HAS)',
'   AND (NVL(:P506_INC_OT, ''S'') = ''S'' OR NVL(C.TIP_COMPROBANTE_REF, ''dfl'') <> ''ORT'')',
'   AND (NVL(:P506_INC_MAN, ''S'') = ''S'' OR NVL(C.TIP_COMPROBANTE_REF, ''dfl'') <> ''MAN'')',
'   AND D.COD_EMPRESA  = A.COD_EMPRESA',
'   AND D.COD_ARTICULO = A.COD_ARTICULO',
'   AND NVL(C.IND_WEB, ''N'') <> ''S''',
'   AND A.COD_EMPRESA  = CA.COD_EMPRESA',
'   AND A.COD_ARTICULO = CA.COD_ARTICULO',
'   AND C.COD_MOTIVO_ENT_SAL NOT IN (''55'')',
'   AND TO_CHAR(TRUNC(CA.FEC_PROCESO), ''YYYYMMDD'') || CA.ROWID =(SELECT MAX(TO_CHAR(CO.FEC_PROCESO, ''YYYYMMDD'') || CO.ROWID)',
'                                                                  FROM ST_COSTOS_ART CO',
'                                                                 WHERE CO.COD_EMPRESA  = A.COD_EMPRESA',
'                                                                   AND CO.COD_ARTICULO = A.COD_ARTICULO',
'                                                                   AND TRUNC(CO.FEC_PROCESO) <= TRUNC(C.FEC_ENT_SAL))',
'   AND C.COD_EMPRESA  = S.COD_EMPRESA',
'   AND C.COD_SUCURSAL = S.COD_SUCURSAL',
'   AND C.COD_MOTIVO_ENT_SAL = MO.COD_MOTIVO_ENT_SAL(+)',
'   AND C.COD_MONEDA  = M.COD_MONEDA(+)',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'   AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'   AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'   AND :P506_AUX = ''S''',
'GROUP BY A.COD_ARTICULO,',
'          A.DESCRIPCION,',
'          S.DESCRIPCION,',
'          MO.DESCRIPCION,',
'          M.DESCRIPCION,',
'          C.TIP_ENT_SAL,',
'          C.SER_ENT_SAL,',
'          C.NUM_ENT_SAL,',
'          C.FEC_ENT_SAL,',
'          C.TIP_COMPROBANTE_REF,',
'          C.SER_COMPROBANTE_REF,',
'          C.NRO_COMPROBANTE_REF,',
'          C.COD_SUCURSAL,',
'          C.COD_MOTIVO_ENT_SAL,',
'          NVL(D.CANTIDAD, 0) * DECODE(NVL(MO.IND_ENT_SAL, ''E''), ''E'', 1, -1),',
'          NVL(CA.COSTO_PROM_NUE, 0),',
'          NVL(CA.COSTO_PROM_NUE_US, 0),',
'          C.COD_MONEDA,',
'          D.OBSERVACION,',
'          D.NRO_LOTE,',
'          D.COSTO_GS,',
'          C.COD_CLIENTE,',
'          A.COD_MARCA,',
'          A.COD_LINEA,',
'          MO.IND_ENT_SAL,',
'          D.PRECIO_VENTA,',
'          C.TIP_COMPROBANTE_REF,',
'          C.SER_COMPROBANTE_REF,',
'          C.NRO_COMPROBANTE_REF,',
'          C.COD_EMPRESA, ',
'          A.COD_RUBRO,',
'          D.PRECIO_VENTA, C.COD_USUARIO, C.FEC_ALTA',
' ORDER BY  C.COD_SUCURSAL, C.TIP_ENT_SAL, C.SER_ENT_SAL, C.NUM_ENT_SAL, C.FEC_ENT_SAL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P506_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(154819290773083803)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>154819290773083803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819319650083804)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819449613083805)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Desc Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819597675083806)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819622254083807)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819734337083808)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819876062083809)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tip Ent Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154819960523083810)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ser Ent Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820017458083811)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Num Ent Sal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820134225083812)
,p_db_column_name=>'FECHA_ENTRADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Entrada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820257927083813)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Ent Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820367424083814)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820488008083815)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820541448083816)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820609938083817)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820700343083818)
,p_db_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Motivo Ent Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820860888083819)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154820941364083820)
,p_db_column_name=>'COSTO_PROM_NUE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Costo Prom Nue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821038606083821)
,p_db_column_name=>'COSTO_PROM_NUE_US'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Costo Prom Nue Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821195254083822)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821217914083823)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821383030083824)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821468650083825)
,p_db_column_name=>'TOTAL_GS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Total Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821577901083826)
,p_db_column_name=>'TOTAL_US'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Total Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821662377083827)
,p_db_column_name=>'COSTO_GS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Costo Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821790735083828)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821867906083829)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154821954722083830)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>unistr('L\00EDnea')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822071434083831)
,p_db_column_name=>'OBSERVACION_DET'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>unistr('Observaci\00F3n Det')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822181507083832)
,p_db_column_name=>'IND_ENT_SAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ind Ent Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822248909083833)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Precio Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822338213083834)
,p_db_column_name=>'CONDICION_OT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>unistr('Condici\00F3n Ot')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822475964083835)
,p_db_column_name=>'ENTREGADO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Entregado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822545784083836)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822697807083837)
,p_db_column_name=>'FEC_HOR_ALTA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822729008083838)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154822884737083839)
,p_db_column_name=>'CLIENTE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154845011808710904)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548451'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COD_ARTICULO:DESC_ARTICULO:COD_SUCURSAL:DESC_SUCURSAL:NRO_LOTE:COD_MOTIVO_ENT_SAL:DESC_MOTIVO:COD_MONEDA:DESC_MONEDA:NUM_ENT_SAL:FECHA_ENTRADA:FEC_ENT_SAL:CANTIDAD:COD_CLIENTE:CLIENTE:COD_RUBRO:COD_MARCA:COD_LINEA:PRECIO_VENTA:CONDICION_OT:ENTREGADO:'
||'FEC_HOR_ALTA:TOTAL_GS:TOTAL_US:COSTO_GS:COSTO_PROM_NUE:COSTO_PROM_NUE_US:COD_USUARIO_ALTA:OBSERVACION:OBSERVACION_DET:IND_ENT_SAL:SER_ENT_SAL:TIP_ENT_SAL:NRO_COMPROBANTE_REF:SER_COMPROBANTE_REF:TIP_COMPROBANTE_REF:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153729834666227617)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Descargar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154823542086083846)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_button_name=>'BT_GENERAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-table-new'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153730465471227623)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364392088777143)
,p_name=>'P506_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364492581777144)
,p_name=>'P506_COD_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364547678777145)
,p_name=>'P506_COD_SUCURSAL'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364612648777146)
,p_name=>'P506_COD_MODULO'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364786472777147)
,p_name=>'P506_NOM_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364814058777148)
,p_name=>'P506_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo_ent_sal ||'' - '' ||descripcion D, ',
'       cod_motivo_ent_sal R',
'from st_motivo_ent_sal ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153364971947777149)
,p_name=>'P506_COD_SUCURSAL_DES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>' Sucursal Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal|| '' - ''|| descripcion D, ',
'       cod_sucursal R ',
'from sucursales ',
'where cod_empresa = :P_cod_empresa ',
'and estado=''S''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153365049712777150)
,p_name=>'P506_COD_SUCURSAL_HAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Sucursal Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal|| '' - ''|| descripcion D, ',
'       cod_sucursal R ',
'from sucursales ',
'where cod_empresa = :P_cod_empresa ',
'and estado=''S''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728282732227601)
,p_name=>'P506_COD_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>' Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro|| '' - '' ||descripcion D, ',
'       cod_rubro R',
'from st_rubro ',
'where cod_empresa = :p_cod_empresa ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728386735227602)
,p_name=>'P506_COD_FAMILIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia ||'' - ''|| descripcion D, ',
'       cod_familia R',
'from st_familia ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728403624227603)
,p_name=>'P506_COD_LINEA_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea ||'' - ''|| descripcion D,',
'       cod_linea R',
'from st_linea ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728514496227604)
,p_name=>'P506_COD_MARCA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>' Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca ||'' - ''||descripcion D, ',
'       cod_marca R',
'from st_marcas ',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728632701227605)
,p_name=>'P506_COD_ARTICULO_DES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>unistr('Art\00EDculo Inicial')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - '' ||descripcion D, ',
'       cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'and COD_MARCA = :P506_COD_MARCA',
'and COD_RUBRO = :P506_COD_RUBRO',
'and COD_FAMILIA	= :P506_COD_FAMILIA',
'and COD_LINEA = :P506_COD_LINEA_DES',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P506_COD_MARCA,P506_COD_RUBRO,P506_COD_FAMILIA,P506_COD_LINEA_DES'
,p_ajax_items_to_submit=>'P506_COD_MARCA,P506_COD_RUBRO,P506_COD_FAMILIA,P506_COD_LINEA_DES'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728734397227606)
,p_name=>'P506_COD_ARTICULO_HAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>unistr('Art\00EDculo Final')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - '' ||descripcion D, ',
'       cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'and COD_MARCA = :P506_COD_MARCA',
'and COD_RUBRO = :P506_COD_RUBRO',
'and COD_FAMILIA	= :P506_COD_FAMILIA',
'and COD_LINEA = :P506_COD_LINEA_DES',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P506_COD_MARCA,P506_COD_RUBRO,P506_COD_FAMILIA,P506_COD_LINEA_DES'
,p_ajax_items_to_submit=>'P506_COD_MARCA,P506_COD_RUBRO,P506_COD_FAMILIA,P506_COD_LINEA_DES'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728846495227607)
,p_name=>'P506_TIP_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante ||'' - '' ||descripcion D,',
'       tip_comprobante R',
'from tipos_comprobantes',
'where cod_empresa = :p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153728915373227608)
,p_name=>'P506_NRO_INI'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>unistr('N\00FAmero Inicial')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729013175227609)
,p_name=>'P506_NRO_FIN'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>unistr('N\00FAmero Final')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729159297227610)
,p_name=>'P506_SER_COMPROBANTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729224983227611)
,p_name=>'P506_COD_USUARIO_R'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Usuario '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario||'' - ''|| P.NOMBRE  D, ',
'       u.cod_usuario R',
'from usuarios u, personas p ',
'where u.cod_empresa=:P_cod_empresa',
'and u.cod_persona=p.cod_persona',
'and u.estado=''A''',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729354527227612)
,p_name=>'P506_INC_OT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Incluye OT'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729424820227613)
,p_name=>'P506_INC_MAN'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Incluye  Mant'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729542446227614)
,p_name=>'P506_FEC_INICIAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729660878227615)
,p_name=>'P506_FEC_FINAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153729794696227616)
,p_name=>'P506_PERIODO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(153364180541777141)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:D\00EDa;1,Mes;2,A\00F1o;3,General;4')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154823025385083841)
,p_name=>'P506_AUX'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153729924853227618)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P506_NRO_INI,P506_NRO_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153730051530227619)
,p_event_id=>wwv_flow_imp.id(153729924853227618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153730554687227624)
,p_name=>'DA_CLEAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153730465471227623)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153730792258227626)
,p_event_id=>wwv_flow_imp.id(153730554687227624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea limpiar los datos seleccionados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-exclamation-triangle-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153730661735227625)
,p_event_id=>wwv_flow_imp.id(153730554687227624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P506_COD_MOTIVO,P506_COD_SUCURSAL_DES,P506_COD_SUCURSAL_HAS,P506_COD_RUBRO,P506_COD_FAMILIA,P506_COD_LINEA_DES,P506_COD_MARCA,P506_COD_ARTICULO_DES,P506_COD_ARTICULO_HAS,P506_TIP_COMPROBANTE,P506_NRO_INI,P506_NRO_FIN,P506_SER_COMPROBANTE,P506_COD_USU'
||'ARIO_R,P506_INC_OT,P506_INC_MAN,P506_FEC_INICIAL,P506_FEC_FINAL,P506_PERIODO,P506_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160610015474270203)
,p_event_id=>wwv_flow_imp.id(153730554687227624)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P506_AUX := ''N'';'
,p_attribute_03=>'P506_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160609901325270202)
,p_event_id=>wwv_flow_imp.id(153730554687227624)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(154823542086083846)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P506_AUX'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160610135582270204)
,p_event_id=>wwv_flow_imp.id(153730554687227624)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154819028433083801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124047138362908730)
,p_name=>'Ejecutar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153729834666227617)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124047245412908731)
,p_event_id=>wwv_flow_imp.id(124047138362908730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P506_COD_EMPRESA'').getValue(), apex.item(''P506_FEC_INICIAL'').getValue(), apex.item(''P506_FEC_FINAL'').getValue(), ',
'           apex.item(''P506_COD_SUCURSAL_DES'').getValue(),apex.item(''P506_COD_SUCURSAL_HAS'').getValue(),apex.item(''P506_TIP_COMPROBANTE'').getValue(),apex.item(''P506_SER_COMPROBANTE'').getValue(),',
'           apex.item(''P506_COD_RUBRO'').getValue(),apex.item(''P506_COD_FAMILIA'').getValue(),apex.item(''P506_COD_LINEA_DES'').getValue(),apex.item(''P506_COD_MARCA'').getValue(),',
'           apex.item(''P506_COD_MOTIVO'').getValue(),apex.item(''P506_COD_USUARIO_R'').getValue(),apex.item(''P506_NRO_INI'').getValue(),apex.item(''P506_NRO_FIN'').getValue(),',
'           apex.item(''P506_COD_ARTICULO_DES'').getValue(),apex.item(''P506_COD_ARTICULO_HAS'').getValue(),apex.item(''P506_INC_MAN'').getValue(),apex.item(''P506_INC_OT'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154823695301083847)
,p_name=>'DA_REPORT'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154823542086083846)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154822997975083840)
,p_event_id=>wwv_flow_imp.id(154823695301083847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        ',
'    IF :P506_COD_SUCURSAL_DES IS NOT NULL',
'    AND :P506_COD_SUCURSAL_HAS IS NOT NULL THEN',
'',
'        :P506_AUX := ''S'';',
'    END IF;',
'    ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                :P506_AUX := NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error asignando auxiliar ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P506_COD_SUCURSAL_DES,P506_COD_SUCURSAL_HAS'
,p_attribute_03=>'P506_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57824785243360429)
,p_event_id=>wwv_flow_imp.id(154823695301083847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(154823542086083846)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154823423821083845)
,p_event_id=>wwv_flow_imp.id(154823695301083847)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154819028433083801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160610222466270205)
,p_name=>'da_cambios'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P506_COD_MOTIVO,P506_COD_SUCURSAL_DES,P506_COD_SUCURSAL_HAS,P506_COD_RUBRO,P506_COD_FAMILIA,P506_COD_LINEA_DES,P506_COD_MARCA,P506_COD_ARTICULO_DES,P506_COD_ARTICULO_HAS,P506_TIP_COMPROBANTE,P506_NRO_INI,P506_NRO_FIN,P506_SER_COMPROBANTE,P506_COD_USU'
||'ARIO_R,P506_INC_OT,P506_INC_MAN,P506_FEC_INICIAL,P506_FEC_FINAL,P506_PERIODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160610356350270206)
,p_event_id=>wwv_flow_imp.id(160610222466270205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(154823542086083846)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153730336517227622)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153364278081777142)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   :P506_Cod_Usuario  := :P_Cod_Usuario;',
'   :P506_Cod_Empresa  := :P_Cod_Empresa;',
'   :P506_Cod_Sucursal := :P_Cod_Sucursal;',
'   :P506_Nom_Sucursal := :P_Nom_Sucursal;',
'   :P506_Cod_Modulo   := :P_Cod_Modulo;',
'   :P506_AUX := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
