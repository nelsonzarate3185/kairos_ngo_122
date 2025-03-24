prompt --application/pages/page_00379
begin
--   Manifest
--     PAGE: 00379
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
 p_id=>379
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de pedidos de Repuestos - STREPED1'
,p_alias=>'CONTROL-DE-PEDIDOS-DE-REPUESTOS-STREPED1'
,p_step_title=>'Control de pedidos de Repuestos - STREPED1'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, cod_suc_ent, cod_suc_sal){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREPOREP.pdf?''',
'            +  ''P_COD_EMPRESA='' + p_cod_empresa  + ''&P_SUC_ENT=''+ cod_suc_ent +''&P_SUC_SAL='' + cod_suc_sal +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open((vURL.replace(/&amp;/g,''g'')),"_blank");',
'}',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P379_ACCION'',''AGREGAR'');',
'      $s(''P379_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P379_ACCION'',''QUITAR'');',
'      $s(''P379_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  darkblue !important;     ',
'                font-weight: bold;',
'                } ',
'            ',
'',
'',
'    #reg_env, #reg_rep, #reg_dim, #reg_exi{ ',
'                        background: #80a5bb2f!important;',
'                    } ',
'     ',
'',
'  .t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241111102248'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105182232793593745)
,p_plug_name=>'Control de pedidos de Repuestos '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107730874230689940)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107760248628856102)
,p_plug_name=>'Contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107760420739856104)
,p_plug_name=>'COLEC_VW_RES_PEDIDO_REP190'
,p_region_name=>'reg_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(107760248628856102)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_ARTICULO,',
'       c002 DESCRIPCION,',
'       c003 CANT,',
'       c004 FECHA,',
'       c005 COD_EMPRESA,',
'       c006 COD_SUCURSAL,',
'       c007 COD_SUCURSAL_ENT,',
'       c008 DIAS,',
'       c009 EXISTENCIA,',
'       nvl(c010,''+'') OBS_DET,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case c011',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar(this)"'' ) as "OK",',
'       c012 CANT_ENVIAR,',
'       NULL DETALLE,',
'       NULL MAS,',
'       NULL EDITAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_VW_RES_PEDIDO_REP190'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_VW_RES_PEDIDO_REP190'
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
 p_id=>wwv_flow_imp.id(107760516923856105)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>107760516923856105
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107760649242856106)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'SEQ_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107760728788856107)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107760858858856108)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107760997557856109)
,p_db_column_name=>'CANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cant.  Solicitada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761073579856110)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761104395856111)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761269301856112)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761335037856113)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761419328856114)
,p_db_column_name=>'DIAS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Dias'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761524481856115)
,p_db_column_name=>'EXISTENCIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Existencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761696106856116)
,p_db_column_name=>'OBS_DET'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Observacion'
,p_column_link=>'javascript:$s(''P379_SEQ_ID_MAS'',''#SEQ_ID#'');'
,p_column_linktext=>'#OBS_DET#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761830871856118)
,p_db_column_name=>'DETALLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P379_DET_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107761931898856119)
,p_db_column_name=>'MAS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Mas'
,p_column_link=>'javascript:$s(''P379_SEQ_ID_MAS'',''#SEQ_ID#'');'
,p_column_linktext=>' <span class="t-Button-label">+</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107762729793856127)
,p_db_column_name=>'OK'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'OK'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107969878618800717)
,p_db_column_name=>'CANT_ENVIAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cant. Enviar'
,p_column_link=>'javascript:$s(''P379_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'#CANT_ENVIAR#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107970003473800719)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P379_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107854762467398014)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1078548'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:COD_ARTICULO:DESCRIPCION:CANT:OK:CANT_ENVIAR:OBS_DET:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107760390557856103)
,p_plug_name=>'Contenedor 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107764484979856144)
,p_plug_name=>'ST_UBIC_ARTICULOS'
,p_parent_plug_id=>wwv_flow_imp.id(107760390557856103)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_POSICION,',
'       COD_BLOQUE,',
'       COD_SUB_BLOQUE,',
'       COD_ESTANTE,',
'       COD_CUERPO,',
'       COD_NIVEL',
'  FROM ST_UBIC_ARTICULOS',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND COD_POSICION IS NOT NULL',
'   AND COD_ARTICULO = :P379_COD_ARTICULO_AUX '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P379_COD_ARTICULO_AUX,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ST_UBIC_ARTICULOS'
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
 p_id=>wwv_flow_imp.id(107764968879856149)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>107764968879856149
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107968275871800701)
,p_db_column_name=>'COD_POSICION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Posici\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107968370316800702)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Bloq.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107968490952800703)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sub Bloq.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107968580853800704)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Est.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107968650855800705)
,p_db_column_name=>'COD_CUERPO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cuer.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107968717770800706)
,p_db_column_name=>'COD_NIVEL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Niv.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107977803357808337)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1079779'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_POSICION:COD_BLOQUE:COD_SUB_BLOQUE:COD_ESTANTE:COD_CUERPO:COD_NIVEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107764516541856145)
,p_plug_name=>'Contenedor Observacion'
,p_parent_plug_id=>wwv_flow_imp.id(107760390557856103)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107764630359856146)
,p_plug_name=>'VW_PEDIDO_REP190'
,p_parent_plug_id=>wwv_flow_imp.id(107760390557856103)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NRO_COMPROBANTE,',
'       FEC_COMPROBANTE,',
'       COD_USUARIO,',
'       CANTIDAD',
'  FROM VW_PEDIDO_REP190 ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND COD_ARTICULO = :P379_COD_ARTICULO_AUX'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P379_COD_ARTICULO_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VW_PEDIDO_REP190'
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
 p_id=>wwv_flow_imp.id(107969250925800711)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>107969250925800711
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107969314886800712)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Pedido')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107969468795800713)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107969565907800714)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Solicita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107969610961800715)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cant.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107987574123850762)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1079876'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:FEC_COMPROBANTE:COD_USUARIO:CANTIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107763418829856134)
,p_plug_name=>'Agregar Obs.'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107970378991800722)
,p_plug_name=>'Editar Cantidad Enviar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107763655935856136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(107763418829856134)
,p_button_name=>'BTGUARDAR_OBS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107970510365800724)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(107970378991800722)
,p_button_name=>'BTAGREGAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(105182706071593750)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_button_name=>'BTACTUALIZAR'
,p_button_static_id=>'filtrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107760147646856101)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_button_name=>'BTGENERAR_ENVIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Generar Env\00EDo')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-truck'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105182320356593746)
,p_name=>'P379_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105182585537593748)
,p_name=>'P379_COD_SUCURLSA_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_prompt=>'Sucursal de Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  ss.cod_sucursal||'' - ''||ss.descripcion D, ',
'       ss.cod_sucursal R',
'  from sucursales  ss,',
'        INV.VW_RES_PEDIDO_REP190 t',
' where t.cod_empresa = :P_COD_EMPRESA',
' and  t.COD_SUCURSAL = ss.COD_SUCURSAL',
' and t.cod_empresa = ss.cod_empresa',
'     '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105182679048593749)
,p_name=>'P379_COD_SUCURSAL_ENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_prompt=>'Sucursal de Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ss.cod_sucursal||'' - ''||ss.descripcion D, ',
'       ss.cod_sucursal R',
'  from sucursales  ss,',
'    INV.VW_RES_PEDIDO_REP190 t',
' where t.cod_empresa = :P_COD_EMPRESA',
' and  t.COD_SUCURSAL_ent = ss.COD_SUCURSAL',
' and t.cod_empresa = ss.cod_empresa',
'  '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107762394146856123)
,p_name=>'P379_CONTROL_NULL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107762882518856128)
,p_name=>'P379_ACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107760420739856104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107762943128856129)
,p_name=>'P379_AUX_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107760420739856104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107763574864856135)
,p_name=>'P379_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107763418829856134)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107763708940856137)
,p_name=>'P379_SEQ_ID_MAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(107760420739856104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107764101792856141)
,p_name=>'P379_DET_DATA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107760420739856104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107764735711856147)
,p_name=>'P379_OBSERVACION_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107764516541856145)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107765069560856150)
,p_name=>'P379_COD_ARTICULO_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(107760420739856104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107969941305800718)
,p_name=>'P379_EDIT_DATA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(107760420739856104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107970455699800723)
,p_name=>'P379_CANTIDAD_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107970378991800722)
,p_prompt=>'Cantidad Enviar'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'number_field'
,p_colspan=>4
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107971530227800734)
,p_name=>'P379_CONTROL_CANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107970378991800722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107972092395800739)
,p_name=>'P379_CONTROL_OBS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107763418829856134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107972723372800746)
,p_name=>'P379_CONTROL_GENERA_ENVIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107973114806800750)
,p_name=>'P379_MENSAJE_ERROR_GEN_ENV'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108554658201810704)
,p_name=>'P379_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108587964009001805)
,p_name=>'P379_P_COD_SAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108588088203001806)
,p_name=>'P379_P_COD_ENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420667028826328318)
,p_name=>'P379_SEQ_ID_DET_PEDIDO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(105182232793593745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107762067547856120)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(105182706071593750)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P379_COD_SUCURLSA_SAL").getValue() != '''' && apex.item("P379_COD_SUCURSAL_ENT").getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107762461250856124)
,p_event_id=>wwv_flow_imp.id(107762067547856120)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar la sucursal de entrada y salida.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420666631635328314)
,p_event_id=>wwv_flow_imp.id(107762067547856120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
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
 p_id=>wwv_flow_imp.id(107969155872800710)
,p_event_id=>wwv_flow_imp.id(107762067547856120)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P379_DET_DATA,P379_COD_ARTICULO_AUX,P379_OBSERVACION_DETALLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107762139931856121)
,p_event_id=>wwv_flow_imp.id(107762067547856120)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        STREPED1.CARGAR_COL(pcod_empresa      => :P_COD_EMPRESA,',
'                            pcod_sucursal_sal => :P379_COD_SUCURLSA_SAL,',
'                            pcod_sucursal_ent => :P379_COD_SUCURSAL_ENT);',
'exception ',
' when others then',
'    raise_application_error(-20000, SQLERRM);',
'end ;'))
,p_attribute_02=>'P379_COD_SUCURLSA_SAL,P379_COD_SUCURSAL_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107762604490856126)
,p_event_id=>wwv_flow_imp.id(107762067547856120)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107760420739856104)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P379_CONTROL_NULL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420666745804328315)
,p_event_id=>wwv_flow_imp.id(107762067547856120)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove(); ',
'    $("#apex_wait_overlay").remove(); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107763097027856130)
,p_name=>'DA_SELECCIONAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107763139344856131)
,p_event_id=>wwv_flow_imp.id(107763097027856130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_AUX_SEQ_ID,P379_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107763269662856132)
,p_event_id=>wwv_flow_imp.id(107763097027856130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREPED1.PR_CHECK(pseq_id    => :P379_AUX_SEQ_ID, ',
'                      paccion    => :P379_ACCION, ',
'                      pcolection => ''COLEC_VW_RES_PEDIDO_REP190'',',
'                      patributo  => 11);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,''DA_SELECCIONAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P379_AUX_SEQ_ID,P379_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108554866253810706)
,p_event_id=>wwv_flow_imp.id(107763097027856130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VOK VARCHAR2(10);',
'VCANT NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT c011,',
'               c003',
'          INTO VOK,',
'               VCANT',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_VW_RES_PEDIDO_REP190''',
'           AND seq_id = :P379_AUX_SEQ_ID;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VOK := NULL;',
'        VCANT := NULL;',
'    END;',
'',
'    IF NVL(VOK,''N'') = ''S'' THEN',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''COLEC_VW_RES_PEDIDO_REP190'',',
'												 P_SEQ             => :P379_AUX_SEQ_ID,',
'												 P_ATTR_NUMBER     => 12,',
'												 P_ATTR_VALUE      => VCANT);',
'    ELSE',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''COLEC_VW_RES_PEDIDO_REP190'',',
'												 P_SEQ             => :P379_AUX_SEQ_ID,',
'												 P_ATTR_NUMBER     => 12,',
'												 P_ATTR_VALUE      => NULL);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,''DA_SELECCIONAR CAMBIAR_CANT_ENVIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P379_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108554988716810707)
,p_event_id=>wwv_flow_imp.id(107763097027856130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107760420739856104)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107763838257856138)
,p_name=>'DA_SEQ_ID_MAS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_SEQ_ID_MAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107763958365856139)
,p_event_id=>wwv_flow_imp.id(107763838257856138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P379_OBSERVACION:=NULL;'
,p_attribute_02=>'P379_SEQ_ID_MAS'
,p_attribute_03=>'P379_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107764081114856140)
,p_event_id=>wwv_flow_imp.id(107763838257856138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107763418829856134)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107764214743856142)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107764307638856143)
,p_event_id=>wwv_flow_imp.id(107764214743856142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107764837352856148)
,p_event_id=>wwv_flow_imp.id(107764214743856142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT c010,',
'               c001',
'          INTO :P379_OBSERVACION_DETALLE,',
'               :P379_COD_ARTICULO_AUX',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_VW_RES_PEDIDO_REP190''',
'           AND seq_id = :P379_DET_DATA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P379_OBSERVACION_DETALLE := NULL;',
'        :P379_COD_ARTICULO_AUX := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P379_DET_DATA'
,p_attribute_03=>'P379_OBSERVACION_DETALLE,P379_COD_ARTICULO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107969059901800709)
,p_event_id=>wwv_flow_imp.id(107764214743856142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107764484979856144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107969762297800716)
,p_event_id=>wwv_flow_imp.id(107764214743856142)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107764630359856146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107968849432800707)
,p_name=>'DA_COD_ARTICULO_AUX'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_COD_ARTICULO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107968936516800708)
,p_event_id=>wwv_flow_imp.id(107968849432800707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_COD_ARTICULO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107970195548800720)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107970255749800721)
,p_event_id=>wwv_flow_imp.id(107970195548800720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971484851800733)
,p_event_id=>wwv_flow_imp.id(107970195548800720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P379_CANTIDAD_ENVIAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107970698071800725)
,p_event_id=>wwv_flow_imp.id(107970195548800720)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107970378991800722)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107970734604800726)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_CANTIDAD_ENVIAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107970864713800727)
,p_event_id=>wwv_flow_imp.id(107970734604800726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107970985525800728)
,p_name=>'DA_AGREGAR_EDITAR_CANT'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107970510365800724)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971087798800729)
,p_event_id=>wwv_flow_imp.id(107970985525800728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_CANTIDAD_ENVIAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971145557800730)
,p_event_id=>wwv_flow_imp.id(107970985525800728)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VOK VARCHAR2(50);',
'BEGIN',
'    BEGIN',
'        SELECT c011',
'          INTO VOK',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_VW_RES_PEDIDO_REP190''',
'           AND seq_id = :P379_EDIT_DATA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VOK := NULL;',
'    END;',
'',
'    IF NVL(VOK,''N'') = ''N'' AND :P379_CANTIDAD_ENVIAR IS NOT NULL THEN',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE(P_COLLECTION_NAME => ''COLEC_VW_RES_PEDIDO_REP190'',',
'												P_SEQ             => :P379_EDIT_DATA,',
'												P_ATTR_NUMBER     => 12,',
'												P_ATTR_VALUE      => NULL);',
'        ',
'        :P379_CONTROL_CANT := 1;',
'    ELSE',
'        :P379_CONTROL_CANT := 0;',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE(P_COLLECTION_NAME => ''COLEC_VW_RES_PEDIDO_REP190'',',
'												P_SEQ             => :P379_EDIT_DATA,',
'												P_ATTR_NUMBER     => 12,',
'												P_ATTR_VALUE      => :P379_CANTIDAD_ENVIAR);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,''DA_AGREGAR_EDITAR_CANT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P379_EDIT_DATA,P379_CANTIDAD_ENVIAR'
,p_attribute_03=>'P379_CONTROL_CANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971619622800735)
,p_event_id=>wwv_flow_imp.id(107970985525800728)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar/tildar antes de cargar la cantidad.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P379_CONTROL_CANT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971245632800731)
,p_event_id=>wwv_flow_imp.id(107970985525800728)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107970378991800722)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P379_CONTROL_CANT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971319807800732)
,p_event_id=>wwv_flow_imp.id(107970985525800728)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107760420739856104)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P379_CONTROL_CANT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107971798414800736)
,p_name=>'DA_GUARDAR_OBS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107763655935856136)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971809620800737)
,p_event_id=>wwv_flow_imp.id(107971798414800736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107971950653800738)
,p_event_id=>wwv_flow_imp.id(107971798414800736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     BEGIN',
'        SELECT c001',
'          INTO :P379_COD_ARTICULO_AUX',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_VW_RES_PEDIDO_REP190''',
'           AND seq_id = :P379_SEQ_ID_MAS;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P379_COD_ARTICULO_AUX := NULL;',
'    END;',
'',
'    IF :P379_OBSERVACION IS NOT NULL THEN',
'        :P379_CONTROL_OBS := 0;',
'',
'        STREPED1.ADD_OBSERVACION(pcod_empresa      => :P_COD_EMPRESA,',
'                                 pcod_articulo     => :P379_COD_ARTICULO_AUX,',
'                                 pcod_sucursal     => :P379_COD_SUCURLSA_SAL,',
'                                 pcod_sucursal_ent => :P379_COD_SUCURSAL_ENT,',
'                                 pobservacion      => :P379_OBSERVACION);',
'        ',
'        BEGIN',
'            SELECT c010',
'              INTO :P379_OBSERVACION_DETALLE',
'              FROM APEX_COLLECTIONS',
'             WHERE COLLECTION_NAME = ''COLEC_VW_RES_PEDIDO_REP190''',
'               AND seq_id = :P379_SEQ_ID_MAS;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            :P379_OBSERVACION_DETALLE := NULL;',
'        END;',
'    ELSE',
'        :P379_CONTROL_OBS := 1;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,''DA_GUARDAR_OBS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P379_OBSERVACION,P_COD_EMPRESA,P379_COD_ARTICULO_AUX,P379_COD_SUCURLSA_SAL,P379_COD_SUCURSAL_ENT'
,p_attribute_03=>'P379_CONTROL_OBS,P379_COD_ARTICULO_AUX,P379_OBSERVACION_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107972107790800740)
,p_event_id=>wwv_flow_imp.id(107971798414800736)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe cargar una observaci\00F3n.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P379_CONTROL_OBS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107972279240800741)
,p_event_id=>wwv_flow_imp.id(107971798414800736)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107763418829856134)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P379_CONTROL_OBS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107972325618800742)
,p_event_id=>wwv_flow_imp.id(107971798414800736)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107760420739856104)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P379_CONTROL_OBS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107972517924800744)
,p_name=>'DA_GENERAR_ENVIO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107760147646856101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107972626826800745)
,p_event_id=>wwv_flow_imp.id(107972517924800744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_COD_SUCURLSA_SAL,P379_COD_SUCURSAL_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107973093235800749)
,p_event_id=>wwv_flow_imp.id(107972517924800744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea generar la Nota de Env\00EDo Pendiente?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107972854624800747)
,p_event_id=>wwv_flow_imp.id(107972517924800744)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONT NUMBER := 0;',
'v_error exception;',
'V_msj varchar(32000);',
'BEGIN',
'    IF :P379_COD_SUCURLSA_SAL IS NULL OR :P379_COD_SUCURSAL_ENT IS NULL THEN',
'        :P379_CONTROL_GENERA_ENVIO := 1;',
'    ELSE',
'        :P379_CONTROL_GENERA_ENVIO := 0;',
'',
'        STREPED1.CREA_NOTA_ENVIO(pcod_empresa      => :P_COD_EMPRESA,',
'                                 pcod_sucursal_sal => :P379_COD_SUCURLSA_SAL,',
'                                 pcod_sucursal_ent => :P379_COD_SUCURSAL_ENT,',
'                                 pcod_usuario      => :P_COD_USUARIO,',
'                                 pmensaje          => v_msj,----:P379_MENSAJE_ERROR_GEN_ENV,',
'                                 pcont             => VCONT);',
'        IF v_msj IS NOT NULL THEN',
'            RAISE v_error;',
'        ELSE',
'            IF NVL(VCONT,0) > 0  THEN',
'                    SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'                        p_page   => 339,',
'                        p_items  => ''P339_P_NRO_COMPROBANTE'',',
'                        p_values => VCONT) ',
'                        INTO :P379_URL',
'                        FROM DUAL;',
'            END IF;',
'        END IF;',
'    END IF;',
'EXCEPTION',
'    when v_error then',
'        :P379_MENSAJE_ERROR_GEN_ENV:=v_msj;',
'        raise_application_error(-20000,v_msj);',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,''DA_GENERAR_ENVIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P379_COD_SUCURLSA_SAL,P379_COD_SUCURSAL_ENT,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_03=>'P379_CONTROL_GENERA_ENVIO,P379_MENSAJE_ERROR_GEN_ENV,P379_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107972952878800748)
,p_event_id=>wwv_flow_imp.id(107972517924800744)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la sucursal de salida y entrada.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P379_CONTROL_GENERA_ENVIO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108554714205810705)
,p_event_id=>wwv_flow_imp.id(107972517924800744)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const vurl = apex.item("P379_URL").getValue();',
' ',
'window.open(vurl,''_blank'');',
' ',
'doDescarga(apex.item(''P_COD_EMPRESA'').value,',
'           apex.item(''P379_COD_SUCURSAL_ENT'').value,',
'           apex.item(''P379_COD_SUCURLSA_SAL'').value);',
'          ',
'',
'  setTimeout(function(){',
'                    $(document).ready(function(){ $(''#filtrar'').trigger(''click''); });',
'                }, 1000);'))
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P379_CONTROL_GENERA_ENVIO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108554361620810701)
,p_name=>'DA_MENSAJE_ERROR_GEN_ENV'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_MENSAJE_ERROR_GEN_ENV'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108554486626810702)
,p_event_id=>wwv_flow_imp.id(108554361620810701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P379_MENSAJE_ERROR_GEN_ENV'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108554560404810703)
,p_event_id=>wwv_flow_imp.id(108554361620810701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P379_MENSAJE_ERROR_GEN_ENV.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P379_MENSAJE_ERROR_GEN_ENV'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108587645463001802)
,p_name=>'New'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_COD_SUC_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108587713785001803)
,p_event_id=>wwv_flow_imp.id(108587645463001802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P379_COD_SUC_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108587886331001804)
,p_event_id=>wwv_flow_imp.id(108587645463001802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P379_COD_SUC_ENT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>':P379_COD_SUC_ENT := :P379_COD_SUCURSAL_ENT;'
,p_attribute_07=>'P379_COD_SUCURSAL_ENT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108588352806001809)
,p_name=>'New_2'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_P_COD_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108588439986001810)
,p_event_id=>wwv_flow_imp.id(108588352806001809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P379_P_COD_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108588572326001811)
,p_name=>'New_3'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_P_COD_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108588672612001812)
,p_event_id=>wwv_flow_imp.id(108588572326001811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P379_P_COD_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108588754744001813)
,p_name=>'New_4'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_COD_SUCURLSA_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108588898400001814)
,p_event_id=>wwv_flow_imp.id(108588754744001813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P379_COD_SUCURLSA_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108588976107001815)
,p_name=>'New_5'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_COD_SUCURSAL_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108589027469001816)
,p_event_id=>wwv_flow_imp.id(108588976107001815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P379_COD_SUCURSAL_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(420666898511328316)
,p_name=>'da_selec_reg'
,p_event_sequence=>180
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table.a-IRR-table tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420666987907328317)
,p_event_id=>wwv_flow_imp.id(420666898511328316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pk = $(this.triggeringElement).closest(''tr'').find(''[headers="SEQ_ID"]'').text(); ',
' ',
'      $s(''P379_DET_DATA'',pk);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107972438525800743)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(105182452156593747)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P379_COD_MODULO := ''ST'';',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_VW_RES_PEDIDO_REP190'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
