prompt --application/pages/page_00512
begin
--   Manifest
--     PAGE: 00512
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
 p_id=>512
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_alias=>'MANTENIMIENTO-DE-ENTRADA-SALIDA-DE-ARTICULOS-STENTSAL'
,p_step_title=>'Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'}',
'',
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46,9];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241104111147'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153417865489135709)
,p_plug_name=>'Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153419454466135725)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153419642094135727)
,p_plug_name=>'Contenedor 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153419763445135728)
,p_plug_name=>'Contenedor 1.1'
,p_parent_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153421602907135747)
,p_plug_name=>'COLEC_ST_ENTSAL_DET'
,p_parent_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 TIP_ENT_SAL,',
'       c003 SER_ENT_SAL,',
'       c004 NUM_ENT_SAL,',
'       c005 COD_ARTICULO,',
'       TO_NUMBER(c006) COSTO,',
'       c007 CANTIDAD,',
'       c008 COD_SUCURSAL,',
'       c009 COD_UNIDAD_MEDIDA,',
'       c010 CANTIDAD_UB,',
'       c011 CONFIRMADO,',
'       c012 PRECIO_FOB_ADUANA,',
'       c013 COD_IVA,',
'       c014 NRO_LOTE,',
'       c015 FEC_VENCIMIENTO,',
'       c016 OBSERVACION,',
'       c017 PRECIO_VENTA,',
'       TO_NUMBER(c018) COSTO_GS,',
'       TO_NUMBER(c019) COSTO_US,',
'       c020 TIP_CAMBIO_US,',
'       c021 DES_ARTICULO,',
'       c022 GARANTIA,',
'       c023 COD_ART_CORTO,',
'       c024 IND_PRECIO,',
'       c025 IND_NO_STOCK,',
'       c026 PRECIO_LISTA,',
'       c027 ROW_ID,',
'       c028 CONTROL,',
'       TO_NUMBER(c029) TOTAL,',
'       NULL EDITAR,',
'       NULL BORRAR,',
'       NULL DETALLE',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_ST_ENTSAL_DET''',
'   AND (c028 = ''U'' OR c028 = ''I'' OR c028 IS NULL)',
'  ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_ST_ENTSAL_DET'
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
 p_id=>wwv_flow_imp.id(154416696968030516)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>154416696968030516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154416795833030517)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154416803263030518)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154416910432030519)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417003010030520)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417174319030521)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Num Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417242300030522)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417473644030524)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417597431030525)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417604552030526)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'UM'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417726126030527)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417828783030528)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154417916513030529)
,p_db_column_name=>'PRECIO_FOB_ADUANA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Precio Fob Aduana'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418095604030530)
,p_db_column_name=>'COD_IVA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'IVA'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418150982030531)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418249479030532)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418376149030533)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418476626030534)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Precio Venta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418799465030537)
,p_db_column_name=>'TIP_CAMBIO_US'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tip Cambio Us'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418892574030538)
,p_db_column_name=>'DES_ARTICULO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154418913478030539)
,p_db_column_name=>'GARANTIA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419033279030540)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod. Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419145268030541)
,p_db_column_name=>'IND_PRECIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Ind Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419237762030542)
,p_db_column_name=>'IND_NO_STOCK'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Ind No Stock'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419316765030543)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Precio Lista'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419491475030544)
,p_db_column_name=>'ROW_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419562967030545)
,p_db_column_name=>'CONTROL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419614374030546)
,p_db_column_name=>'EDITAR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P512_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419736527030547)
,p_db_column_name=>'BORRAR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P512_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;  ',
'    ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154419899256030548)
,p_db_column_name=>'DETALLE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P512_DET_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157807097625849102)
,p_db_column_name=>'COSTO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157807164399849103)
,p_db_column_name=>'COSTO_GS'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Costo Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157807231213849104)
,p_db_column_name=>'COSTO_US'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Costo Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157807344090849105)
,p_db_column_name=>'TOTAL'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154804160309601520)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548042'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:COD_ARTICULO:DES_ARTICULO:COD_UNIDAD_MEDIDA:NRO_LOTE:COD_IVA:CANTIDAD:COSTO:TOTAL:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153421707371135748)
,p_plug_name=>'Contenedor 2'
,p_parent_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153418282688135713)
,p_plug_name=>'Contenedor Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153421868281135749)
,p_plug_name=>'Agregar/Editar Detalle'
,p_region_css_classes=>'js-dialog-size1500x400'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154954042958396710)
,p_plug_name=>'Contenedor Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157808348354849115)
,p_plug_name=>'Cargar Archivo'
,p_region_css_classes=>'js-dialog-size1000x250'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157808519628849117)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(157808348354849115)
,p_button_name=>'BTCARGAR_ARCHIVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Archivo'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154953552029396705)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_button_name=>'BTAGREGAR_EDITAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Detalle'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153421487836135745)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(153419642094135727)
,p_button_name=>'BTBUSCAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Buscar'
,p_button_redirect_url=>'f?p=&APP_ID.:530:&SESSION.::&DEBUG.:530::'
,p_button_cattributes=>'style="margin-top:5px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153421562035135746)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(153419642094135727)
,p_button_name=>'BTIMPORTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Importar'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'style="margin-top:5px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154869166023412835)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_button_name=>'BTVOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:516:&SESSION.::&DEBUG.:516::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157810873997849140)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153421919820135750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153421602907135747)
,p_button_name=>'BTAGREGAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(159634279518238012)
,p_branch_name=>'GO_TO_516'
,p_branch_action=>'f?p=&APP_ID.:516:&SESSION.::&DEBUG.:516::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153417987044135710)
,p_name=>'P512_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418317681135714)
,p_name=>'P512_V_SER_ENT_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418482353135715)
,p_name=>'P512_V_TIP_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418548411135716)
,p_name=>'P512_V_TIPO_ENVIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418683859135717)
,p_name=>'P512_V_MOTIVO_ORDEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418738440135718)
,p_name=>'P512_V_DEVOLUCION_ORDEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418837199135719)
,p_name=>'P512_V_COD_MONEDA_BASE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153418958727135720)
,p_name=>'P512_V_COD_MONEDA_US'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153419036323135721)
,p_name=>'P512_V_TIPO_ORDEN_TRAB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153419141554135722)
,p_name=>'P512_V_EXCEL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153419287708135723)
,p_name=>'P512_V_CARGA_SIN_AUTORIZACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153419338794135724)
,p_name=>'P512_V_PORC_IVA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153419805577135729)
,p_name=>'P512_TIP_ENT_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_COMP_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,',
'       tip_comprobante ',
'  from tipos_comprobantes ',
' where cod_empresa = :P_COD_EMPRESA',
'   and tip_comprobante <> :P512_V_TIPO_ENVIO',
'   and cod_modulo = ''ST'' ',
' order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P512_V_TIPO_ENVIO'
,p_ajax_items_to_submit=>'P512_V_TIPO_ENVIO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153419981191135730)
,p_name=>'P512_SER_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
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
 p_id=>wwv_flow_imp.id(153420046476135731)
,p_name=>'P512_NUM_ENT_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420153735135732)
,p_name=>'P512_FEC_ENT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420242739135733)
,p_name=>'P512_TIP_COMPROBANTE_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
,p_prompt=>'Tipo Referencia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(153420342475135734)
,p_name=>'P512_SER_COMPROBANTE_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
,p_prompt=>'Serie Referencia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420423649135735)
,p_name=>'P512_NRO_COMPROBANTE_REF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153419454466135725)
,p_prompt=>'Nro. Referencia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420581420135736)
,p_name=>'P512_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, ',
'       descripcion',
'  from sucursales',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(estado,''N'')=''S'' ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P512_DESC_SUCURSAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420613211135737)
,p_name=>'P512_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420727792135738)
,p_name=>'P512_COD_MOTIVO_ENT_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_ENT_SAL_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo_ent_sal, ',
'       descripcion ',
'  from st_motivo_ent_sal ',
'  order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P512_DESC_MOTIVO_ENT_SAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420836281135739)
,p_name=>'P512_DESC_MOTIVO_ENT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153420975412135740)
,p_name=>'P512_COD_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDOR_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, ',
'       p1.cod_proveedor ',
'  from cm_proveedores p1, ',
'       personas p2 ',
' where p1.cod_empresa = :P_COD_EMPRESA',
'   and p1.cod_persona = p2.cod_persona ',
' order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P512_DESC_PROVEEDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153421051571135741)
,p_name=>'P512_DESC_PROVEEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153421182342135742)
,p_name=>'P512_COD_MONEDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDA_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda,',
'       descripcion',
'  from monedas ',
'  order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P512_DESC_MONEDA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153421282902135743)
,p_name=>'P512_DESC_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153421329359135744)
,p_name=>'P512_PATH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153419642094135727)
,p_prompt=>'Importar Planilla (csv)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415353712030503)
,p_name=>'P512_DESCRIPCION_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'U. Medida'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415478328030504)
,p_name=>'P512_PORC_IVA_COMPRA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'IVA Compra'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415512817030505)
,p_name=>'P512_TIP_CAMBIO_US_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Cambio U$'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415610502030506)
,p_name=>'P512_TOT_CANTIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Total Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415764409030507)
,p_name=>'P512_TOT_IMPORTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Total Importe'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415875726030508)
,p_name=>'P512_PRECIO_VENTA_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Precio Venta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154415956962030509)
,p_name=>'P512_HORA_ALTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154416051705030510)
,p_name=>'P512_COD_USUARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154416159126030511)
,p_name=>'P512_COSTO_GS_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Costo GS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154416227304030512)
,p_name=>'P512_COSTO_US_DET'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>'Costo US'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154416391302030513)
,p_name=>'P512_COSTO_GS_DET_AUX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154416450962030514)
,p_name=>'P512_COSTO_US_DET_AUX'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154416534709030515)
,p_name=>'P512_TOT_IMPORTE_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154868963448412833)
,p_name=>'P512_ROW_ID_AUX_CAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154869360108412837)
,p_name=>'P512_CONTROL_ORIGEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154869525070412839)
,p_name=>'P512_FEC_ALTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154869692621412840)
,p_name=>'P512_TOT_CANTIDAD_ANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154869786471412841)
,p_name=>'P512_TOT_IMPORTE_ANT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154869969592412843)
,p_name=>'P512_CONFIRMADO_DET'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870046077412844)
,p_name=>'P512_GARANTIA_DET'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870190912412845)
,p_name=>'P512_COD_ART_CORTO_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'Cod. Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_CORTO_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion, ',
'       a.cod_articulo, ',
'       nvl(sum(e.cant_dispon), 0) cantidad,',
'       a.cod_art_corto ',
'  from st_articulos a, ',
'       st_existencia_art e ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'') ',
'   and a.cod_empresa = e.cod_empresa (+) ',
'   and a.cod_articulo = e.cod_articulo (+) ',
'   and :P512_COD_SUCURSAL = e.cod_sucursal (+) ',
' group by a.cod_art_corto,a.descripcion, a.cod_articulo',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870217301412846)
,p_name=>'P512_COD_ARTICULO_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion, ',
'       a.cod_articulo, ',
'       nvl(sum(e.cant_dispon), 0) cantidad,',
'       a.cod_art_corto ',
'  from st_articulos a, ',
'       st_existencia_art e ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'') ',
'   and a.cod_empresa = e.cod_empresa (+) ',
'   and a.cod_articulo = e.cod_articulo (+) ',
'   and :P512_COD_SUCURSAL = e.cod_sucursal (+) ',
' group by a.cod_art_corto,a.descripcion, a.cod_articulo',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870390921412847)
,p_name=>'P512_DESC_ARTICULO_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870477601412848)
,p_name=>'P512_COD_UNIDAD_MEDIDA_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'UM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870537476412849)
,p_name=>'P512_NRO_LOTE_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LOTES_STENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char( l.fec_vencimiento , ''dd/mm/yyyy'' ) fec_vencimiento, ',
'       l.nro_lote,',
'       l.cod_iva,',
'       i.porc_iva_venta ',
'  from st_lotes l,',
'       st_iva i',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_articulo = :P512_COD_ARTICULO_ADD',
'   and l.cod_iva = i.cod_iva ',
'order by l.fec_vencimiento'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154870635831412850)
,p_name=>'P512_COD_IVA_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'IVA'
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
 p_id=>wwv_flow_imp.id(154953164892396701)
,p_name=>'P512_CANTIDAD_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154953200369396702)
,p_name=>'P512_COSTO_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'Costo'
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
 p_id=>wwv_flow_imp.id(154953369860396703)
,p_name=>'P512_TOTAL_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>'Total'
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
 p_id=>wwv_flow_imp.id(154953457737396704)
,p_name=>'P512_TOTAL_AUX'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154953648636396706)
,p_name=>'P512_V_MULT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154953787311396707)
,p_name=>'P512_V_DIV'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(153418282688135713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154954101064396711)
,p_name=>'P512_P_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154954042958396710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154954224018396712)
,p_name=>'P512_P_TIP_MOVIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154954042958396710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154954399513396713)
,p_name=>'P512_P_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154954042958396710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154954490326396714)
,p_name=>'P512_P_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154954042958396710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154954544161396715)
,p_name=>'P512_P_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154954042958396710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154954697344396716)
,p_name=>'P512_P_P_CONSULTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154954042958396710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154955073215396720)
,p_name=>'P512_COSTO_ADD_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154955164740396721)
,p_name=>'P512_ORIGEN_ADD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154955265769396722)
,p_name=>'P512_TIP_CAMBIO_US_ADD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154955302992396723)
,p_name=>'P512_MENSAJE_COD_ART_CORTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154955454806396724)
,p_name=>'P512_COD_RELACION_UM_ADD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154955960220396729)
,p_name=>'P512_CANTIDAD_UB_ADD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154956074134396730)
,p_name=>'P512_IND_ENT_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154956100109396731)
,p_name=>'P512_FEC_VENCIMIENTO_ADD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154956214364396732)
,p_name=>'P512_CARGA_LOTE_ADD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154956314802396733)
,p_name=>'P512_MENSAJE_CONFIRM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154956642045396736)
,p_name=>'P512_PRECIO_VENTA_DET_AUX'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154956740462396737)
,p_name=>'P512_MENSAJE_COD_ART_2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154957135118396741)
,p_name=>'P512_COD_GRUPO_ART_ADD'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156753752065327701)
,p_name=>'P512_MENSAJE_CONFIRM_2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156754199560327705)
,p_name=>'P512_MENSAJE_COD_ARTICULO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156754798505327711)
,p_name=>'P512_VPROD_AUX'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156755248911327716)
,p_name=>'P512_MENSAJE_CONFIRM_LOTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156755407892327718)
,p_name=>'P512_MENSAJE_LOTE_2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156755971559327723)
,p_name=>'P512_PORCENTAJE_SPP_ADD'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156756236244327726)
,p_name=>'P512_PRECIO_LISTA_ADD'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156756392444327727)
,p_name=>'P512_INCREM_REP_STNGO_ADD'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156756638220327730)
,p_name=>'P512_MENSAJE_CANTIDAD'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156757310868327737)
,p_name=>'P512_NRO_LOTE_AUX'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156757517202327739)
,p_name=>'P512_CANTIDAD_ADD_AUX'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156758162027327745)
,p_name=>'P512_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153421602907135747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156758321515327747)
,p_name=>'P512_DET_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153421602907135747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156758446822327748)
,p_name=>'P512_DELETE_DATA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153421602907135747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157808480903849116)
,p_name=>'P512_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157808348354849115)
,p_prompt=>'Documento'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157809779610849129)
,p_name=>'P512_MENSAJE_PATH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153419642094135727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157810135134849133)
,p_name=>'P512_REFERENCIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153419763445135728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157811149249849143)
,p_name=>'P512_OBSERVACION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(153421707371135748)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157811217952849144)
,p_name=>'P512_OBSERVACION_ADD'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(153421868281135749)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159633356576238003)
,p_name=>'P512_MENSAJE_NUM_ENT_SAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153417865489135709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154415120104030501)
,p_name=>'DA_BTAGREGAR_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153421919820135750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156756584443327729)
,p_event_id=>wwv_flow_imp.id(154415120104030501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P512_COD_ART_CORTO_ADD,P512_COD_ARTICULO_ADD,P512_DESC_ARTICULO_ADD,P512_COD_UNIDAD_MEDIDA_ADD,P512_NRO_LOTE_ADD,P512_COD_IVA_ADD,P512_CANTIDAD_ADD,P512_COSTO_ADD,P512_TOTAL_ADD,P512_COSTO_ADD_AUX,P512_CANTIDAD_UB_ADD,P512_TIP_CAMBIO_US_ADD,P512_ORIG'
||'EN_ADD,P512_COD_RELACION_UM_ADD,P512_FEC_VENCIMIENTO_ADD,P512_CARGA_LOTE_ADD,P512_COD_GRUPO_ART_ADD,P512_PORCENTAJE_SPP_ADD,P512_PRECIO_LISTA_ADD,P512_INCREM_REP_STNGO_ADD,P512_MENSAJE_COD_ART_CORTO,P512_MENSAJE_CONFIRM,P512_MENSAJE_CONFIRM_2,P512_ME'
||'NSAJE_CONFIRM_LOTE,P512_MENSAJE_COD_ART_2,P512_MENSAJE_COD_ARTICULO,P512_MENSAJE_LOTE_2,P512_MENSAJE_CANTIDAD,P512_NRO_LOTE_AUX,P512_CANTIDAD_ADD_AUX,P512_EDIT_DATA_DET'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154415212982030502)
,p_event_id=>wwv_flow_imp.id(154415120104030501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153421868281135749)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154953893479396708)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154953905502396709)
,p_event_id=>wwv_flow_imp.id(154953893479396708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154954771082396717)
,p_name=>'DA_COD_ART_CORTO_ADD'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_COD_ART_CORTO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154954882471396718)
,p_event_id=>wwv_flow_imp.id(154954771082396717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_COD_ART_CORTO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154954947949396719)
,p_event_id=>wwv_flow_imp.id(154954771082396717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.VALIDATE_COD_CORTO(pcod_empresa       => :P_COD_EMPRESA,',
'                                pcod_art_corto     => :P512_COD_ART_CORTO_ADD,',
'                                pcod_moneda        => :P512_COD_MONEDA,',
'                                pcod_moneda_base   => :P512_V_COD_MONEDA_BASE,',
'                                ptip_cambio_us     => :P512_TIP_CAMBIO_US_ADD,',
'                                pcantidad          => :P512_CANTIDAD_ADD,',
'                                pnro_lote          => :P512_NRO_LOTE_ADD,',
'                                pind_ent_sal       => :P512_IND_ENT_SAL,',
'                                pcod_articulo      => :P512_COD_ARTICULO_ADD,                             ',
'                                pmensaje           => :P512_MENSAJE_COD_ART_CORTO,',
'                                pdesc_articulo     => :P512_DESC_ARTICULO_ADD,',
'                                porigen            => :P512_ORIGEN_ADD,',
'                                pcod_relacion_um   => :P512_COD_RELACION_UM_ADD,',
'                                pcosto             => :P512_COSTO_ADD_AUX,',
'                                pcod_unidad_medida => :P512_COD_UNIDAD_MEDIDA_ADD,',
'                                pmult              => :P512_V_MULT,',
'                                pdiv               => :P512_V_DIV,',
'                                pcantidad_ub       => :P512_CANTIDAD_UB_ADD,',
'                                pmensaje_confirm   => :P512_MENSAJE_CONFIRM,',
'                                pcarga_lote        => :P512_CARGA_LOTE_ADD,',
'                                pfec_vencimiento   => :P512_FEC_VENCIMIENTO_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_ART_CORTO_ADD,P512_COD_MONEDA,P512_V_COD_MONEDA_BASE,P512_TIP_CAMBIO_US_ADD,P512_CANTIDAD_ADD,P512_NRO_LOTE_ADD,P512_IND_ENT_SAL'
,p_attribute_03=>'P512_COD_ARTICULO_ADD,P512_MENSAJE_COD_ART_CORTO,P512_DESC_ARTICULO_ADD,P512_ORIGEN_ADD,P512_COD_RELACION_UM_ADD,P512_COSTO_ADD_AUX,P512_COD_UNIDAD_MEDIDA_ADD,P512_V_MULT,P512_V_DIV,P512_CANTIDAD_UB_ADD,P512_MENSAJE_CONFIRM,P512_CARGA_LOTE_ADD,P512_F'
||'EC_VENCIMIENTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_COD_ART_CORTO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154955846562396728)
,p_event_id=>wwv_flow_imp.id(154954771082396717)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_COSTO_ADD := TO_CHAR(:P512_COSTO_ADD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COSTO_ADD_AUX'
,p_attribute_03=>'P512_COSTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_COD_ART_CORTO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154956439514396734)
,p_event_id=>wwv_flow_imp.id(154954771082396717)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P512_MENSAJE_CONFIRM.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_CONFIRM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154956586492396735)
,p_event_id=>wwv_flow_imp.id(154954771082396717)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.VALIDATE_COD_CORTO_2(pcod_empresa     => :P_COD_EMPRESA,',
'                                  pcod_articulo    => :P512_COD_ARTICULO_ADD,',
'                                  pcod_moneda_base => :P512_V_COD_MONEDA_BASE,',
'                                  pporc_iva        => :P512_V_PORC_IVA,',
'                                  pfec_ent_sal     => :P512_FEC_ENT_SAL,',
'                                  pcod_grupo_art   => :P512_COD_GRUPO_ART_ADD,',
'                                  pcod_sucursal    => :P512_COD_SUCURSAL,',
'                                  pprecio_venta    => :P512_PRECIO_VENTA_DET_AUX,',
'                                  pmensaje         => :P512_MENSAJE_COD_ART_2,',
'                                  pnro_lote        => :P512_NRO_LOTE_ADD); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO_ADD 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_ARTICULO_ADD,P512_V_COD_MONEDA_BASE,P512_V_PORC_IVA,P512_FEC_ENT_SAL,P512_COD_GRUPO_ART_ADD,P512_COD_SUCURSAL'
,p_attribute_03=>'P512_PRECIO_VENTA_DET_AUX,P512_MENSAJE_COD_ART_2,P512_NRO_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957275115396742)
,p_event_id=>wwv_flow_imp.id(154954771082396717)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_PRECIO_VENTA_DET := TO_CHAR(:P512_PRECIO_VENTA_DET_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO_ADD 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_PRECIO_VENTA_DET_AUX'
,p_attribute_03=>'P512_PRECIO_VENTA_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154955553128396725)
,p_name=>'DA_MENSAJE_COD_ART_CORTO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154955624231396726)
,p_event_id=>wwv_flow_imp.id(154955553128396725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_COD_ART_CORTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154955722585396727)
,p_event_id=>wwv_flow_imp.id(154955553128396725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_COD_ART_CORTO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_COD_ART_CORTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154956877556396738)
,p_name=>'DA_MENSAJE_COD_ART_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_COD_ART_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154956988870396739)
,p_event_id=>wwv_flow_imp.id(154956877556396738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_COD_ART_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957051539396740)
,p_event_id=>wwv_flow_imp.id(154956877556396738)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_COD_ART_2.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_COD_ART_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154957380112396743)
,p_name=>'DA_COD_ARTICULO_ADD'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_COD_ARTICULO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957489793396744)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_COD_ARTICULO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957582142396745)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.VALIDATE_COD_ARTICULO(pcod_empresa       => :P_COD_EMPRESA,',
'                                   pcod_articulo      => :P512_COD_ARTICULO_ADD,',
'                                   pcod_moneda        => :P512_COD_MONEDA,',
'                                   pcod_moneda_base   => :P512_V_COD_MONEDA_BASE,',
'                                   ptip_cambio_us     => :P512_TIP_CAMBIO_US_ADD,',
'                                   pcantidad          => :P512_CANTIDAD_ADD,',
'                                   pnro_lote          => :P512_NRO_LOTE_ADD,',
'                                   pind_ent_sal       => :P512_IND_ENT_SAL,                          ',
'                                   pmensaje           => :P512_MENSAJE_COD_ART_CORTO,',
'                                   pdesc_articulo     => :P512_DESC_ARTICULO_ADD,',
'                                   porigen            => :P512_ORIGEN_ADD,',
'                                   pcod_relacion_um   => :P512_COD_RELACION_UM_ADD,',
'                                   pcosto             => :P512_COSTO_ADD_AUX,',
'                                   pcod_unidad_medida => :P512_COD_UNIDAD_MEDIDA_ADD,',
'                                   pmult              => :P512_V_MULT,',
'                                   pdiv               => :P512_V_DIV,',
'                                   pcantidad_ub       => :P512_CANTIDAD_UB_ADD,',
'                                   pmensaje_confirm   => :P512_MENSAJE_CONFIRM,',
'                                   pcarga_lote        => :P512_CARGA_LOTE_ADD,',
'                                   pfec_vencimiento   => :P512_FEC_VENCIMIENTO_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_ARTICULO_ADD,P512_COD_MONEDA,P512_V_COD_MONEDA_BASE,P512_TIP_CAMBIO_US_ADD,P512_CANTIDAD_ADD,P512_NRO_LOTE_ADD,P512_IND_ENT_SAL'
,p_attribute_03=>'P512_MENSAJE_COD_ART_CORTO,P512_DESC_ARTICULO_ADD,P512_ORIGEN_ADD,P512_COD_RELACION_UM_ADD,P512_COSTO_ADD_AUX,P512_COD_UNIDAD_MEDIDA_ADD,P512_V_MULT,P512_V_DIV,P512_CANTIDAD_UB_ADD,P512_MENSAJE_CONFIRM,P512_CARGA_LOTE_ADD,P512_FEC_VENCIMIENTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_COD_ARTICULO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957614374396746)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_COSTO_ADD := TO_CHAR(:P512_COSTO_ADD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COSTO_ADD_AUX'
,p_attribute_03=>'P512_COSTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_COD_ARTICULO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957793512396747)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P512_MENSAJE_CONFIRM.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_CONFIRM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957810251396748)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.VALIDATE_COD_CORTO_2(pcod_empresa     => :P_COD_EMPRESA,',
'                                  pcod_articulo    => :P512_COD_ARTICULO_ADD,',
'                                  pcod_moneda_base => :P512_V_COD_MONEDA_BASE,',
'                                  pporc_iva        => :P512_V_PORC_IVA,',
'                                  pfec_ent_sal     => :P512_FEC_ENT_SAL,',
'                                  pcod_grupo_art   => :P512_COD_GRUPO_ART_ADD,',
'                                  pcod_sucursal    => :P512_COD_SUCURSAL,',
'                                  pprecio_venta    => :P512_PRECIO_VENTA_DET_AUX,',
'                                  pmensaje         => :P512_MENSAJE_COD_ART_2,',
'                                  pnro_lote        => :P512_NRO_LOTE_ADD); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICUILO 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_ARTICULO_ADD,P512_V_COD_MONEDA_BASE,P512_V_PORC_IVA,P512_FEC_ENT_SAL,P512_COD_GRUPO_ART_ADD,P512_COD_SUCURSAL'
,p_attribute_03=>'P512_PRECIO_VENTA_DET_AUX,P512_MENSAJE_COD_ART_2,P512_NRO_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154957964493396749)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_PRECIO_VENTA_DET := TO_CHAR(:P512_PRECIO_VENTA_DET_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 4 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_PRECIO_VENTA_DET_AUX'
,p_attribute_03=>'P512_PRECIO_VENTA_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154958081253396750)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.VALIDATE_COD_ART_2(pcod_empresa     => :P_COD_EMPRESA,',
'                                ptip_comp_ref    => :P512_TIP_COMPROBANTE_REF,',
'                                pser_comp_ref    => :P512_SER_COMPROBANTE_REF,',
'                                pnro_comp_ref    => :P512_NRO_COMPROBANTE_REF,',
'                                pcod_articulo    => :P512_COD_ARTICULO_ADD,',
'                                pmensaje         => :P512_MENSAJE_COD_ARTICULO,',
'                                pmensaje_confirm => :P512_MENSAJE_CONFIRM_2,',
'                                pprod            => :P512_VPROD_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 5 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_TIP_COMPROBANTE_REF,P512_SER_COMPROBANTE_REF,P512_NRO_COMPROBANTE_REF,P512_COD_ARTICULO_ADD'
,p_attribute_03=>'P512_MENSAJE_COD_ARTICULO,P512_MENSAJE_CONFIRM_2,P512_VPROD_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156754528623327709)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P512_MENSAJE_CONFIRM_2.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_CONFIRM_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156754630982327710)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VINCULA_PRODUCTO_REPUESTO(:P512_VPROD_AUX, :P512_COD_ARTICULO_ADD, ''I'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 6 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_VPROD_AUX,P512_COD_ARTICULO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156755884519327722)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_COD_SUCURSAL IN(''05'') THEN',
'        STENTSAL.VALIDATE_COD_ART_3(pcod_sucursal         => :P512_COD_SUCURSAL,',
'                                    pcod_empresa          => :P_COD_EMPRESA,',
'                                    pcod_articulo         => :P512_COD_ARTICULO_ADD,',
'                                    pcod_moneda           => :P512_COD_MONEDA,',
'                                    pcod_moneda_base      => :P512_V_COD_MONEDA_BASE,',
'                                    ptip_cambio_us        => :P512_TIP_CAMBIO_US_ADD,',
'                                    ptip_comp_ref         => :P512_TIP_COMPROBANTE_REF,',
'                                    pser_comp_ref         => :P512_SER_COMPROBANTE_REF,',
'                                    pnro_comp_ref         => :P512_NRO_COMPROBANTE_REF,',
'                                    pcantidad             => :P512_CANTIDAD_ADD,',
'                                    pnro_lote             => :P512_NRO_LOTE_ADD,',
'                                    pind_ent_sal          => :P512_IND_ENT_SAL,',
'                                    pdesc_articulo        => :P512_DESC_ARTICULO_ADD,',
'                                    porigen               => :P512_ORIGEN_ADD,',
'                                    pcod_relacion_um      => :P512_COD_RELACION_UM_ADD,',
'                                    pcosto                => :P512_COSTO_ADD_AUX,',
'                                    pcod_unidad_medida    => :P512_COD_UNIDAD_MEDIDA_ADD,',
'                                    pporcentaje_spp       => :P512_PORCENTAJE_SPP_ADD,',
'                                    pmensaje              => :P512_MENSAJE_COD_ART_2,',
'                                    pmensaje_confirm      => :P512_MENSAJE_CONFIRM_2,',
'                                    pmult                 => :P512_V_MULT,',
'                                    pdiv                  => :P512_V_DIV,',
'                                    pcantidad_ub          => :P512_CANTIDAD_UB_ADD,',
'                                    pcarga_lote           => :P512_CARGA_LOTE_ADD,',
'                                    pfec_vencimiento      => :P512_FEC_VENCIMIENTO_ADD,',
'                                    pincremento_rep_stngo => :P512_INCREM_REP_STNGO_ADD);',
'    END IF;                                ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 7 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COD_SUCURSAL,P_COD_EMPRESA,P512_COD_ARTICULO_ADD,P512_COD_MONEDA,P512_V_COD_MONEDA_BASE,P512_TIP_CAMBIO_US_ADD,P512_TIP_COMPROBANTE_REF,P512_SER_COMPROBANTE_REF,P512_NRO_COMPROBANTE_REF,P512_CANTIDAD_ADD,P512_NRO_LOTE_ADD,P512_IND_ENT_SAL'
,p_attribute_03=>'P512_DESC_ARTICULO_ADD,P512_ORIGEN_ADD,P512_COD_RELACION_UM_ADD,P512_COSTO_ADD_AUX,P512_COD_UNIDAD_MEDIDA_ADD,P512_PORCENTAJE_SPP_ADD,P512_MENSAJE_COD_ART_2,P512_MENSAJE_CONFIRM_2,P512_V_MULT,P512_V_DIV,P512_CANTIDAD_UB_ADD,P512_CARGA_LOTE_ADD,P512_F'
||'EC_VENCIMIENTO_ADD,P512_INCREM_REP_STNGO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156756026105327724)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_COSTO_ADD := TO_CHAR(:P512_COSTO_ADD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 8 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COSTO_ADD_AUX'
,p_attribute_03=>'P512_COSTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156756169146327725)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_COD_SUCURSAL IN(''05'') THEN',
'        STENTSAL.VALIDATE_COD_ART_4(pcod_empresa          => :P_COD_EMPRESA,',
'                                    pcod_articulo         => :P512_COD_ARTICULO_ADD,',
'                                    pcod_moneda_base      => :P512_V_COD_MONEDA_BASE,',
'                                    pporc_iva             => :P512_V_PORC_IVA,',
'                                    pfec_ent_sal          => :P512_FEC_ENT_SAL,',
'                                    pcod_grupo_art        => :P512_COD_GRUPO_ART_ADD,',
'                                    pcod_sucursal         => :P512_P_COD_SUCURSAL,',
'                                    pcosto                => :P512_COSTO_ADD_AUX,',
'                                    pincremento_rep_stngo => :P512_INCREM_REP_STNGO_ADD,',
'                                    ptip_comp_ref         => :P512_TIP_COMPROBANTE_REF,',
'                                    pser_comp_ref         => :P512_SER_COMPROBANTE_REF,',
'                                    pnro_comp_ref         => :P512_NRO_COMPROBANTE_REF,',
'                                    pporcentaje_spp       => :P512_PORCENTAJE_SPP_ADD,',
'                                    pprecio_venta         => :P512_PRECIO_VENTA_DET_AUX,',
'                                    pmensaje              => :P512_MENSAJE_COD_ART_2,',
'                                    pnro_lote             => :P512_NRO_LOTE_ADD,',
'                                    pprecio_lista         => :P512_PRECIO_LISTA_ADD);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 9 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_ARTICULO_ADD,P512_V_COD_MONEDA_BASE,P512_V_PORC_IVA,P512_FEC_ENT_SAL,P512_COD_GRUPO_ART_ADD,P512_P_COD_SUCURSAL,P512_COSTO_ADD_AUX,P512_TIP_COMPROBANTE_REF,P512_SER_COMPROBANTE_REF,P512_NRO_COMPROBANTE_REF,P512_PORCENTAJE_SPP_A'
||'DD,P512_INCREM_REP_STNGO_ADD'
,p_attribute_03=>'P512_PRECIO_VENTA_DET_AUX,P512_MENSAJE_COD_ART_2,P512_NRO_LOTE_ADD,P512_PRECIO_LISTA_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156756400207327728)
,p_event_id=>wwv_flow_imp.id(154957380112396743)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_COSTO_ADD := TO_CHAR(:P512_COSTO_ADD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO10 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COSTO_ADD_AUX'
,p_attribute_03=>'P512_COSTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156754293397327706)
,p_name=>'DA_MENSAJE_COD_ARTICULO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156754322207327707)
,p_event_id=>wwv_flow_imp.id(156754293397327706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156754472397327708)
,p_event_id=>wwv_flow_imp.id(156754293397327706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_COD_ARTICULO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156754808074327712)
,p_name=>'DA_NRO_LOTE_ADD'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_NRO_LOTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156754938015327713)
,p_event_id=>wwv_flow_imp.id(156754808074327712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_NRO_LOTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156755030916327714)
,p_event_id=>wwv_flow_imp.id(156754808074327712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.VALIDATE_NRO_LOTE(pcod_empresa     => :P_COD_EMPRESA,',
'                               pcod_articulo    => :P512_COD_ARTICULO_ADD,',
'                               pind_ent_sal     => :P512_IND_ENT_SAL,',
'                               pnro_lote_in     => :P512_NRO_LOTE_ADD,',
'                               pcarga_lote      => :P512_CARGA_LOTE_ADD,',
'                               pfec_vencimiento => :P512_FEC_VENCIMIENTO_ADD,',
'                               pcod_iva         => :P512_COD_IVA_ADD,',
'                               pporc_iva_compra => :P512_PORC_IVA_COMPRA_DET,',
'                               pnro_lote        => :P512_NRO_LOTE_AUX,',
'                               pmensaje         => :P512_MENSAJE_LOTE_2,',
'                               pmensaje_confirm => :P512_MENSAJE_CONFIRM_LOTE); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_LOTE_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_ARTICULO_ADD,P512_IND_ENT_SAL,P512_NRO_LOTE_ADD'
,p_attribute_03=>'P512_CARGA_LOTE_ADD,P512_FEC_VENCIMIENTO_ADD,P512_COD_IVA_ADD,P512_PORC_IVA_COMPRA_DET,P512_MENSAJE_LOTE_2,P512_MENSAJE_CONFIRM_LOTE,P512_NRO_LOTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_NRO_LOTE_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156757442930327738)
,p_event_id=>wwv_flow_imp.id(156754808074327712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_NRO_LOTE_AUX IS NOT NULL THEN',
'        :P512_NRO_LOTE_ADD := :P512_NRO_LOTE_AUX;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_LOTE_ADD 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_NRO_LOTE_AUX'
,p_attribute_03=>'P512_NRO_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_NRO_LOTE_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156755152083327715)
,p_event_id=>wwv_flow_imp.id(156754808074327712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P512_MENSAJE_CONFIRM_LOTE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_CONFIRM_LOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156755334319327717)
,p_event_id=>wwv_flow_imp.id(156754808074327712)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P512_COD_MOTIVO_ENT_SAL = ''20''  and :P512_NRO_LOTE_ADD in(''1'',''5'') then',
'	    :P512_MENSAJE_LOTE_2 := ''Lote no valido para obsolecencia ''||sqlerrm;',
'	end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_LOTE_ADD 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COD_MOTIVO_ENT_SAL,P512_NRO_LOTE_ADD'
,p_attribute_03=>'P512_MENSAJE_LOTE_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156755511719327719)
,p_name=>'DA_MENSAJE_LOTE_2'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_LOTE_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156755667324327720)
,p_event_id=>wwv_flow_imp.id(156755511719327719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_LOTE_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156755705350327721)
,p_event_id=>wwv_flow_imp.id(156755511719327719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_LOTE_2.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_LOTE_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156756770533327731)
,p_name=>'DA_MENSAJE_CANTIDAD'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156756853850327732)
,p_event_id=>wwv_flow_imp.id(156756770533327731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_CANTIDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156756963190327733)
,p_event_id=>wwv_flow_imp.id(156756770533327731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_CANTIDAD.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156757043993327734)
,p_name=>'DA_CANTIDAD_ADD'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156757177687327735)
,p_event_id=>wwv_flow_imp.id(156757043993327734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_CANTIDAD_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156757255840327736)
,p_event_id=>wwv_flow_imp.id(156757043993327734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'        STENTSAL.VALIDATE_CANTIDAD(pcod_empresa         => :P_COD_EMPRESA,',
'                                   pind_ent_sal         => :P512_IND_ENT_SAL,',
'                                   pcod_sucursal        => :P512_COD_SUCURSAL,',
'                                   pcod_articulo        => :P512_COD_ARTICULO_ADD,',
'                                   pnro_lote            => :P512_NRO_LOTE_ADD,',
'                                   pcantidad            => :P512_CANTIDAD_ADD,',
'                                   pcod_motivo_en_sal   => :P512_COD_MOTIVO_ENT_SAL,',
'                                   ppath                => :P512_PATH,',
'                                   pmult                => :P512_V_MULT,',
'                                   pdiv                 => :P512_V_DIV,',
'                                   pcosto               => :P512_COSTO_ADD_AUX,',
'                                   ptotal_in            => :P512_TOTAL_AUX,',
'                                   ptot_cantidad_in     => :P512_TOT_CANTIDAD,',
'                                   ptot_cantidad_ant_in => :P512_TOT_CANTIDAD_ANT,',
'                                   ptot_importe_in      => :P512_TOT_IMPORTE_AUX,',
'                                   ptot_importe_ant_in  => :P512_TOT_IMPORTE_ANT,',
'                                   pmensaje             => :P512_MENSAJE_CANTIDAD,',
'                                   pcantidad_out        => :P512_CANTIDAD_ADD_AUX,',
'                                   pcantidad_ub         => :P512_CANTIDAD_UB_ADD,',
'                                   ptotal               => :P512_TOTAL_AUX,',
'                                   ptot_cantidad        => :P512_TOT_CANTIDAD,',
'                                   ptot_cantidad_ant    => :P512_TOT_CANTIDAD_ANT,',
'                                   ptot_importe         => :P512_TOT_IMPORTE_AUX,',
'                                   ptot_importe_ant     => :P512_TOT_IMPORTE_ANT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_IND_ENT_SAL,P512_COD_SUCURSAL,P512_COD_ARTICULO_ADD,P512_NRO_LOTE_ADD,P512_CANTIDAD_ADD,P512_COD_MOTIVO_ENT_SAL,P512_PATH,P512_V_MULT,P512_V_DIV,P512_COSTO_ADD_AUX,P512_TOTAL_AUX,P512_TOT_CANTIDAD,P512_TOT_CANTIDAD_ANT,P512_TOT_IMP'
||'ORTE_AUX,P512_TOT_IMPORTE_ANT'
,p_attribute_03=>'P512_CANTIDAD_ADD_AUX,P512_CANTIDAD_UB_ADD,P512_TOTAL_AUX,P512_TOT_CANTIDAD,P512_TOT_CANTIDAD_ANT,P512_TOT_IMPORTE_AUX,P512_TOT_IMPORTE_ANT,P512_MENSAJE_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_CANTIDAD_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156757651513327740)
,p_event_id=>wwv_flow_imp.id(156757043993327734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_CANTIDAD_ADD_AUX IS NOT NULL THEN',
'        :P512_CANTIDAD_ADD := :P512_CANTIDAD_ADD_AUX;  ',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_CANTIDAD_ADD_AUX'
,p_attribute_03=>'P512_CANTIDAD_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_CANTIDAD_ADD_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156757745919327741)
,p_event_id=>wwv_flow_imp.id(156757043993327734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_TOTAL_ADD := TO_CHAR(:P512_TOTAL_AUX,''999G999G990D00'');',
'    :P512_TOT_IMPORTE := TO_CHAR(:P512_TOT_IMPORTE_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_TOTAL_AUX,P512_TOT_IMPORTE_AUX'
,p_attribute_03=>'P512_TOTAL_ADD,P512_TOT_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156757817468327742)
,p_name=>'DA_BTAGREGAR_EDITAR_DET'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154953552029396705)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156757978394327743)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_COD_ART_CORTO_ADD,P512_COD_ARTICULO_ADD,P512_DESC_ARTICULO_ADD,P512_COD_UNIDAD_MEDIDA_ADD,P512_NRO_LOTE_ADD,P512_COD_IVA_ADD,P512_CANTIDAD_ADD,P512_COSTO_ADD,P512_TOTAL_ADD,P512_COSTO_ADD_AUX,P512_CANTIDAD_UB_ADD,P512_TIP_CAMBIO_US_ADD,P512_ORIG'
||'EN_ADD,P512_COD_RELACION_UM_ADD,P512_FEC_VENCIMIENTO_ADD,P512_CARGA_LOTE_ADD,P512_COD_GRUPO_ART_ADD,P512_PORCENTAJE_SPP_ADD,P512_PRECIO_LISTA_ADD,P512_INCREM_REP_STNGO_ADD,P512_NRO_LOTE_AUX,P512_CANTIDAD_ADD_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156758098527327744)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_CANTIDAD_ADD <= 0  OR :P512_CANTIDAD_ADD IS NULL THEN',
'        :P512_MENSAJE_CANTIDAD := ''Debe ser completar cantidad y/o que sea positiva mayor a 0 para efectuar la operacion'';',
'    ELSE ',
'        :P512_MENSAJE_CANTIDAD := NULL;',
'        ',
'        STENTSAL.ADD_COL(pcod_empresa       => :P_COD_EMPRESA,',
'                         ptip_ent_sal       => :P512_TIP_ENT_SAL,',
'                         pser_ent_sal       => :P512_SER_ENT_SAL,',
'                         pnum_ent_sal       => :P512_NUM_ENT_SAL,',
'                         pcod_articulo      => :P512_COD_ARTICULO_ADD,',
'                         pcosto             => :P512_COSTO_ADD_AUX,',
'                         pcantidad          => :P512_CANTIDAD_ADD,',
'                         pcod_sucursal      => :P512_COD_SUCURSAL,',
'                         pcod_unidad_medida => :P512_COD_UNIDAD_MEDIDA_ADD,',
'                         pcantidad_ub       => :P512_CANTIDAD_UB_ADD,',
'                         pconfirmado        => :P512_CONFIRMADO_DET,',
'                         pprecio_fob_aduana => NULL,',
'                         pcod_iva           => :P512_COD_IVA_ADD,',
'                         pnro_lote          => :P512_NRO_LOTE_ADD,',
'                         pfec_vencimiento   => :P512_FEC_VENCIMIENTO_ADD,',
'                         pobservacion       => :P512_OBSERVACION_ADD,',
'                         pprecio_venta      => :P512_PRECIO_VENTA_DET_AUX,',
'                         pcosto_gs          => :P512_COSTO_GS_DET_AUX,',
'                         pcosto_us          => :P512_COSTO_US_DET_AUX,',
'                         ptip_cambio_us     => :P512_TIP_CAMBIO_US_ADD,',
'                         pdes_articulo      => :P512_DESC_ARTICULO_ADD,',
'                         pgarantia          => :P512_GARANTIA_DET,',
'                         pcod_art_corto     => :P512_COD_ART_CORTO_ADD,',
'                         pind_precio        => NULL,',
'                         pind_no_stock      => NULL,',
'                         pprecio_lista      => :P512_PRECIO_LISTA_ADD,',
'                         ptotal             => :P512_TOTAL_AUX);',
'    END IF;                    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTAGREGAR_EDITAR_DET ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_TIP_ENT_SAL,P512_SER_ENT_SAL,P512_NUM_ENT_SAL,P512_COD_ARTICULO_ADD,P512_COSTO_ADD_AUX,P512_CANTIDAD_ADD,P512_COD_SUCURSAL,P512_COD_UNIDAD_MEDIDA_ADD,P512_CANTIDAD_UB_ADD,P512_CONFIRMADO_DET,P512_COD_IVA_ADD,P512_NRO_LOTE_ADD,P512_'
||'FEC_VENCIMIENTO_ADD,P512_PRECIO_VENTA_DET_AUX,P512_COSTO_GS_DET_AUX,P512_COSTO_US_DET_AUX,P512_TIP_CAMBIO_US_ADD,P512_DESC_ARTICULO_ADD,P512_GARANTIA_DET,P512_COD_ART_CORTO_ADD,P512_PRECIO_LISTA_ADD,P512_TOTAL_AUX,P512_OBSERVACION_ADD'
,p_attribute_03=>'P512_MENSAJE_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P512_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156758548339327749)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_CANTIDAD_ADD <= 0  OR :P512_CANTIDAD_ADD IS NULL THEN',
'        :P512_MENSAJE_CANTIDAD := ''Debe ser completar cantidad y/o que sea positiva mayor a 0 para efectuar la operacion'';',
'    ELSE ',
'        :P512_MENSAJE_CANTIDAD := NULL;',
'',
'        STENTSAL.EDIT_COL(pseq_id            => :P512_EDIT_DATA_DET,',
'                          pcod_empresa       => :P_COD_EMPRESA,',
'                          ptip_ent_sal       => :P512_TIP_ENT_SAL,',
'                          pser_ent_sal       => :P512_SER_ENT_SAL,',
'                          pnum_ent_sal       => :P512_NUM_ENT_SAL,',
'                          pcod_articulo      => :P512_COD_ARTICULO_ADD,',
'                          pcosto             => :P512_COSTO_ADD_AUX,',
'                          pcantidad          => :P512_CANTIDAD_ADD,',
'                          pcod_sucursal      => :P512_COD_SUCURSAL,',
'                          pcod_unidad_medida => :P512_COD_UNIDAD_MEDIDA_ADD,',
'                          pcantidad_ub       => :P512_CANTIDAD_UB_ADD,',
'                          pconfirmado        => :P512_CONFIRMADO_DET,',
'                          pprecio_fob_aduana => NULL,',
'                          pcod_iva           => :P512_COD_IVA_ADD,',
'                          pnro_lote          => :P512_NRO_LOTE_ADD,',
'                          pfec_vencimiento   => :P512_FEC_VENCIMIENTO_ADD,',
'                          pobservacion       => :P512_OBSERVACION_ADD,',
'                          pprecio_venta      => :P512_PRECIO_VENTA_DET_AUX,',
'                          pcosto_gs          => :P512_COSTO_GS_DET_AUX,',
'                          pcosto_us          => :P512_COSTO_US_DET_AUX,',
'                          ptip_cambio_us     => :P512_TIP_CAMBIO_US_ADD,',
'                          pdes_articulo      => :P512_DESC_ARTICULO_ADD,',
'                          pgarantia          => :P512_GARANTIA_DET,',
'                          pcod_art_corto     => :P512_COD_ART_CORTO_ADD,',
'                          pind_precio        => NULL,',
'                          pind_no_stock      => NULL,',
'                          pprecio_lista      => :P512_PRECIO_LISTA_ADD,',
'                          ptotal             => :P512_TOTAL_AUX);',
'    END IF;                      ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTAGREGAR_EDITAR_DET EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_TIP_ENT_SAL,P512_SER_ENT_SAL,P512_NUM_ENT_SAL,P512_COD_ARTICULO_ADD,P512_COSTO_ADD_AUX,P512_CANTIDAD_ADD,P512_COD_SUCURSAL,P512_COD_UNIDAD_MEDIDA_ADD,P512_CANTIDAD_UB_ADD,P512_CONFIRMADO_DET,P512_COD_IVA_ADD,P512_NRO_LOTE_ADD,P512_'
||'FEC_VENCIMIENTO_ADD,P512_PRECIO_VENTA_DET_AUX,P512_COSTO_GS_DET_AUX,P512_COSTO_US_DET_AUX,P512_TIP_CAMBIO_US_ADD,P512_DESC_ARTICULO_ADD,P512_GARANTIA_DET,P512_COD_ART_CORTO_ADD,P512_PRECIO_LISTA_ADD,P512_TOTAL_AUX,P512_EDIT_DATA_DET,P512_OBSERVACION_'
||'ADD'
,p_attribute_03=>'P512_MENSAJE_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157811753067849149)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.SUMAR_TOTALES(ptot_importe  => :P512_TOT_IMPORTE_AUX,',
'                           ptot_cantidad => :P512_TOT_CANTIDAD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTAGREGAR_EDITAR_DET CALCULAR_TOTALES ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P512_TOT_IMPORTE_AUX,P512_TOT_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157811857945849150)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_TOT_IMPORTE := TO_CHAR(:P512_TOT_IMPORTE_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTAGREGAR_EDITAR_DET CALCULAR_TOTALES ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_TOT_IMPORTE_AUX'
,p_attribute_03=>'P512_TOT_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156758698204327750)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153421868281135749)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P512_MENSAJE_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157806908245849101)
,p_event_id=>wwv_flow_imp.id(156757817468327742)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153421602907135747)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P512_MENSAJE_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157807428607849106)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157807560635849107)
,p_event_id=>wwv_flow_imp.id(157807428607849106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157807620523849108)
,p_event_id=>wwv_flow_imp.id(157807428607849106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.GET_DATA_EDIT(pseq_id            => :P512_EDIT_DATA_DET,',
'                           pcod_articulo      => :P512_COD_ARTICULO_ADD,',
'                           pcosto             => :P512_COSTO_ADD_AUX,',
'                           pcantidad          => :P512_CANTIDAD_ADD,',
'                           pcod_sucursal      => :P512_COD_SUCURSAL,',
'                           pcod_unidad_medida => :P512_COD_UNIDAD_MEDIDA_ADD,',
'                           pcantidad_ub       => :P512_CANTIDAD_UB_ADD,',
'                           pconfirmado        => :P512_CONFIRMADO_DET,',
'                           pcod_iva           => :P512_COD_IVA_ADD,',
'                           pnro_lote          => :P512_NRO_LOTE_ADD,',
'                           pfec_vencimiento   => :P512_FEC_VENCIMIENTO_ADD,',
'                           pprecio_venta      => :P512_PRECIO_VENTA_DET_AUX,',
'                           pcosto_gs          => :P512_COSTO_GS_DET_AUX,',
'                           pcosto_us          => :P512_COSTO_US_DET_AUX,',
'                           ptip_cambio_us     => :P512_TIP_CAMBIO_US_ADD,',
'                           pdes_articulo      => :P512_DESC_ARTICULO_ADD,',
'                           pgarantia          => :P512_GARANTIA_DET,',
'                           pcod_art_corto     => :P512_COD_ART_CORTO_ADD,',
'                           pprecio_lista      => :P512_PRECIO_LISTA_ADD,',
'                           ptotal             => :P512_TOTAL_AUX,',
'                           pobservacion       => :P512_OBSERVACION_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_EDIT_DATA_DET'
,p_attribute_03=>'P512_COD_ARTICULO_ADD,P512_COSTO_ADD_AUX,P512_CANTIDAD_ADD,P512_COD_SUCURSAL,P512_COD_UNIDAD_MEDIDA_ADD,P512_CANTIDAD_UB_ADD,P512_CONFIRMADO_DET,P512_COD_IVA_ADD,P512_NRO_LOTE_ADD,P512_FEC_VENCIMIENTO_ADD,P512_PRECIO_VENTA_DET_AUX,P512_COSTO_GS_DET_A'
||'UX,P512_COSTO_US_DET_AUX,P512_TIP_CAMBIO_US_ADD,P512_DESC_ARTICULO_ADD,P512_GARANTIA_DET,P512_COD_ART_CORTO_ADD,P512_PRECIO_LISTA_ADD,P512_TOTAL_AUX,P512_OBSERVACION_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157807846998849110)
,p_event_id=>wwv_flow_imp.id(157807428607849106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_COSTO_ADD := TO_CHAR(:P512_COSTO_ADD_AUX,''999G999G990D00'');',
'    :P512_COSTO_GS_DET := TO_CHAR(:P512_COSTO_GS_DET_AUX,''999G999G990D00'');',
'    :P512_COSTO_US_DET := TO_CHAR(:P512_COSTO_US_DET_AUX,''999G999G990D00'');',
'    :P512_TOTAL_ADD := TO_CHAR(:P512_TOTAL_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COSTO_ADD_AUX,P512_COSTO_GS_DET_AUX,P512_COSTO_US_DET_AUX,P512_TOTAL_AUX'
,p_attribute_03=>'P512_COSTO_ADD,P512_COSTO_GS_DET,P512_COSTO_US_DET,P512_TOTAL_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157807728396849109)
,p_event_id=>wwv_flow_imp.id(157807428607849106)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153421868281135749)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157807955028849111)
,p_name=>'DA_DELETE_DATA_DET'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157808008967849112)
,p_event_id=>wwv_flow_imp.id(157807955028849111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157808173597849113)
,p_event_id=>wwv_flow_imp.id(157807955028849111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.DELETE_COL(pseq_id   => :P512_DELETE_DATA_DET, ',
'                        p_col     => ''COLEC_ST_ENTSAL_DET'',',
'                        patributo => 28);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809288393849124)
,p_event_id=>wwv_flow_imp.id(157807955028849111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCANTIDAD NUMBER := 0;',
'VTOT_IMPORTE NUMBER := 0;',
'BEGIN',
'    /*BEGIN',
'        SELECT c007,',
'               c029',
'          INTO VCANTIDAD,',
'               VTOT_IMPORTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_ST_ENTSAL_DET''',
'           AND seq_id = :P512_DELETE_DATA_DET;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VCANTIDAD := 0;',
'        VTOT_IMPORTE := 0;',
'    END;',
'',
'    :P512_TOT_CANTIDAD := nvl(VCANTIDAD, 0) - nvl(:P512_TOT_CANTIDAD_ANT, 0);',
'    :P512_TOT_IMPORTE_AUX := nvl(VTOT_IMPORTE, 0) - nvl(:P512_TOT_IMPORTE_ANT, 0);*/',
'',
'    ',
'    STENTSAL.SUMAR_TOTALES(ptot_importe  => :P512_TOT_IMPORTE_AUX,',
'                           ptot_cantidad => :P512_TOT_CANTIDAD); ',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET WHEN_REMOVE_RECORD ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P512_TOT_IMPORTE_AUX,P512_TOT_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_DELETE_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809312809849125)
,p_event_id=>wwv_flow_imp.id(157807955028849111)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_TOT_IMPORTE := TO_CHAR(:P512_TOT_IMPORTE_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET WHEN_REMOVE_RECORD 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_TOT_IMPORTE_AUX'
,p_attribute_03=>'P512_TOT_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_DELETE_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157808233122849114)
,p_event_id=>wwv_flow_imp.id(157807955028849111)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153421602907135747)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157808901897849121)
,p_name=>'DA_BTCARGAR_ARCHIVO'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157808519628849117)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809036714849122)
,p_event_id=>wwv_flow_imp.id(157808901897849121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157808348354849115)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809177549849123)
,p_event_id=>wwv_flow_imp.id(157808901897849121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_PATH := :P512_DOCUMENTO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTCARGAR_ARCHIVO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_DOCUMENTO'
,p_attribute_03=>'P512_PATH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157809449545849126)
,p_name=>'DA_BTIMPORTAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153421562035135746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809525332849127)
,p_event_id=>wwv_flow_imp.id(157809449545849126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_PATH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809667627849128)
,p_event_id=>wwv_flow_imp.id(157809449545849126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P512_COD_MOTIVO_ENT_SAL = ''20'' AND :P512_REFERENCIA IS NOT NULL THEN			',
'		null;--			migra_datos_ajs;',
'    ELSE',
'    	IF :P512_PATH is null then ',
'    	    :P512_MENSAJE_PATH := ''La ubicacion de la planilla no puede ser nulo'';',
'    	ELSE	',
'    		NULL;--			migra_datos;',
'    	END IF;',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPORTAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_COD_MOTIVO_ENT_SAL,P512_REFERENCIA,P512_PATH'
,p_attribute_03=>'P512_MENSAJE_PATH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157809868357849130)
,p_name=>'DA_MENSAJE_PATH'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_PATH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157809935185849131)
,p_event_id=>wwv_flow_imp.id(157809868357849130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_PATH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157810099468849132)
,p_event_id=>wwv_flow_imp.id(157809868357849130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_PATH.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_PATH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157810376034849135)
,p_name=>'DA_BTBUSCAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153421487836135745)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157810784372849139)
,p_event_id=>wwv_flow_imp.id(157810376034849135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.CALCULAR_CARGA(pcod_empresa        => :P_COD_EMPRESA,',
'                            pcod_sucursal       => :P512_COD_SUCURSAL,',
'                            pcod_moneda         => :P512_COD_MONEDA,',
'                            pcod_moneda_base    => :P512_V_COD_MONEDA_BASE,',
'                            ptip_cambio_us      => :P512_TIP_CAMBIO_US_ADD,',
'                            pind_ent_sal        => :P512_IND_ENT_SAL,',
'                            pcod_motivo_ent_sal => :P512_COD_MOTIVO_ENT_SAL,',
'                            ptip_ent_sal        => :P512_TIP_ENT_SAL, ',
'                            pser_ent_sal        => :P512_SER_ENT_SAL, ',
'                            pnum_ent_sal        => :P512_NUM_ENT_SAL,',
'                            pporc_iva           => :P512_V_PORC_IVA,',
'                            pfec_ent_sal        => :P512_FEC_ENT_SAL,',
'                            pcod_grupo_art      => :P512_COD_GRUPO_ART_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTBUSCAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P512_COD_SUCURSAL,P512_COD_MONEDA,P512_V_COD_MONEDA_BASE,P512_TIP_CAMBIO_US_ADD,P512_IND_ENT_SAL,P512_COD_MOTIVO_ENT_SAL,P512_TIP_ENT_SAL,P512_SER_ENT_SAL,P512_NUM_ENT_SAL,P512_V_PORC_IVA,P512_FEC_ENT_SAL,P512_COD_GRUPO_ART_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157810966932849141)
,p_event_id=>wwv_flow_imp.id(157810376034849135)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   STENTSAL.SUMAR_TOTALES(ptot_importe  => :P512_TOT_IMPORTE_AUX,',
'                          ptot_cantidad => :P512_TOT_CANTIDAD); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTBUSCAR 2 ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P512_TOT_IMPORTE_AUX,P512_TOT_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157811002371849142)
,p_event_id=>wwv_flow_imp.id(157810376034849135)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_TOT_IMPORTE := TO_CHAR(:P512_TOT_IMPORTE_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTBUSCAR 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_TOT_IMPORTE_AUX'
,p_attribute_03=>'P512_TOT_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157810448667849136)
,p_event_id=>wwv_flow_imp.id(157810376034849135)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153421602907135747)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157811372329849145)
,p_name=>'DA_DET_DATA_DET'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_DET_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157811405598849146)
,p_event_id=>wwv_flow_imp.id(157811372329849145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_DET_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157811577526849147)
,p_event_id=>wwv_flow_imp.id(157811372329849145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.GET_DET_DATA(pseq_id        => :P512_DET_DATA_DET,',
'                          pdesc_uni      => :P512_DESCRIPCION_DET,',
'                          pprecio_venta  => :P512_PRECIO_VENTA_DET_AUX,',
'                          ptip_cambio_us => :P512_TIP_CAMBIO_US_DET,',
'                          pobservacion   => :P512_OBSERVACION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_DET_DATA_DET'
,p_attribute_03=>'P512_DESCRIPCION_DET,P512_TIP_CAMBIO_US_DET,P512_OBSERVACION,P512_PRECIO_VENTA_DET_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_DET_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157811635843849148)
,p_event_id=>wwv_flow_imp.id(157811372329849145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P512_PRECIO_VENTA_DET := TO_CHAR(:P512_PRECIO_VENTA_DET_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA_DET 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_PRECIO_VENTA_DET_AUX'
,p_attribute_03=>'P512_PRECIO_VENTA_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_DET_DATA_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159633175270238001)
,p_name=>'DA_BTGUARDAR_CAMBIOS'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157810873997849140)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159634310224238013)
,p_event_id=>wwv_flow_imp.id(159633175270238001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los datos?')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159633225443238002)
,p_event_id=>wwv_flow_imp.id(159633175270238001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VCONTROL NUMBER;',
'BEGIN',
'    SELECT COUNT(1)',
'      INTO VCONTROL',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_ST_ENTSAL_DET'';',
'',
'    :P512_MENSAJE_NUM_ENT_SAL := NULL;',
'    ',
'    if :P512_NUM_ENT_SAL is null then',
'        IF VCONTROL > 0 THEN',
'            begin',
'                select nvl(max(num_ent_sal), 0) + 1',
'                  into :P512_NUM_ENT_SAL',
'                  from st_entsal_cab',
'                 where cod_empresa = :P_COD_EMPRESA',
'                   and ser_ent_sal = :P512_SER_ENT_SAL;',
'              ',
'              if :P512_NUM_ENT_SAL is null then',
'                 :P512_NUM_ENT_SAL := 1 ;',
'              end if ;',
'           exception',
'              when no_data_found then',
'                 :P512_NUM_ENT_SAL := 1;',
'              when others then',
unistr('                 :P512_MENSAJE_NUM_ENT_SAL := ''Error en la tabla de entrada/salida de art\00EDculos (cabecera)''||sqlerrm;'),
'           end ;',
'        ELSE',
'            :P512_MENSAJE_NUM_ENT_SAL := ''No se puede guardar sin haber generado un detalle.'';',
'       END IF;',
'    end if ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR_CAMBIOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P512_NUM_ENT_SAL,P_COD_EMPRESA,P512_SER_ENT_SAL'
,p_attribute_03=>'P512_NUM_ENT_SAL,P512_MENSAJE_NUM_ENT_SAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159633956724238009)
,p_event_id=>wwv_flow_imp.id(159633175270238001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P512_MENSAJE_NUM_ENT_SAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159633497654238004)
,p_name=>'DA_MENSAJE_NUM_ENT_SAL'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P512_MENSAJE_NUM_ENT_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159633501812238005)
,p_event_id=>wwv_flow_imp.id(159633497654238004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P512_MENSAJE_NUM_ENT_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159633625818238006)
,p_event_id=>wwv_flow_imp.id(159633497654238004)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P512_MENSAJE_NUM_ENT_SAL.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P512_MENSAJE_NUM_ENT_SAL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153418138565135712)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P512_COD_MODULO := ''ST'';                ',
':P512_V_SER_ENT_SAL := bs_busca_parametro(:P512_COD_MODULO, ''SERIE_ENT_SAL'');',
':P512_V_TIP_ENT_SAL := bs_busca_parametro(:P512_COD_MODULO, ''TIPO_ENT_SAL'');',
':P512_V_TIPO_ENVIO := bs_busca_parametro(:P512_COD_MODULO, ''TIPO_ENVIO'');',
':P512_V_MOTIVO_ORDEN := bs_busca_parametro(:P512_COD_MODULO, ''SALIDA_ORDEN_TRAB'');',
':P512_V_DEVOLUCION_ORDEN := bs_busca_parametro(:P512_COD_MODULO, ''ENTRADA_ORDEN_TRAB'');',
':P512_V_COD_MONEDA_BASE := bs_busca_parametro(''BS'', ''COD_MONEDA_BASE'');',
':P512_V_COD_MONEDA_US := bs_busca_parametro(''BS'', ''COD_MONEDA_DOL'');',
':P512_V_TIPO_ORDEN_TRAB := bs_busca_parametro(:P512_COD_MODULO, ''TIPO_ORDEN_TRAB'');',
'',
'',
'',
':P512_V_EXCEL := busca_permiso(:P_COD_EMPRESA, ',
'                               ''STENTSAL'', ',
'                               :P_COD_USUARIO,  ',
'                               ''IMPORTA_EXCEL'');',
'',
':P512_V_CARGA_SIN_AUTORIZACION := busca_permiso(:P_COD_EMPRESA, ',
'                                                ''STENTSAL'', ',
'                                                :P_COD_USUARIO,  ',
'                                                ''CARGA_SIN_AUTORIZACION'');',
'/*',
'if :variables.excel = ''S''  THEN',
'    set_item_property(''B_CABECERA.PATH'', ENABLED, PROPERTY_TRUE);',
'    set_item_property(''B_CABECERA.BUSCAR'', ENABLED, PROPERTY_TRUE);',
'    set_item_property(''B_CABECERA.IMPORTAR'', ENABLED, PROPERTY_TRUE);   ',
'    set_item_property(''B_CABECERA.PATH'', NAVIGABLE, PROPERTY_TRUE);  ',
'    set_item_property(''B_CABECERA.BUSCAR'', NAVIGABLE, PROPERTY_TRUE);  ',
'    set_item_property(''B_CABECERA.IMPORTAR'', NAVIGABLE, PROPERTY_TRUE);',
'ELSE	',
'    set_item_property(''B_CABECERA.PATH'', ENABLED, PROPERTY_FALSE);',
'    set_item_property(''B_CABECERA.BUSCAR'', ENABLED, PROPERTY_FALSE);',
'    set_item_property(''B_CABECERA.IMPORTAR'', ENABLED, PROPERTY_FALSE);',
'END IF;',
'*/',
'declare',
'    viva   varchar2(5) ;',
'begin',
'    viva := bs_busca_parametro(:P512_COD_MODULO, ''COD_IVA_GRAVADA'');',
'    select porc_iva_venta',
'      into :P512_V_PORC_IVA',
'      from st_iva',
'     where cod_iva = viva;',
'exception',
'    when others then',
'    :P512_V_PORC_IVA := 0;',
'end ;',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COLEC_ST_ENTSAL_DET'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154869402822412838)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREATE_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P512_SER_ENT_SAL := :P512_V_SER_ENT_SAL;',
':P512_FEC_ALTA := SYSDATE;',
':P512_FEC_ENT_SAL := trae_fecha(:P_COD_EMPRESA, :P512_COD_MODULO);',
':P512_HORA_ALTA := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
':P512_COD_MONEDA := ''1'';',
':P512_TOT_CANTIDAD := 0;',
':P512_TOT_IMPORTE := 0;',
':P512_COD_USUARIO := :P_COD_USUARIO;',
':P512_CONFIRMADO_DET := ''S'';',
':P512_GARANTIA_DET := ''N'';',
'begin',
'    select tipo_cambio_contado',
'      into :P512_TIP_CAMBIO_US_ADD',
'      from tipos_cambio ',
'     where cod_moneda = :P512_V_COD_MONEDA_US',
'       and fec_tipo_cambio <= :P512_FEC_ENT_SAL',
'       and fec_tipo_cambio = (select max(fec_tipo_cambio)',
'                                from tipos_cambio ',
'                               where cod_moneda = :P512_V_COD_MONEDA_US',
'                                 and fec_tipo_cambio <= :P512_FEC_ENT_SAL);',
'exception',
'    when others then',
'    :P512_TIP_CAMBIO_US_ADD := 1;',
'end ;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P512_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159634483480238014)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_EDIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    STENTSAL.GET_DATA(prow_id               => :P512_ROW_ID_AUX_CAB,',
'                      pcod_empresa          => :P_COD_EMPRESA,',
'                      pcod_sucursal         => :P512_COD_SUCURSAL,',
'                      pnum_ent_sal          => :P512_NUM_ENT_SAL,',
'                      pfec_ent_sal          => :P512_FEC_ENT_SAL,',
'                      pcod_motivo_ent_sal   => :P512_COD_MOTIVO_ENT_SAL,',
'                      pcod_moneda           => :P512_COD_MONEDA,',
'                      pser_ent_sal          => :P512_SER_ENT_SAL,',
'                      ptip_ent_sal          => :P512_TIP_ENT_SAL,',
'                      pfec_alta             => :P512_FEC_ALTA,',
'                      pcod_proveedor        => :P512_COD_PROVEEDOR,',
'                      ptip_comprobante_ref  => :P512_TIP_COMPROBANTE_REF,',
'                      pser_comprobante_ref  => :P512_SER_COMPROBANTE_REF,',
'                      pnro_comprobante_ref  => :P512_NRO_COMPROBANTE_REF,',
'                      ptip_cambio_us        => :P512_TIP_CAMBIO_US_ADD,',
'                      phora_alta            => :P512_HORA_ALTA,',
'                      pcod_usuario          => :P512_COD_USUARIO,',
'                      pdesc_sucursal        => :P512_DESC_SUCURSAL,',
'                      pdesc_cod_mot_ent_sal => :P512_DESC_MOTIVO_ENT_SAL,',
'                      pdesc_proveedor       => :P512_DESC_PROVEEDOR,',
'                      pdesc_moneda          => :P512_DESC_MONEDA,',
'                      ptot_importe_out      => :P512_TOT_IMPORTE_AUX,',
'                      ptot_cantidad_out     => :P512_TOT_CANTIDAD);  ',
'          ',
'    :P512_TOT_IMPORTE := TO_CHAR(:P512_TOT_IMPORTE_AUX,''999G999G990D00'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P512_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159634598517238015)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_COMPROBANTE_REF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P512_P_TIP_COMPROBANTE is not null then',
'	IF  NVL(:P512_P_P_CONSULTA,''N'')=''N'' THEN',
'        :P512_TIP_ENT_SAL := :P512_V_TIP_ENT_SAL;',
'        :P512_SER_ENT_SAL := :P512_V_SER_ENT_SAL;',
'        :P512_FEC_ENT_SAL := trae_fecha(:P_COD_EMPRESA, :P512_COD_MODULO);',
'        :P512_COD_SUCURSAL := :P_COD_SUCURSAL;',
'',
'        if :P512_P_COD_SUCURSAL is not null then',
'            :P512_COD_SUCURSAL := :P512_P_COD_SUCURSAL;',
'        end if;',
'',
'        if nvl(:P512_P_TIP_MOVIMIENTO, ''S'') = ''S'' then',
'            :P512_COD_MOTIVO_ENT_SAL := :P512_V_MOTIVO_ORDEN;',
'        else',
'            :P512_COD_MOTIVO_ENT_SAL := :P512_V_DEVOLUCION_ORDEN;',
'        end if ;',
'   ',
unistr('        :P512_COD_PROVEEDOR := ''0''; -- \00BFC\00F3digo NGO? --'),
'        :P512_TIP_COMPROBANTE_REF := :P512_P_TIP_COMPROBANTE;',
'        :P512_SER_COMPROBANTE_REF := :P512_P_SER_COMPROBANTE;',
'        :P512_NRO_COMPROBANTE_REF := :P512_P_NRO_COMPROBANTE;			   ',
'			  /* if :b_cabecera.nro_comprobante_ref is not null then',
'			      validate( block_scope ) ;',
'			      go_block( ''b_detalle'' ) ;',
'			   end if ;*/',
'	END IF;',
'end if ;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P512_P_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159634185580238011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.GUARDAR_DATOS(pcod_empresa         => :P_COD_EMPRESA,',
'                           pcontrol             => :P512_CONTROL_ORIGEN,',
'                           pcod_sucursal        => :P512_COD_SUCURSAL,',
'                           pnum_ent_sal         => :P512_NUM_ENT_SAL,',
'                           pfec_ent_sal         => :P512_FEC_ENT_SAL,',
'                           pcod_motivo_ent_sal  => :P512_COD_MOTIVO_ENT_SAL,',
'                           pcod_moneda          => :P512_COD_MONEDA,',
'                           pser_ent_sal         => :P512_SER_ENT_SAL,',
'                           ptip_ent_sal         => :P512_TIP_ENT_SAL,',
'                           pfec_alta            => :P512_FEC_ALTA,',
'                           pcod_proveedor       => :P512_COD_PROVEEDOR,',
'                           ptip_comprobante_ref => :P512_TIP_COMPROBANTE_REF,',
'                           pser_comprobante_ref => :P512_SER_COMPROBANTE_REF,',
'                           pnro_comprobante_ref => :P512_NRO_COMPROBANTE_REF,',
'                           ptip_cambio_us       => :P512_TIP_CAMBIO_US_ADD,',
'                           phora_alta           => :P512_HORA_ALTA,',
'                           pcod_usuario         => :P512_COD_USUARIO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
