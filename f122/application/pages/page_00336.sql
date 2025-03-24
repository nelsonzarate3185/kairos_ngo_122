prompt --application/pages/page_00336
begin
--   Manifest
--     PAGE: 00336
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
 p_id=>336
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Rendicion de OTs'
,p_alias=>'RENDICION-DE-OTS-CARENDOT'
,p_step_title=>'Rendicion de OTs - CARENDOT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(ponderacion_id,vcheck,vSERIE,vNRO_COMPROBANTE) {',
'  var v_id = ponderacion_id;  ',
'  var v_ESTADO = vcheck;',
'  var cb = document.getElementById(v_id);',
'  console.log(ponderacion_id);',
'  //alert(ponderacion_id);',
'  if (v_ESTADO == ''RENDIDO''){',
'      $s(''P0_MENSAJE_VALIDACION'',''El registro ya se encuentra rendido'');',
'      apex.region("ots_det").refresh();',
'  }else{',
'  if (v_ESTADO == ''RECHAZADO''){',
'      $s(''P0_MENSAJE_VALIDACION'',''El registro ya se encuentra rechazado'');',
'      apex.region("ots_det").refresh();',
'  }else{',
'  ',
'     ',
'     //$s(''P336_OT_ID'', ponderacion_id);',
'     //alert(ponderacion_id);',
'    $s(''P336_OT_ID'', ponderacion_id,false);',
'    $s(''P336_SERIE'',vSERIE);',
'    $s(''P336_NRO_COMPROBANTE'',vNRO_COMPROBANTE);',
'    $s(''P336_ACCION'',cb.value);',
'  }',
'',
'  }',
'}',
'$(''#checkAll'').click(function () {',
'',
'   $(''input:checkbox'').prop(''checked'', this.checked);',
'',
'});',
'',
'',
'function irAPagina(nroComprobante, serComprobante) {',
'    let url = apex.page.getURL({',
'        pageId: 370,',
'        clearCache: "370",',
'        itemNames: ["P370_OPERACION", "P370_PARAM_NRO_OT", "P370_PARAM_SER_OT"],',
'        itemValues: ["MODIFICAR", nroComprobante, serComprobante]',
'    });',
'',
'    window.open(url, "_blank");',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DATOS,#listado{',
'border-radius: 10px;',
'}',
'',
'',
'#DATOS  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    ',
'}',
'#listado  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    ',
'}',
'#btn_rendir {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'',
'    ',
'}',
'#OBS{',
'    background-color: #003a85;',
'}',
'#OBS_ACEP,#OBS_CANCEL,#btn_pnd{',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        border-radius: 5px;',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250212084245'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75653551260710230)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92555765782323347)
,p_plug_name=>'Cargar Valores'
,p_region_name=>'OBS'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93877998942922244)
,p_plug_name=>unistr('Rendici\00F3n de OT''s')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75654525538710240)
,p_plug_name=>'Datos'
,p_region_name=>'DATOS'
,p_parent_plug_id=>wwv_flow_imp.id(93877998942922244)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75655420577710249)
,p_plug_name=>'OT''s a rendir'
,p_parent_plug_id=>wwv_flow_imp.id(93877998942922244)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92552154168323311)
,p_plug_name=>'OTS_A _RENDIR_DET'
,p_region_name=>'ots_det'
,p_parent_plug_id=>wwv_flow_imp.id(75655420577710249)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_EMPRESA,',
'       C002 NRO_PLANILLA,',
'       C003 ser_COMPROBANTE,',
'       C004 NRO_COMPROBANTE,',
'       C003||'' - ''||C004 COMPROBANTE,',
'       C003||'' - ''||C004 COMPROBANTE2,',
'       C005 OT_PROV,',
'       C006 FECHA,',
'       C007 COD_CLIENTE,',
'       upper(C008) CLIENTE_DESC,',
'       C009 COD_ARTICULO,',
'       C010 ART_DESC,',
'       To_number(C011) MONTO_MO,',
'       to_number(C012) MONTO_REP,',
'       C013 OBSERVACION,',
'       C014 IND_OK,',
'       C015 ESTADO,',
'       C016 FECHA_RENDIDO,',
'       C017 ORIGEN,',
'       (apex_item.hidden(1, seq_id) ||',
'       APEX_ITEM.SWITCH (p_idx => 2,',
'                         p_value => C014,',
'                         p_on_value => ''S'',',
'                         p_on_label =>''Si'',',
'                         p_off_value => ''N'',',
'                         p_off_label =>''No'',',
'                         p_item_id => seq_id,',
'                         p_item_label => apex_escape.html(C014),',
'                        p_attributes  => (''onchange="seleccionar(''||seq_id||'',''''''||c015||''''''''||'',''''''||c003||'''''',''||to_number(c004)||'')"'')))CONF,',
'      DECODE(C018,''BLOQUEADO'',''S'',''N'')BLOQUEADO,',
'      C019 DISPLAY,',
'      ''X''PND,',
'      ''X''DEL,',
'',
'      SEQ_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''B_OTS_DET'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'OTS_A _RENDIR_DET'
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
 p_id=>wwv_flow_imp.id(92552279327323312)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>92552279327323312
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92552373036323313)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92552410574323314)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92552662223323316)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92552706138323317)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comprobante'
,p_column_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.::P370_OPERACION,P370_PARAM_NRO_OT,P370_PARAM_SER_OT:MODIFICAR,#NRO_COMPROBANTE#,#SER_COMPROBANTE##TIP_COMPROBANTE#'
,p_column_linktext=>'#COMPROBANTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92552818896323318)
,p_db_column_name=>'OT_PROV'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'OT Prov.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92552937436323319)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553051157323320)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553187921323321)
,p_db_column_name=>'CLIENTE_DESC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Razon Social'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553280232323322)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553391608323323)
,p_db_column_name=>'ART_DESC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553678906323326)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553778257323327)
,p_db_column_name=>'IND_OK'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Ind Ok'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553889988323328)
,p_db_column_name=>'ESTADO'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92553953605323329)
,p_db_column_name=>'FECHA_RENDIDO'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Rendido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92554077908323330)
,p_db_column_name=>'ORIGEN'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92554577579323335)
,p_db_column_name=>'MONTO_MO'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Mano de obra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92554699287323336)
,p_db_column_name=>'MONTO_REP'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Repuesto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92554736732323337)
,p_db_column_name=>'CONF'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Conf'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555001180323340)
,p_db_column_name=>'BLOQUEADO'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Bloqueado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555118370323341)
,p_db_column_name=>'DISPLAY'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Display'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555218112323342)
,p_db_column_name=>'PND'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'P'
,p_column_link=>'javascript:$s(''P336_EVENTO'',''P'');javascript:$s(''P336_OBSERVACION'',''#OBSERVACION#'');javascript:openModal(''OBS'');javascript:$s(''P336_OT_ID'',#SEQ_ID#)'
,p_column_linktext=>'<img src="#APP_FILES#PND.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555310557323343)
,p_db_column_name=>'DEL'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'A'
,p_column_link=>'javascript:$s(''P336_EVENTO'',''D'');javascript:$s(''P336_OBSERVACION'',''#OBSERVACION#'');javascript:openModal(''OBS'');javascript:$s(''P336_OT_ID'',#SEQ_ID#)'
,p_column_linktext=>'<img src="#APP_FILES#DEL.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93873971417922204)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657952140866438)
,p_db_column_name=>'COMPROBANTE2'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Comprobante'
,p_column_html_expression=>'<a href="javascript:void(0);" onclick="irAPagina(''#NRO_COMPROBANTE#'', ''#SER_COMPROBANTE#'')">#COMPROBANTE#</a>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016658397588866442)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(93757221971972467)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'937573'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPROBANTE:OT_PROV:FECHA:COD_CLIENTE:CLIENTE_DESC:COD_ARTICULO:ART_DESC:MONTO_REP:MONTO_MO:OBSERVACION:ESTADO:FECHA_RENDIDO:ORIGEN:PND:DEL:CONF:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1030135374906786801)
,p_report_id=>wwv_flow_imp.id(93757221971972467)
,p_name=>'Bloqueado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'BLOQUEADO'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("BLOQUEADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#767676'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1030135719362786802)
,p_report_id=>wwv_flow_imp.id(93757221971972467)
,p_name=>'Desactivado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DISPLAY'
,p_operator=>'='
,p_expr=>'DESACTIVADO'
,p_condition_sql=>' (case when ("DISPLAY" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''DESACTIVADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#9a0000'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1030136117410786802)
,p_report_id=>wwv_flow_imp.id(93757221971972467)
,p_name=>'Pendiente'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DISPLAY'
,p_operator=>'='
,p_expr=>'PENDIENTE'
,p_condition_sql=>' (case when ("DISPLAY" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PENDIENTE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e09601'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1030134931957786796)
,p_report_id=>wwv_flow_imp.id(93757221971972467)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'RECHAZADO'
,p_condition_sql=>'"ESTADO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''RECHAZADO''  '
,p_enabled=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93878032058922245)
,p_plug_name=>'Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94707302597784306)
,p_plug_name=>'Listado de OT''s'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93878191101922246)
,p_plug_name=>'Listado'
,p_region_name=>'listado'
,p_parent_plug_id=>wwv_flow_imp.id(94707302597784306)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94707478285784307)
,p_plug_name=>'Listado_Rep'
,p_parent_plug_id=>wwv_flow_imp.id(94707302597784306)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_EMPRESA,',
'       to_NUMBER(C002) NRO_PLANILLA,',
'       C003 FEC_PLANILLA,',
'       C004 ESTADO,',
'       C005 COD_PROVEEDOR,',
'       C006 DESC_PROVEEDOR,',
'       to_NUMBER(C007) CANT_OTS,',
'       to_NUMBER(C008) CONFIRMADO,',
'       to_NUMBER(C009) PENDIENTE,',
'       to_NUMBER(C010) RECHAZADO,',
'       to_NUMBER(C011) RENDIDO,',
'       C012 FEC_CONFIRMA,',
'       C013 USUARIO_CONF',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''B_OTS_LIST'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P336_FECHA_PLANILLA_DESDE,P336_FECHA_PLANILLA_HASTA,P336_USUARIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado_Rep'
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
 p_id=>wwv_flow_imp.id(94707585251784308)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>600
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>94707585251784308
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94707839122784311)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94707974735784312)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94709077993784323)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94709226939784325)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94709342779784326)
,p_db_column_name=>'DESC_PROVEEDOR'
,p_display_order=>80
,p_column_identifier=>'P'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94709942826784332)
,p_db_column_name=>'FEC_CONFIRMA'
,p_display_order=>140
,p_column_identifier=>'V'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710027647784333)
,p_db_column_name=>'USUARIO_CONF'
,p_display_order=>150
,p_column_identifier=>'W'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710235077784335)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>160
,p_column_identifier=>'X'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710346149784336)
,p_db_column_name=>'CANT_OTS'
,p_display_order=>170
,p_column_identifier=>'Y'
,p_column_label=>'Cant Ots'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710486348784337)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>180
,p_column_identifier=>'Z'
,p_column_label=>'Confirmado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710560169784338)
,p_db_column_name=>'PENDIENTE'
,p_display_order=>190
,p_column_identifier=>'AA'
,p_column_label=>'Pendiente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710680011784339)
,p_db_column_name=>'RECHAZADO'
,p_display_order=>200
,p_column_identifier=>'AB'
,p_column_label=>'Rechazado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94710779784784340)
,p_db_column_name=>'RENDIDO'
,p_display_order=>210
,p_column_identifier=>'AC'
,p_column_label=>'Rendido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(95532669432070250)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'955327'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PLANILLA:FEC_PLANILLA:ESTADO:COD_PROVEEDOR:DESC_PROVEEDOR:CANT_OTS:CONFIRMADO:PENDIENTE:RECHAZADO:RENDIDO:FEC_CONFIRMA:USUARIO_CONF:'
,p_sort_column_1=>'NRO_PLANILLA'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'CANT_OTS:PENDIENTE:CONFIRMADO:RECHAZADO:RENDIDO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92551628116323306)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94707299854784305)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75655107115710246)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_button_name=>'CONFIRMAR'
,p_button_static_id=>'btn_rendir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rendir'
,p_confirm_message=>unistr('Est\00E1s seguro(a) que deseas rendir la planilla Nro\00B0:&P336_NRO_PLANILLA.?')
,p_confirm_style=>'information'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92556012557323350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(92555765782323347)
,p_button_name=>'DEL_OTS'
,p_button_static_id=>'OBS_ACEP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'NEXT'
,p_confirm_message=>'Desea rechazar esta OT?'
,p_confirm_style=>'information'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93874675091922211)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(92555765782323347)
,p_button_name=>'PND_OTS'
,p_button_static_id=>'btn_pnd'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'NEXT'
,p_confirm_message=>'Desea anular esta OT?'
,p_confirm_style=>'warning'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93873610590922201)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(92555765782323347)
,p_button_name=>'CANCELAR'
,p_button_static_id=>'OBS_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93876672758922231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_button_name=>'Marcar_Todos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Marcar Todos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93877068316922235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_button_name=>'Desmarcar_Todos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Desmarcar Todos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75653648236710231)
,p_name=>'P336_COD_MONEDA_BASE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75653799130710232)
,p_name=>'P336_COD_MONEDA_DOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75653851990710233)
,p_name=>'P336_TIPO_CHEQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75653935342710234)
,p_name=>'P336_TIPO_TRASLADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75654015133710235)
,p_name=>'P336_EFECTIVO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75654106838710236)
,p_name=>'P336_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75654697969710241)
,p_name=>'P336_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_prompt=>'Nro. Planilla'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_imp.id(75654759255710242)
,p_name=>'P336_COD_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75654833573710243)
,p_name=>'P336_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75654992682710244)
,p_name=>'P336_FEC_CONFIRMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_prompt=>unistr('Fecha Confirmaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75655079775710245)
,p_name=>'P336_COD_USUARIO_CONF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_prompt=>unistr('Usuario Confirmaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83735846632791531)
,p_name=>'P336_FEC_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92551295607323302)
,p_name=>'P336_FEC_RECEPCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92551326689323303)
,p_name=>'P336_COD_USUARIO_REC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92551977908323309)
,p_name=>'P336_IND_RECEPCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92554262315323332)
,p_name=>'P336_CARGA_COL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75653551260710230)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92554873634323338)
,p_name=>'P336_ACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92554911344323339)
,p_name=>'P336_OT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92555424334323344)
,p_name=>'P336_EVENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92555813472323348)
,p_name=>'P336_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92555765782323347)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(93874138617922206)
,p_name=>'P336_PROVEEDOR_COD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75654525538710240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93875323403922218)
,p_name=>'P336_CONF_CHECK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93876402641922229)
,p_name=>'P336_SERIE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93876558354922230)
,p_name=>'P336_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(92552154168323311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93878224784922247)
,p_name=>'P336_FECHA_PLANILLA_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_prompt=>'Fecha Planilla Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93878390294922248)
,p_name=>'P336_FECHA_PLANILLA_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_prompt=>'Fecha Planilla Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93878415004922249)
,p_name=>'P336_FEC_REND_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93878583784922250)
,p_name=>'P336_FEC_REND_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94706803001784301)
,p_name=>'P336_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cod_usuario_conf',
'from inv.ca_ots_a_rendir_cab t',
'where cod_empresa= :p_cod_empresa',
'and cod_usuario_conf is not null'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'300'
,p_attribute_09=>'300'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94706966984784302)
,p_name=>'P336_ESTADO_LIST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(93878191101922246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92551720142323307)
,p_name=>'Clic_Buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(92551628116323306)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92551855123323308)
,p_event_id=>wwv_flow_imp.id(92551720142323307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P336_CARGA_COL := ''S'';'))
,p_attribute_03=>'P336_CARGA_COL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92552009051323310)
,p_event_id=>wwv_flow_imp.id(92551720142323307)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93874374441922208)
,p_name=>'Clic_Cancelar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93873610590922201)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93874403969922209)
,p_event_id=>wwv_flow_imp.id(93874374441922208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal(''OBS'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93874886813922213)
,p_name=>'cambiar_evento'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P336_EVENTO'
,p_condition_element=>'P336_EVENTO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'D'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93874944460922214)
,p_event_id=>wwv_flow_imp.id(93874886813922213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(92556012557323350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93875286592922217)
,p_event_id=>wwv_flow_imp.id(93874886813922213)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(92556012557323350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93875013715922215)
,p_event_id=>wwv_flow_imp.id(93874886813922213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93874675091922211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93875165436922216)
,p_event_id=>wwv_flow_imp.id(93874886813922213)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93874675091922211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93876154112922226)
,p_name=>'Cambiar_Accion'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P336_ACCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93876351967922228)
,p_event_id=>wwv_flow_imp.id(93876154112922226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(apex.item(''P336_ACCION'').getValue()+''|''+apex.item(''P336_OT_ID'').getValue());'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93876261348922227)
,p_event_id=>wwv_flow_imp.id(93876154112922226)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- raise_application_error(-20001,:P336_ACCION||'',''||:P336_PROVEEDOR_COD||'',''||:P336_SERIE||'',''||:P336_NRO_COMPROBANTE);',
'',
'UPDATE CA_OTS_A_RENDIR_DET D',
'   SET D.ESTADO = DECODE(:P336_ACCION,''N'',''MARCADO'',''S'',''CONFIRMADO'')',
' WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'   AND D.COD_PROVEEDOR = :P336_PROVEEDOR_COD',
'   AND D.NRO_PLANILLA = :P336_NRO_PLANILLA',
'   AND D.SER_COMPROBANTE = :P336_SERIE',
'   AND D.NRO_COMPROBANTE = :P336_NRO_COMPROBANTE;',
'',
'',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'''B_OTS_DET'',',
' p_seq => :P336_OT_ID,',
' p_attr_number => ''14'',',
' p_attr_value=>:P336_ACCION);',
'',
'',
'--:P336_OT_ID := ',
' exception',
' when others then ',
'',
' raise_application_error(-20001,sqlerrm);'))
,p_attribute_02=>'P336_OT_ID,P336_ACCION,P_COD_EMPRESA,P336_PROVEEDOR_COD,P336_NRO_PLANILLA,P336_SERIE,P336_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93876706761922232)
,p_name=>'Clic_Marcar_Todos'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93876672758922231)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93876856387922233)
,p_event_id=>wwv_flow_imp.id(93876706761922232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CONT NUMBER;',
'CURSOR CUR_CHECK IS',
'SELECT SEQ_ID ID,C003 SERIE,TO_NUMBER(C004) NRO_COMPROBANTE',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''B_OTS_DET''',
'   AND C015 NOT IN (''RECHAZADO'');',
' BEGIN',
'  FOR C IN CUR_CHECK LOOP',
'   /*APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''B_OTS_DET'',',
'                                    p_seq  => C.ID,',
'                                    p_c014 => ''S'',',
'                                    p_C015 => ''CONFIRMADO'');*/',
' apex_collection.update_member_attribute(p_collection_name=> ''B_OTS_DET'',',
'                                         p_seq => C.ID,',
'                                         p_attr_number => ''14'',',
'                                         p_attr_value=>''S'');',
'',
'      apex_collection.update_member_attribute(p_collection_name=> ''B_OTS_DET'',',
'                                         p_seq => C.ID,',
'                                         p_attr_number => ''15'',',
'                                         p_attr_value=>''CONFIRMADO'');     ',
'          --RAISE_APPLICATION_ERROR(-20001,:P336_PROVEEDOR_COD||'',''||:P336_NRO_PLANILLA||'',''||C.SERIE||'',''||C.NRO_COMPROBANTE);',
'        UPDATE CA_OTS_A_RENDIR_DET D',
'           SET D.ESTADO = ''C''',
'         WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'           AND D.COD_PROVEEDOR = :P336_PROVEEDOR_COD',
'           AND D.NRO_PLANILLA = :P336_NRO_PLANILLA',
'           AND D.SER_COMPROBANTE = C.SERIE',
'           AND D.NRO_COMPROBANTE = C.NRO_COMPROBANTE;   ',
'   V_CONT := C.ID;',
'  END LOOP;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'  RAISE_APPLICATION_ERROR(-20001,V_CONT);',
'  END;'))
,p_attribute_02=>'P_COD_EMPRESA,P336_PROVEEDOR_COD,P336_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93876964998922234)
,p_event_id=>wwv_flow_imp.id(93876706761922232)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92552154168323311)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93877145855922236)
,p_event_id=>wwv_flow_imp.id(93876706761922232)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93876672758922231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93877282446922237)
,p_event_id=>wwv_flow_imp.id(93876706761922232)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93877068316922235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93877346869922238)
,p_name=>'Clic_Desmarcar_Todos'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93877068316922235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93877689175922241)
,p_event_id=>wwv_flow_imp.id(93877346869922238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR CUR_CHECK IS',
'SELECT SEQ_ID ID,C003 SERIE,C004 NRO_COMPROBANTE',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''B_OTS_DET''',
'   AND C015 NOT IN (''RECHAZADO'');',
' BEGIN',
'  FOR C IN CUR_CHECK LOOP',
'   /*APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''B_OTS_DET'',',
'                                    p_seq  => C.ID,',
'                                    p_c014 => ''S'',',
'                                    p_C015 => ''CONFIRMADO'');*/',
' apex_collection.update_member_attribute(p_collection_name=> ''B_OTS_DET'',',
'                                         p_seq => C.ID,',
'                                         p_attr_number => ''14'',',
'                                         p_attr_value=>''N'');',
'',
'      apex_collection.update_member_attribute(p_collection_name=> ''B_OTS_DET'',',
'                                         p_seq => C.ID,',
'                                         p_attr_number => ''15'',',
'                                         p_attr_value=>''MARCADO'');        ',
'  ',
'  UPDATE CA_OTS_A_RENDIR_DET D',
'           SET D.ESTADO = ''MARCADO''',
'         WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'           AND D.COD_PROVEEDOR = :P336_PROVEEDOR_COD',
'           AND D.NRO_PLANILLA = :P336_NRO_PLANILLA',
'           AND D.SER_COMPROBANTE = C.SERIE',
'           AND D.NRO_COMPROBANTE = C.NRO_COMPROBANTE;   ',
'',
'  END LOOP;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'  RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'  END;'))
,p_attribute_02=>'P_COD_EMPRESA,P336_PROVEEDOR_COD,P336_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93877708484922242)
,p_event_id=>wwv_flow_imp.id(93877346869922238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92552154168323311)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93877446371922239)
,p_event_id=>wwv_flow_imp.id(93877346869922238)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93877068316922235)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93877512123922240)
,p_event_id=>wwv_flow_imp.id(93877346869922238)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93876672758922231)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94708890799784321)
,p_name=>'Clic_Ejecutar'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94707299854784305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94708959756784322)
,p_event_id=>wwv_flow_imp.id(94708890799784321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P336_CARGA_COL := ''S2'';'))
,p_attribute_03=>'P336_CARGA_COL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94710181105784334)
,p_event_id=>wwv_flow_imp.id(94708890799784321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94710930692784342)
,p_name=>'Cargar_Pagina'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94711088390784343)
,p_event_id=>wwv_flow_imp.id(94710930692784342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92552154168323311)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94711122432784344)
,p_event_id=>wwv_flow_imp.id(94710930692784342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(94707478285784307)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92554144904323331)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cargar_Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P336_CARGA_COL = ''S'' THEN',
'CARENDOT.PROCBD_TRAE_DATOS(:P_COD_EMPRESA,',
'                           :P336_NRO_PLANILLA,',
'                           :P336_FEC_PLANILLA,',
'                           :P336_COD_PROVEEDOR,',
'                           :P336_PROVEEDOR_COD,',
'                           :P336_ESTADO,',
'                           :P336_FEC_CONFIRMA,',
'                           :P336_COD_USUARIO_CONF,',
'                           :P336_IND_RECEPCION,',
'                           :P336_FEC_RECEPCION,',
'                           :P336_COD_USUARIO_REC);',
' :P336_CARGA_COL := ''N'';',
'ELSIF :P336_CARGA_COL = ''S2'' THEN ',
'  CARENDOT.PROCBD_CARGA_LISTADO(:P_COD_EMPRESA,',
'                              :P336_FECHA_PLANILLA_DESDE,',
'                              :P336_FECHA_PLANILLA_HASTA,',
'                              :P336_USUARIO);',
':P336_CARGA_COL := ''N'';',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93874508638922210)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DEL_OTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P336_OBSERVACION IS NOT NULL THEN ',
'	declare',
'			vcorreo  varchar2(200);',
'			vmensaje varchar2(500);',
'			vmsj 	varchar2(500);',
'			V_SER_COMPROBANTE VARCHAR2(5);',
'            V_NRO_COMPROBANTE VARCHAR2(15);',
'            V_COD_CLIENTE     VARCHAR2(10);',
'            V_CLIENTE         VARCHAR2(100);',
'	begin',
'    SELECT C003 ,C004 ,C007,C008',
'      INTO V_SER_COMPROBANTE,V_NRO_COMPROBANTE,V_COD_CLIENTE,V_CLIENTE',
'       FROM APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME = ''B_OTS_DET''',
'        and seq_id = :P336_OT_ID;',
'					',
'				IF :P336_EVENTO=''D'' THEN	',
'					',
'							UPDATE CA_OTS_A_RENDIR_DET',
'							SET OBSERVACION=:P336_OBSERVACION,',
'									ESTADO=''RECHAZADO''',
'							WHERE NRO_PLANILLA = :P336_NRO_PLANILLA',
'							AND 	COD_EMPRESA =  :P_COD_EMPRESA',
'							AND 	COD_PROVEEDOR = :P336_PROVEEDOR_COD',
'							AND 	TIP_COMPROBANTE = ''ORT''--:B_DETALLE.TIP_COMPROBANTE',
'							AND 	SER_COMPROBANTE = V_SER_COMPROBANTE',
'							AND 	NRO_COMPROBANTE = V_NRO_COMPROBANTE',
'						;',
'												',
'					  vmsj := ''Orden de Trabajo Rechazado'';',
'						vmensaje:=''Nro: ''||V_SER_COMPROBANTE||''-''||V_NRO_COMPROBANTE',
'						||chr(10)||:P366_OBSERVACION;',
'						',
'								SELECT P.DIREC_ELECTRONICA',
'								into vcorreo',
'								FROM USUARIOS U,',
'								     PERSONAS P',
'								WHERE U.COD_USUARIO=:APP_USER',
'								AND   U.COD_PERSONA=P.COD_PERSONA',
'						 ;',
'						 			if vcorreo is not null then',
'						 				EnviarCorreo(''mail@ngosaeca.com.py'',vcorreo, vmsj,vmensaje,''192.168.15.13''); ',
'						 			end if;	',
'						',
'									INSERTA_SEGUIMIENTO_OT_MOTIVO(''1'' ,vmsj ||'' - ''||vmensaje, ',
'																								V_COD_CLIENTE, V_SER_COMPROBANTE , V_NRO_COMPROBANTE,',
'																								V_CLIENTE,NULL,vmsj ||'' - ''||vmensaje ,''44'',:APP_USER);',
'						',
'						',
'						',
'							/*FORMS_DDL(''COMMIT'');',
'							GO_BLOCK(''B_DETALLE'');',
'							EXECUTE_QUERY;*/',
'				END IF;	',
'		:P336_EVENTO:=NULL;',
'		:P336_CARGA_COL := ''S1'';',
'',
' ',
'	exception ',
'		when others then',
'				null;',
'	end;	',
'		',
'ELSE ',
'		RAISE_APPLICATION_ERROR(-20001,''Debe detallar el motivo'');',
'		--MESSAGE(''Debe detallar el motivo'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DEL_OTS'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93874713387922212)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PND_OTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P336_OBSERVACION IS NOT NULL THEN ',
'	declare',
'			vcorreo  varchar2(200);',
'			vmensaje varchar2(500);',
'			vmsj 	varchar2(500);',
'			V_SER_COMPROBANTE VARCHAR2(5);',
'            V_NRO_COMPROBANTE VARCHAR2(15);',
'            V_COD_CLIENTE     VARCHAR2(10);',
'            V_CLIENTE         VARCHAR2(100);',
'	begin',
'    SELECT C003 ,C004 ,C007,C008',
'      INTO V_SER_COMPROBANTE,V_NRO_COMPROBANTE,V_COD_CLIENTE,V_CLIENTE',
'       FROM APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME = ''B_OTS_DET''',
'        and seq_id = :P336_OT_ID;',
'					',
'				IF :P336_EVENTO=''P'' THEN	',
'					  vmsj := ''Orden de Trabajo Pendiente (Estado Actualizado)'';',
'						vmensaje:=''Nro: ''||V_SER_COMPROBANTE||''-''||V_NRO_COMPROBANTE',
'						||chr(10)||:P336_OBSERVACION;					',
'					',
'							SELECT P.DIREC_ELECTRONICA',
'							into vcorreo',
'							FROM USUARIOS U,',
'							     PERSONAS P',
'							WHERE U.COD_USUARIO=:APP_user',
'							AND   U.COD_PERSONA=P.COD_PERSONA',
'					 ;',
'					 			if vcorreo is not null then',
'					 				EnviarCorreo(''mail@ngosaeca.com.py'',vcorreo, vmsj,vmensaje,''192.168.15.13''); ',
'					 			end if;	',
'					 			',
'									INSERTA_SEGUIMIENTO_OT_MOTIVO(''1'' ,vmsj ||'' - ''||vmensaje, ',
'																								V_COD_CLIENTE, V_SER_COMPROBANTE , V_NRO_COMPROBANTE,',
'																								V_CLIENTE,NULL,vmsj ||'' - ''||vmensaje ,''44'',:APP_USER);',
'					 			',
'							  DELETE ',
'                                FROM CA_OTS_A_RENDIR_DET D',
'                               WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'                                 AND D.COD_PROVEEDOR = :P336_PROVEEDOR_COD',
'                                 AND D.TIP_COMPROBANTE = ''ORT''',
'                                 AND D.SER_COMPROBANTE = V_SER_COMPROBANTE',
'                                 AND D.NRO_COMPROBANTE = V_NRO_COMPROBANTE',
'                                 AND D.NRO_PLANILLA = :P336_NRO_PLANILLA;',
'',
'',
'				',
'				END IF;	',
'		:P336_EVENTO:=NULL;',
'		:P336_CARGA_COL := ''S1'';',
'',
' ',
'	exception ',
'		when others then',
'				null;',
'	end;	',
'		',
'ELSE ',
'		RAISE_APPLICATION_ERROR(-20001,''Debe detallar el motivo'');',
'		--MESSAGE(''Debe detallar el motivo'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PND_OTS'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93877810838922243)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Rendir_OTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CARENDOT.PROCBD_RENDIR_OTS(:P_COD_EMPRESA,',
'                           :P336_NRO_PLANILLA,',
'                           :P336_ESTADO,',
'                           :P336_FEC_CONFIRMA);',
'',
'',
'                           :P336_CARGA_COL:= ''S1'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75654377763710238)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :P336_COD_MODULO := ''CA'' ; ',
'  ',
'  :P336_COD_MONEDA_BASE := BS_BUSCA_PARAMETRO( ''BS'', ''COD_MONEDA_BASE'' ) ;',
'  :P336_COD_MONEDA_DOL  := BS_BUSCA_PARAMETRO( ''CM'', ''COD_MONEDA_DOL''  ) ;',
'  :P336_TIPO_CHEQUE     := BS_BUSCA_PARAMETRO( :P336_COD_MODULO, ''TIPO_CHEQUE'' ) ;',
'  :P336_TIPO_TRASLADO   := BS_BUSCA_PARAMETRO( :P336_COD_MODULO, ''TIPO_OTROS_TRASLADOS'' ) ;',
'  :P336_EFECTIVO        := ''EF'' ; ',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
