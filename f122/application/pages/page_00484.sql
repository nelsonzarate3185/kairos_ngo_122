prompt --application/pages/page_00484
begin
--   Manifest
--     PAGE: 00484
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
 p_id=>484
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pedidos de OTs para envio al interior - CAOTSINT'
,p_alias=>'CAOTSINT'
,p_step_title=>'Pedidos de OTs para envio al interior - CAOTSINT'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'/*',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'*/',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'}  ',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #003a85;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240606172916'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143726842658757406)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143729581112757433)
,p_plug_name=>'Pedidos de OTs para envio al interior'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143556496050623005)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(143729581112757433)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       v.COD_EMPRESA,',
'       v.COD_SUCURSAL,',
'       v.TIP_COMPROBANTE,',
'       v.NRO_COMPROBANTE,',
'       v.FEC_COMPROBANTE,',
'       v.SER_COMPROBANTE,',
'       v.COD_CLIENTE,',
'       v.NOM_CLIENTE,',
'       v.COD_ARTICULO,',
'       (  SELECT s.descripcion ',
'          FROM st_articulos s ',
'           WHERE cod_empresa = :p_cod_empresa and s.cod_articulo=v.cod_articulo) ARTICULO,',
'       v.FEC_SOL_ENVIO,',
'       v.INTERIOR_ESTADO,',
'       v.TIP_COMPROBANTE_FAC,',
'       v.SER_COMPROBANTE_FAC,',
'       v.NRO_COMPROBANTE_FAC,',
'       v.IND_FACTURADO,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL MOTIVO,',
'       NULL ELIMINAR',
'  from VT_ORDENES_TRABAJO v',
'  WHERE cod_empresa = :P_COD_EMPRESA ',
'    --AND FEC_SOL_ENVIO>to_date(''01/01/2019'',''DD/MM/YYYY'')',
'    AND (:P484_FILTROS is null or INTERIOR_ESTADO in(select *',
'    from table(utils.array_varchars(:P484_FILTROS,'':'')) ))',
'    order by FEC_SOL_ENVIO;   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P484_FILTROS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(143556578847623006)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>143556578847623006
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143556922434623010)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro OT'
,p_column_link=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:588:P588_SER_COMPROBANTE,P588_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143557188996623012)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143557227149623013)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143557809469623019)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143718715856757525)
,p_db_column_name=>'FEC_SOL_ENVIO'
,p_display_order=>1690
,p_column_identifier=>'FM'
,p_column_label=>'Fecha Solicita'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143721540929757403)
,p_db_column_name=>'INTERIOR_ESTADO'
,p_display_order=>1970
,p_column_identifier=>'GO'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730199552757439)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>1980
,p_column_identifier=>'GP'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730257208757440)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>1990
,p_column_identifier=>'GQ'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730369413757441)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>2000
,p_column_identifier=>'GR'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730451100757442)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>2010
,p_column_identifier=>'GS'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730599609757443)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>2020
,p_column_identifier=>'GT'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730613702757444)
,p_db_column_name=>'TIP_COMPROBANTE_FAC'
,p_display_order=>2030
,p_column_identifier=>'GU'
,p_column_label=>'Tip Comprobante Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730785004757445)
,p_db_column_name=>'SER_COMPROBANTE_FAC'
,p_display_order=>2040
,p_column_identifier=>'GV'
,p_column_label=>'Ser Comprobante Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730846262757446)
,p_db_column_name=>'NRO_COMPROBANTE_FAC'
,p_display_order=>2050
,p_column_identifier=>'GW'
,p_column_label=>'Nro Comprobante Fac'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143730959460757447)
,p_db_column_name=>'IND_FACTURADO'
,p_display_order=>2060
,p_column_identifier=>'GX'
,p_column_label=>'Ind Facturado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143731012514757448)
,p_db_column_name=>'ROWID'
,p_display_order=>2070
,p_column_identifier=>'GY'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143731174479757449)
,p_db_column_name=>'EDITAR'
,p_display_order=>2080
,p_column_identifier=>'GZ'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P484_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143731278061757450)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>2090
,p_column_identifier=>'HA'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P484_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144524264931551411)
,p_db_column_name=>'ARTICULO'
,p_display_order=>2100
,p_column_identifier=>'HB'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144524318359551412)
,p_db_column_name=>'MOTIVO'
,p_display_order=>2110
,p_column_identifier=>'HC'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P484_MOTIVO'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-times-square-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(143825265443603555)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1438253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_ARTICULO:ARTICULO:FEC_SOL_ENVIO:INTERIOR_ESTADO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143729668252757434)
,p_plug_name=>'CABECERA'
,p_region_name=>'PARAM1'
,p_parent_plug_id=>wwv_flow_imp.id(143729581112757433)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144149438907250718)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144151999007250743)
,p_plug_name=>'Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144524514140551414)
,p_plug_name=>'MOTIVO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143729812909757436)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(143729668252757434)
,p_button_name=>'bt_Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144524880835551417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(144524514140551414)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144150652634250730)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144152236795250746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(144151999007250743)
,p_button_name=>'bt_Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144524742826551416)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(144524514140551414)
,p_button_name=>'Bt_guardarMotivo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Motivo'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144149662603250720)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144148948491250713)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143726941440757407)
,p_name=>'P484_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727028864757408)
,p_name=>'P484_DERECHOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727181385757409)
,p_name=>'P484_NRO_ORDEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727284259757410)
,p_name=>'P484_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727330837757411)
,p_name=>'P484_COD_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727469294757412)
,p_name=>'P484_NOM_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727589462757413)
,p_name=>'P484_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727638597757414)
,p_name=>'P484_CONFIRMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727761374757415)
,p_name=>'P484_NOM_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727836566757416)
,p_name=>'P484_COD_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143727938029757417)
,p_name=>'P484_NOM_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728048972757418)
,p_name=>'P484_COD_SUCURSAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728170246757419)
,p_name=>'P484_NOM_SUCURSAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728209948757420)
,p_name=>'P484_COD_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728368569757421)
,p_name=>'P484_COD_IDIOMA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728428815757422)
,p_name=>'P484_CODSISMENU'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728550028757423)
,p_name=>'P484_IND_ENT_SAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728663078757424)
,p_name=>'P484_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728701794757425)
,p_name=>'P484_OK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143728805893757426)
,p_name=>'P484_CANCEL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(143726842658757406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144148149676250705)
,p_name=>'P484_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144148470150250708)
,p_name=>'P484_FILTROS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143729668252757434)
,p_prompt=>'Filtros'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Solicitado;S,Enviado;E,Procesado;P,No Enviado;N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'4'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144149595755250719)
,p_name=>'P484_INTERIOR_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Enviado;E,No Enviado;N,Procesado;P,Solicitado;S'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144149982721250723)
,p_name=>'P484_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150011393250724)
,p_name=>'P484_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150191394250725)
,p_name=>'P484_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150257609250726)
,p_name=>'P484_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>unistr('C\00F3digo Cliente')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CAOTSINT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CLIENTE||''-''||NOM_CLIENTE D,cod_cliente r',
'from VT_ORDENES_TRABAJO',
'WHERE COD_CLIENTE IS NOT NULL;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150376055250727)
,p_name=>'P484_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ARTICULO',
'FROM VT_ORDENES_TRABAJO;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150563811250729)
,p_name=>'P484_FEC_SOL_ENVIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Fecha Solicita'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150830021250732)
,p_name=>'P484_FEC_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Fec Comprobante'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144150928235250733)
,p_name=>'P484_NOM_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    SELECT NOM_CLIENTE',
'    FROM VT_ORDENES_TRABAJO',
'    WHERE COD_CLIENTE=:P484_COD_CLIENTE;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P484_COD_CLIENTE'
,p_ajax_items_to_submit=>'P484_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144151036686250734)
,p_name=>'P484_TIP_COMPROBANTE_FAC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Tip Comprobante Fac'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144151140540250735)
,p_name=>'P484_SER_COMPROBANTE_FAC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Ser Comprobante Fac'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144151266780250736)
,p_name=>'P484_NRO_COMPROBANTE_FAC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(144149438907250718)
,p_prompt=>'Nro Comprobante Fac'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144152035782250744)
,p_name=>'P484_INTERIOR_ESTADO_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144151999007250743)
,p_prompt=>'Interior Estado Aux'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Enviado;E,No Enviado;N,Procesado;P,Solicitado;S'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144523572848551404)
,p_name=>'P484_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144523999427551408)
,p_name=>'P484_ERR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(143556496050623005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(144524606737551415)
,p_name=>'P484_DESC_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144524514140551414)
,p_prompt=>'Desc Motivo'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143729914912757437)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143729812909757436)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144148244415250706)
,p_event_id=>wwv_flow_imp.id(143729914912757437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P484_FILTROS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143730032794757438)
,p_event_id=>wwv_flow_imp.id(143729914912757437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143556496050623005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144148595366250709)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P484_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144148624392250710)
,p_event_id=>wwv_flow_imp.id(144148595366250709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144148740321250711)
,p_event_id=>wwv_flow_imp.id(144148595366250709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE VT_ORDENES_TRABAJO',
'    WHERE ROWID = :P484_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P484_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144148882359250712)
,p_event_id=>wwv_flow_imp.id(144148595366250709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143556496050623005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144149017332250714)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144148948491250713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144149296979250716)
,p_event_id=>wwv_flow_imp.id(144149017332250714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P484_NRO_COMPROBANTE := CAOTSINT.FN_NRO_COMPROBANTE;'
,p_attribute_03=>'P484_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144149385936250717)
,p_event_id=>wwv_flow_imp.id(144149017332250714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144149438907250718)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144149790883250721)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144149662603250720)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144149816873250722)
,p_event_id=>wwv_flow_imp.id(144149790883250721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P484_TIP_COMPROBANTE:=''ORT'';',
':P484_SER_COMPROBANTE:=''A'';',
':P484_ERR := null;',
'    IF :P484_NRO_COMPROBANTE is not null ',
'    and :P484_TIP_COMPROBANTE is not null and :P484_SER_COMPROBANTE is not null',
'    and :P_COD_EMPRESA is not null and :P484_INTERIOR_ESTADO is not null',
'    and :P484_NRO_COMPROBANTE_FAC is not null  and :P484_SER_COMPROBANTE_FAC is not null ',
'    and :P484_INTERIOR_ESTADO is not null then',
'            IF :P484_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                BEGIN',
'                INSERT INTO VT_ORDENES_TRABAJO (',
'                        COD_EMPRESA,',
'                        NRO_COMPROBANTE,',
'                        TIP_COMPROBANTE,',
'                        SER_COMPROBANTE,',
'                        COD_CLIENTE,',
'                        COD_ARTICULO,',
'                        FEC_SOL_ENVIO,',
'                        INTERIOR_ESTADO,',
'                        COD_SUCURSAL,',
'                        FEC_COMPROBANTE,',
'                        NOM_CLIENTE,',
'                        TIP_COMPROBANTE_FAC,',
'                        SER_COMPROBANTE_FAC,',
'                        NRO_COMPROBANTE_FAC',
'',
'                ) VALUES (',
'                         :P_COD_EMPRESA,',
'                         :P484_NRO_COMPROBANTE,',
'                         :P484_TIP_COMPROBANTE,',
'                         :P484_SER_COMPROBANTE,',
'                         :P484_COD_CLIENTE,',
'                         :P484_COD_ARTICULO,',
'                         :P484_FEC_SOL_ENVIO,',
'                         :P484_INTERIOR_ESTADO,',
'                         :P484_COD_SUCURSAL,',
'                         :P484_FEC_COMPROBANTE,',
'                         :P484_NOM_CLIENTE,',
'                         :P484_TIP_COMPROBANTE_FAC,',
'                         :P484_SER_COMPROBANTE_FAC,',
'                         :P484_NRO_COMPROBANTE_FAC',
'                );',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                    APEX_dEBUG.ERROR(SQLERRM);',
'                END;',
'                APEX_DEBUG.ERROR(''ACA ESTOY''|| SQLERRM);',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE VT_ORDENES_TRABAJO SET',
'                        INTERIOR_ESTADO=:P484_INTERIOR_ESTADO',
'                WHERE ROWID = :P484_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P484_NRO_COMPROBANTE is null then :P484_ERR := ''Por favor: ingrese el campo "NRO_COMPROBANTE" '';',
'            when :P484_TIP_COMPROBANTE is null then :P484_ERR := ''Por favor: ingrese el campo "TIP_COMPROBANTE"''; ',
'            when :P484_NRO_COMPROBANTE is null then :P484_ERR := ''Por favor: ingrese el campo "SER_COMPROBANTE" '';',
'            when :P_COD_EMPRESA is null then :P484_ERR := ''Por favor: ingrese el campo "COD_EMPRESA" '';',
'            when :P484_INTERIOR_ESTADO is null then :P484_ERR := ''Por favor: ingrese el campo "INTERIOR_ESTADO"'';',
'            when :P484_NRO_COMPROBANTE_FAC is null then :P484_ERR := ''Por favor: ingrese el campo "NRO_COMPROBANTE_FAC"''; ',
'            when :P484_SER_COMPROBANTE_FAC is null then :P484_ERR := ''Por favor: ingrese el campo "SER_COMPROBANTE_FAC"'';  ',
'            when :P484_TIP_COMPROBANTE_FAC is null then :P484_ERR := ''Por favor: ingrese el campo "TIP_COMPROBANTE_FAC"'';  ',
'           ',
'               ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA, P484_NRO_COMPROBANTE, P484_TIP_COMPROBANTE, P484_SER_COMPROBANTE, P484_COD_CLIENTE, P484_COD_ARTICULO, P484_FEC_SOL_ENVIO, P484_INTERIOR_ESTADO, P484_COD_SUCURSAL, P484_FEC_COMPROBANTE, P484_NOM_CLIENTE, P484_TIP_COMPROBANTE_FAC, P484_'
||'SER_COMPROBANTE_FAC, P484_NRO_COMPROBANTE_FAC'
,p_attribute_03=>'P484_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144151392639250737)
,p_event_id=>wwv_flow_imp.id(144149790883250721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143556496050623005)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144151460631250738)
,p_event_id=>wwv_flow_imp.id(144149790883250721)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144149438907250718)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P484_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144152309978250747)
,p_name=>'DA_GUARDAR_AUX'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144152236795250746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144152406541250748)
,p_event_id=>wwv_flow_imp.id(144152309978250747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P484_ERR := null;',
'    IF :P484_INTERIOR_ESTADO_AUX is not null then',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE VT_ORDENES_TRABAJO SET',
'                        INTERIOR_ESTADO=:P484_INTERIOR_ESTADO_AUX',
'                WHERE ROWID = :P484_EDITAR;',
'            ',
'    ELSE',
'        CASE',
'            when :P484_INTERIOR_ESTADO_AUX is null then :P484_ERR := ''Por favor: ingrese el campo "INTERIOR_ESTADO"''; ',
'               ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P484_INTERIOR_ESTADO_AUX'
,p_attribute_03=>'P484_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144152530075250749)
,p_event_id=>wwv_flow_imp.id(144152309978250747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143556496050623005)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144152612956250750)
,p_event_id=>wwv_flow_imp.id(144152309978250747)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144151999007250743)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P484_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144523662931551405)
,p_name=>'DA_EDITAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P484_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144523817692551407)
,p_event_id=>wwv_flow_imp.id(144523662931551405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144151999007250743)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144523721151551406)
,p_event_id=>wwv_flow_imp.id(144523662931551405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P484_EDITAR is not null then',
'        select INTERIOR_ESTADO',
'',
'        into :P484_INTERIOR_ESTADO_AUX',
'        from VT_ORDENES_TRABAJO',
'        where rowid = :P484_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P484_EDITAR'
,p_attribute_03=>'P484_INTERIOR_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144524059274551409)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P484_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144524183963551410)
,p_event_id=>wwv_flow_imp.id(144524059274551409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P484_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P484_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144736735346653003)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P484_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144736802568653004)
,p_event_id=>wwv_flow_imp.id(144736735346653003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT NOM_CLIENTE',
'    INTO :P484_NOM_CLIENTE',
'    FROM VT_ORDENES_TRABAJO',
'    WHERE COD_CLIENTE=:P484_COD_CLIENTE AND COD_ARTICULO=:P484_COD_ARTICULO;',
'',
'END;'))
,p_attribute_02=>'P484_COD_CLIENTE,P484_COD_ARTICULO'
,p_attribute_03=>'P484_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144736972716653005)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144150652634250730)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144737014355653006)
,p_event_id=>wwv_flow_imp.id(144736972716653005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144149438907250718)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144524958294551418)
,p_name=>'DA_MOTIVO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P484_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144526178958551430)
,p_event_id=>wwv_flow_imp.id(144524958294551418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_motivo_principal VARCHAR(500);',
'BEGIN',
'    SELECT motivo_principal',
'    --into V_motivo_principal',
'    into :P484_DESC_MOTIVO',
'    from CA_LLAMADAS_SALIENTES',
'	WHERE NRO_COMPROBANTE = :p484_NRO_COMPROBANTE',
'	AND 	TIP_COMPROBANTE = :p484_TIP_COMPROBANTE',
'	AND 	SER_COMPROBANTE = :p484_SER_COMPROBANTE;',
'',
'',
'',
'END;',
'   ',
''))
,p_attribute_02=>'P484_COD_EMPRESA,P484_NRO_COMPROBANTE,P484_TIP_COMPROBANTE,P484_SER_COMPROBANTE'
,p_attribute_03=>'P484_DESC_MOTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144525082219551419)
,p_event_id=>wwv_flow_imp.id(144524958294551418)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144524514140551414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144525449810551423)
,p_name=>'DA_GUARDAR_MOT'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144524742826551416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144525838634551427)
,p_event_id=>wwv_flow_imp.id(144525449810551423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :p484_motivo IS NOT NULL THEN',
'		begin',
'					UPDATE VT_ORDENES_TRABAJO',
'					SET INTERIOR_ESTADO=''N''',
'					WHERE ROWID = :P484_MOTIVO',
'					;	',
'				--	INSERTA_SEGUIMIENTO_OT_MOTIVO(''1'' ,''Cancelacion de la OT para envio al interior.''||chr(10)||:P484_desc_MOTIVO',
'				--	,:P484_COD_CLIENTE,:P484_SER_COMPROBANTE ,:P484_NRO_COMPROBANTE,:P484_NOM_CLIENTE,'''',''CAMBIO DE ESTADO PARA ENVIO AL INTERIOR'',''3'');                                                                                                               '
||'               ',
'		',
'		exception ',
'				when others then',
'							NULL;',
'		end;',
'',
'		:p484_motivo:=Null;',
'',
'END IF; '))
,p_attribute_02=>'P484_DESC_MOTIVO,P484_NRO_COMPROBANTE,P484_TIP_COMPROBANTE,P484_SER_COMPROBANTE,P484_COD_EMPRESA,P484_MOTIVO,P484_INTERIOR_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144525564827551424)
,p_event_id=>wwv_flow_imp.id(144525449810551423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143556496050623005)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144525687377551425)
,p_event_id=>wwv_flow_imp.id(144525449810551423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144524514140551414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144525905396551428)
,p_name=>'DA_CANCEL'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144524880835551417)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144526099893551429)
,p_event_id=>wwv_flow_imp.id(144525905396551428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144524514140551414)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143729302280757431)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P484_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P484_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P484_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
':P484_COD_MODULO := NVL(:P_COD_MODULO,''CA'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
