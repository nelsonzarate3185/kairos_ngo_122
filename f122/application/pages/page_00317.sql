prompt --application/pages/page_00317
begin
--   Manifest
--     PAGE: 00317
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
 p_id=>317
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud de Servicio SET UP'
,p_alias=>'SOLICITUD-DE-SERVICIO-SET-UP'
,p_step_title=>'Solicitud de Servicio SET UP'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1300px !important;',
'    }',
'',
'',
'    .apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM, #FILTROS{    ',
'  background-color: #487ab8  !important;',
'}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell  {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
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
'.a-IRR-table tr td  , .t-Form-label{ ',
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
,p_last_upd_yyyymmddhh24miss=>'20241009094229'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76926063018434623)
,p_plug_name=>'Solicitud de Servicio SET UP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76926503148434628)
,p_plug_name=>'COLEC_CA_SOLICITUD_SERVICIO_DIST'
,p_parent_plug_id=>wwv_flow_imp.id(76926063018434623)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 SER_PLANILLA,',
'       c003 NRO_PLANILLA,',
'       c004 FEC_PLANILLA,',
'       c005 ESTADO,',
'       c006 NOMBRE_CLIENTE,',
'       c007 OBSERVACION,',
'       c008 COD_DISTRIBUIDOR,',
'       c009 CI_CLIENTE,',
'       c010 DIRECCION,',
'       c011 FACTURA,',
'       c012 TELEFONO,',
'       c013 EMAIL,',
'       c014 CATEGORIA_PRODUCTO,',
'       c015 CANAL_COMUNICACION,',
'       c016 FECHA_ESTADO,',
'       c017 COD_CATEGORIA,',
'       c018 ALTA_POR,',
'       c019 FEC_ALTA,',
'       c020 CANT_REAGENDADA,',
'       c021 COD_DEPARTAMENTO,',
'       c022 COD_CIUDAD,',
'       c023 COD_CLIENTE_SETUP,',
'       c024 ORIGEN_SETUP,',
'       c025 ROW_ID,',
'       c026 CONTROL,',
'       c027 DESC_ESTADO,',
'       c028 DESC_ORIGEN,',
'       c029 FECHA_COMPRA,',
'       c030 DESC_CLIENTE_SETUP,',
'       c031 DESC_DEPARTAMENTO,',
'       c032 DESC_CIUDAD,',
'       NULL DETALLE,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CA_SOLICITUD_SERVICIO_DIST''',
'   AND (c026 = ''U'' OR c026 = ''I'' OR c026 IS NULL)',
'ORDER BY TO_NUMBER(c003) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CA_SOLICITUD_SERVICIO_DIST'
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
 p_id=>wwv_flow_imp.id(76926656804434629)
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
,p_internal_uid=>76926656804434629
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76926741060434630)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76926898080434631)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76926942729434632)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927034375434633)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927134866434634)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927242453434635)
,p_db_column_name=>'ESTADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927353314434636)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927487143434637)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927512801434638)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927628671434639)
,p_db_column_name=>'CI_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'RUC/NCI:'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927786833434640)
,p_db_column_name=>'DIRECCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927819025434641)
,p_db_column_name=>'FACTURA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76927957103434642)
,p_db_column_name=>'TELEFONO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928075673434643)
,p_db_column_name=>'EMAIL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928139543434644)
,p_db_column_name=>'CATEGORIA_PRODUCTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Categoria Producto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928249008434645)
,p_db_column_name=>'CANAL_COMUNICACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Canal Comunicacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928345260434646)
,p_db_column_name=>'FECHA_ESTADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928412598434647)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928545788434648)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928641956434649)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76928741806434650)
,p_db_column_name=>'CANT_REAGENDADA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cant Reagendada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425081346988101)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425172124988102)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425200614988103)
,p_db_column_name=>'COD_CLIENTE_SETUP'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Cliente Setup'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425390965988104)
,p_db_column_name=>'ORIGEN_SETUP'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Origen Setup'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425487990988105)
,p_db_column_name=>'ROW_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425574812988106)
,p_db_column_name=>'CONTROL'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425661507988107)
,p_db_column_name=>'EDITAR'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P317_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77425712438988108)
,p_db_column_name=>'BORRAR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P317_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77426205441988113)
,p_db_column_name=>'DETALLE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P317_DET_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77428777071988138)
,p_db_column_name=>'DESC_ESTADO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77429286609988143)
,p_db_column_name=>'DESC_ORIGEN'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77429351284988144)
,p_db_column_name=>'FECHA_COMPRA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Fecha Compra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77429423452988145)
,p_db_column_name=>'DESC_CLIENTE_SETUP'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Desc Cliente Setup'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77429643731988147)
,p_db_column_name=>'DESC_DEPARTAMENTO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Desc Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77429787222988148)
,p_db_column_name=>'DESC_CIUDAD'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Desc Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77441591386001792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'774416'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'SER_PLANILLA:NRO_PLANILLA:FEC_PLANILLA:CI_CLIENTE:NOMBRE_CLIENTE:FACTURA:FECHA_COMPRA:DESC_ORIGEN:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77426378630988114)
,p_plug_name=>'Datos del Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(76926063018434623)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77381942144826109)
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
 p_id=>wwv_flow_imp.id(77429982473988150)
,p_plug_name=>'Agregar/Editar Registro'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81401618360339614)
,p_plug_name=>'Datos del Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81402085670339618)
,p_plug_name=>'Buttons Container'
,p_parent_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82563375531905808)
,p_plug_name=>unistr('Informaci\00F3n')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83779910113124702)
,p_plug_name=>'Buttons Container 2'
,p_parent_plug_id=>wwv_flow_imp.id(82563375531905808)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82563605573905811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(83779910113124702)
,p_button_name=>'BTSI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Si'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82563776104905812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(83779910113124702)
,p_button_name=>'BTNO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'No'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81401320960339611)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(81402085670339618)
,p_button_name=>'BTAGREGAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76926114313434624)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(76926503148434628)
,p_button_name=>'BTCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76926262273434625)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(76926503148434628)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77425873470988109)
,p_name=>'P317_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76926503148434628)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77426063595988111)
,p_name=>'P317_DELETE_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76926503148434628)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77426168394988112)
,p_name=>'P317_CONTROL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76926063018434623)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77426578513988116)
,p_name=>'P317_CI_CLIENTE_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'RUC/NCI Cliente:'
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
 p_id=>wwv_flow_imp.id(77426773558988118)
,p_name=>'P317_DET_DATA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76926503148434628)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77426890816988119)
,p_name=>'P317_DIRECCION_DET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77427052439988121)
,p_name=>'P317_TELEFONO_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>unistr('N\00BA de Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(77427198892988122)
,p_name=>'P317_EMAIL_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Correo'
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
 p_id=>wwv_flow_imp.id(77427221795988123)
,p_name=>'P317_CATEGORIA_PRODUCTO_DET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77427342503988124)
,p_name=>'P317_CANAL_COMUNICACION_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>unistr('Canal de Comunicaci\00F3n')
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
 p_id=>wwv_flow_imp.id(77427492313988125)
,p_name=>'P317_FECHA_ESTADO_DET'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Fecha Estado'
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
 p_id=>wwv_flow_imp.id(77427528190988126)
,p_name=>'P317_COD_CATEGORIA_DET'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>unistr('Cod. Categor\00EDa')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77427607994988127)
,p_name=>'P317_ALTA_POR_DET'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Alta Por'
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
 p_id=>wwv_flow_imp.id(77427867462988129)
,p_name=>'P317_COD_DEPARTAMENTO_DET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Departam:'
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
 p_id=>wwv_flow_imp.id(77427929690988130)
,p_name=>'P317_COD_CIUDAD_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Ciudad'
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
 p_id=>wwv_flow_imp.id(77428094742988131)
,p_name=>'P317_COD_CLIENTE_SETUP_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77428255557988133)
,p_name=>'P317_FEC_ALTA_DET'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(77429573691988146)
,p_name=>'P317_ESTADO_DET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Estado'
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
 p_id=>wwv_flow_imp.id(81400375793339601)
,p_name=>'P317_SERIE_PLANILLA_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81400426669339602)
,p_name=>'P317_NRO_PLANILLA_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>unistr('N\00BA')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81400595270339603)
,p_name=>'P317_FECHA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(81400648939339604)
,p_name=>'P317_RUC_NCI_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'RUC/NCI'
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
 p_id=>wwv_flow_imp.id(81400738648339605)
,p_name=>'P317_COD_DISTRIBUIDOR_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR_CASOSEUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||nvl( p.nombre, p.nomb_fantasia ) D, ',
'       c.cod_cliente R',
'  from cc_clientes c, ',
'       personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona ',
'   and c.estado in (''A'',''C'')',
'   order by 1',
'',
'',
'',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(81400898609339606)
,p_name=>'P317_FACTURA_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'Factura'
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
 p_id=>wwv_flow_imp.id(81400990550339607)
,p_name=>'P317_FECHA_COMPRA_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'Fecha Compra'
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
 p_id=>wwv_flow_imp.id(81401069726339608)
,p_name=>'P317_ORIGEN_SETUP_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77429982473988150)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:WHIRLPOOL SET UP;27,TOKYO SET UP;31,FITNES;25'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81402179317339619)
,p_name=>'P317_CI_CLIENTE_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'RUC/NCI Cliente:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81402231541339620)
,p_name=>'P317_COD_CLIENTE_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Cod. Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASOSEUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( p.nombre, p.nomb_fantasia ) nombre, ',
'       c.cod_cliente, ',
'       cod_cliente_anterior ',
'  from cc_clientes c, ',
'       personas p ',
' where c.cod_empresa = :P_COD_EMPRESA ',
'   and c.cod_persona = p.cod_persona ',
'   and c.estado in (''A'',''C'')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81402343673339621)
,p_name=>'P317_NOMB_CLIENTE_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Nombre Cliente'
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
 p_id=>wwv_flow_imp.id(81402465976339622)
,p_name=>'P317_TELEFONO_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>unistr('N\00BA de Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(81402515205339623)
,p_name=>'P317_CORREO_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Correo'
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
 p_id=>wwv_flow_imp.id(81402647895339624)
,p_name=>'P317_DIRECCION_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(81402757577339625)
,p_name=>'P317_COD_DEPARTAMENTO_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVINCIAS_CASOSEUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVINCIA R,',
'       COD_PROVINCIA||'' - ''||DESCRIPCION D',
'  FROM provinCIas',
' WHERE cod_pais = ''PAR'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81402884486339626)
,p_name=>'P317_COD_CIUDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CIUDAD||'' - ''||DESCRIPCION D,',
'       COD_CIUDAD R',
'  FROM CIUDADES',
' WHERE COD_PAIS = ''PAR''',
'   AND COD_PROVINCIA = :P317_COD_DEPARTAMENTO_ADD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P317_COD_DEPARTAMENTO_ADD'
,p_ajax_items_to_submit=>'P317_COD_DEPARTAMENTO_ADD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81402931912339627)
,p_name=>'P317_COD_CATEGORIA_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS_CASOSEUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria||'' - ''||descripcion D, ',
'       cod_categoria R',
'  from st_categorias ',
' where cod_empresa = :P_COD_EMPRESA',
'   and  nvl(estado,''P'') NOT IN (''I'',''N'') ',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81403004371339628)
,p_name=>'P317_ESTADO_ADD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:PENDIENTE VENDEDOR;PENDIENTE_VENDEDOR,VISITA RECHAZADA;VISITA_RECHAZADA,VISITA ACEPTADA;VISITA_ACEPTADA,VOLVER A LLAMAR;VOLVER_A_LLAMAR,VISITA REALIZADA;VISITA_REALIZADA,ENSE\00D1ANZA USO;ENSE\00D1ANZA_USO,ANULAR;ANULADO,CONFIRMADO;CONFIRMADO,PENDIENT')
||'E DE FACTURA;PENDIENTE_FACTURA,PENDIENTE CLIENTE;PENDIENTE_CLIENTE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81403124748339629)
,p_name=>'P317_FECHA_ESTADO_ADD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>'Fecha Estado'
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
 p_id=>wwv_flow_imp.id(81403205317339630)
,p_name=>'P317_OBSERVACION_ADD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
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
 p_id=>wwv_flow_imp.id(81403349762339631)
,p_name=>'P317_OBSERVACION_DET'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
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
 p_id=>wwv_flow_imp.id(81403491490339632)
,p_name=>'P317_ACTUALIZADO_POR_DET'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>'Actualizado Por'
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
 p_id=>wwv_flow_imp.id(81403523957339633)
,p_name=>'P317_FECHA_ACTUALIZACION_DET'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(77426378630988114)
,p_prompt=>unistr('Fecha de Actualizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(81403628917339634)
,p_name=>'P317_CANAL_COMUNICACION_ADD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(81401618360339614)
,p_prompt=>unistr('Canal de Comunicaci\00F3n')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:WEB;WEB,WHATSAPP;WHATSAPP,CORREO;CORREO,LLAMADA;LLAMADA'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82563450796905809)
,p_name=>'P317_PREGUNTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82563375531905808)
,p_item_default=>unistr('SELECT ''\00BFDesea crear el cliente?'' FROM DUAL')
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82564321085905818)
,p_name=>'P317_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82563375531905808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77428340144988134)
,p_name=>'DA_GET_DET_DATA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77428464707988135)
,p_event_id=>wwv_flow_imp.id(77428340144988134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77428608481988137)
,p_event_id=>wwv_flow_imp.id(77428340144988134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.OBTENER_DET_DATA(pseq_id             => :P317_DET_DATA,',
'                              pci_cliente         => :P317_CI_CLIENTE_DET,',
'                              pdireccion          => :P317_DIRECCION_DET,',
'                              ptelefono           => :P317_TELEFONO_DET,',
'                              pemail              => :P317_EMAIL_DET,',
'                              pcat_producto       => :P317_CATEGORIA_PRODUCTO_DET,',
'                              pcanal_comunicacion => :P317_CANAL_COMUNICACION_DET,',
'                              pfecha_estado       => :P317_FECHA_ESTADO_DET,',
'                              pcod_categoria      => :P317_COD_CATEGORIA_DET,',
'                              palta_por           => :P317_ALTA_POR_DET,',
'                              pfecha_alta         => :P317_FEC_ALTA_DET,',
'                              pcod_departamento   => :P317_COD_DEPARTAMENTO_DET,',
'                              pcod_ciudad         => :P317_COD_CIUDAD_DET,',
'                              pcod_cliente_setup  => :P317_COD_CLIENTE_SETUP_DET,',
'                              pestado             => :P317_ESTADO_DET,',
'                              pobservacion        => :P317_OBSERVACION_DET,',
'                              pactualizado_por    => :P317_ACTUALIZADO_POR_DET,',
'                              pfec_actualizacion  => :P317_FECHA_ACTUALIZACION_DET);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_GET_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P317_DET_DATA'
,p_attribute_03=>'P317_CI_CLIENTE_DET,P317_DIRECCION_DET,P317_TELEFONO_DET,P317_EMAIL_DET,P317_CATEGORIA_PRODUCTO_DET,P317_CANAL_COMUNICACION_DET,P317_FECHA_ESTADO_DET,P317_COD_CATEGORIA_DET,P317_ALTA_POR_DET,P317_COD_DEPARTAMENTO_DET,P317_COD_CIUDAD_DET,P317_COD_CLIE'
||'NTE_SETUP_DET,P317_FEC_ALTA_DET,P317_ESTADO_DET,P317_OBSERVACION_DET,P317_ACTUALIZADO_POR_DET,P317_FECHA_ACTUALIZACION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_DET_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77428884056988139)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77428923017988140)
,p_event_id=>wwv_flow_imp.id(77428884056988139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77429046783988141)
,p_event_id=>wwv_flow_imp.id(77428884056988139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTIPCAM.DELETE_COL(pseq_id   => :P317_DELETE_DATA, ',
'                        p_col     => ''COLEC_CA_SOLICITUD_SERVICIO_DIST'',',
'                        patributo => 26);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P317_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77429129490988142)
,p_event_id=>wwv_flow_imp.id(77428884056988139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76926503148434628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81401177557339609)
,p_name=>'DA_ABRIR_MODAL_ADD'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76926114313434624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81401404843339612)
,p_event_id=>wwv_flow_imp.id(81401177557339609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_RUC_NCI_ADD,P317_COD_DISTRIBUIDOR_ADD,P317_FACTURA_ADD,P317_FECHA_COMPRA_ADD,P317_ORIGEN_SETUP_ADD,P317_CI_CLIENTE_ADD,P317_COD_CLIENTE_ADD,P317_NOMB_CLIENTE_ADD,P317_TELEFONO_ADD,P317_CORREO_ADD,P317_DIRECCION_ADD,P317_COD_DEPARTAMENTO_ADD,P317'
||'_COD_CIUDAD,P317_COD_CATEGORIA_ADD,P317_CANAL_COMUNICACION_ADD,P317_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81401561173339613)
,p_event_id=>wwv_flow_imp.id(81401177557339609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT NVL(MAX(TO_NUMBER(c003)),0) + 1',
'          INTO :P317_NRO_PLANILLA_ADD',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CA_SOLICITUD_SERVICIO_DIST'';',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P317_NRO_PLANILLA_ADD := NULL;',
'    END;',
'',
'    :P317_SERIE_PLANILLA_ADD := ''A'';',
'    :P317_FECHA_DET := TRUNC(SYSDATE);',
'    :P317_ESTADO_ADD := ''PENDIENTE_VENDEDOR'';',
'    :P317_OBSERVACION_ADD := ''Llamar.'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_ADD INICIAR_MODAL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P317_SERIE_PLANILLA_ADD,P317_FECHA_DET,P317_ESTADO_ADD,P317_OBSERVACION_ADD'
,p_attribute_03=>'P317_NRO_PLANILLA_ADD,P317_SERIE_PLANILLA_ADD,P317_FECHA_DET,P317_ESTADO_ADD,P317_OBSERVACION_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81401223586339610)
,p_event_id=>wwv_flow_imp.id(81401177557339609)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77429982473988150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81401731108339615)
,p_name=>'DA_OBTENER_CLIENTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_RUC_NCI_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81401872966339616)
,p_event_id=>wwv_flow_imp.id(81401731108339615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_RUC_NCI_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81401995517339617)
,p_event_id=>wwv_flow_imp.id(81401731108339615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P317_COD_DISTRIBUIDOR_ADD:= CASOSEUP.OBTENER_CLIENTE(pcod_empresa => :P_COD_EMPRESA,',
'                                                          pruc_nci     => :P317_RUC_NCI_ADD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_CLIENTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P317_RUC_NCI_ADD'
,p_attribute_03=>'P317_COD_DISTRIBUIDOR_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_RUC_NCI_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81403702067339635)
,p_name=>'DA_OBTENER_DATOS_CI'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_CI_CLIENTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81403829487339636)
,p_event_id=>wwv_flow_imp.id(81403702067339635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_CI_CLIENTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81403936568339637)
,p_event_id=>wwv_flow_imp.id(81403702067339635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.OBTENER_DATOS_CLIENTES_ADD(pcod_empresa    => :P_COD_EMPRESA,',
'                                        pruc_nci        => :P317_CI_CLIENTE_ADD,',
'                                        pcod_cliente    => :P317_COD_CLIENTE_ADD,',
'                                        pnombre_cliente => :P317_NOMB_CLIENTE_ADD);',
'    ',
'    IF :P317_COD_CLIENTE_ADD IS NULL THEN',
'        :P317_CONTROL := 0;',
'    ELSE',
'        :P317_CONTROL := 1;',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_DATOS_CI ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P317_CI_CLIENTE_ADD'
,p_attribute_03=>'P317_COD_CLIENTE_ADD,P317_NOMB_CLIENTE_ADD,P317_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_CI_CLIENTE_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404365902339641)
,p_event_id=>wwv_flow_imp.id(81403702067339635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_COD_CLIENTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404478485339642)
,p_event_id=>wwv_flow_imp.id(81403702067339635)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--apex_degug.error(''entra a la accion dinamica con el cliente ''||:P317_COD_CLIENTE_SETUP_DET);',
'    CASOSEUP.OBTENER_DATOS_CLIENTES_ADD_2(pcod_empresa       => :P_COD_EMPRESA,',
'                                          pcod_cliente_setup => :P317_COD_CLIENTE_ADD,',
'                                          pdireccion         => :P317_DIRECCION_ADD,',
'                                          ptelefono          => :P317_TELEFONO_ADD,',
'                                          pcorreo            => :P317_CORREO_ADD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_DATOS_CI_2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P317_COD_CLIENTE_ADD'
,p_attribute_03=>'P317_DIRECCION_ADD,P317_TELEFONO_ADD,P317_CORREO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82563552121905810)
,p_event_id=>wwv_flow_imp.id(81403702067339635)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82563375531905808)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P317_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81404015319339638)
,p_name=>'DA_OBTENER_DATOS_CI_2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COD_CLIENTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404148262339639)
,p_event_id=>wwv_flow_imp.id(81404015319339638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_COD_CLIENTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404247575339640)
,p_event_id=>wwv_flow_imp.id(81404015319339638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CASOSEUP.OBTENER_DATOS_CLIENTES_ADD_2(pcod_empresa       => :P_COD_EMPRESA,',
'                                          pcod_cliente_setup => :P317_COD_CLIENTE_ADD,',
'                                          pdireccion         => :P317_DIRECCION_ADD,',
'                                          ptelefono          => :P317_TELEFONO_ADD,',
'                                          pcorreo            => :P317_CORREO_ADD,',
'                                          pnomb_cliente      => :P317_NOMB_CLIENTE_ADD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_DATOS_CI_2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P317_COD_CLIENTE_ADD'
,p_attribute_03=>'P317_DIRECCION_ADD,P317_TELEFONO_ADD,P317_CORREO_ADD,P317_NOMB_CLIENTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_COD_CLIENTE_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81404571067339643)
,p_name=>'DA_ESTADO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_ESTADO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404665793339644)
,p_event_id=>wwv_flow_imp.id(81404571067339643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_ESTADO_ADD,P317_FECHA_ESTADO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404738557339645)
,p_event_id=>wwv_flow_imp.id(81404571067339643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --IF :P317_EDIT_DATA IS NULL THEN',
'        :P317_FECHA_ESTADO_ADD := TRUNC(SYSDATE);',
'   -- END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ESTADO ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P317_FECHA_ESTADO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81404822064339646)
,p_name=>'DA_AGREGAR_EDITAR_REG'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81401320960339611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81404942456339647)
,p_event_id=>wwv_flow_imp.id(81404822064339646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_SERIE_PLANILLA_ADD,P317_CI_CLIENTE_ADD,P317_NRO_PLANILLA_ADD,P317_COD_CLIENTE_ADD,P317_NOMB_CLIENTE_ADD,P317_RUC_NCI_ADD,P317_TELEFONO_ADD,P317_COD_DISTRIBUIDOR_ADD,P317_CORREO_ADD,P317_FACTURA_ADD,P317_DIRECCION_ADD,P317_FECHA_COMPRA_ADD,P317_C'
||'OD_DEPARTAMENTO_ADD,P317_ORIGEN_SETUP_ADD,P317_COD_CATEGORIA_ADD,P317_ESTADO_ADD,P317_FECHA_ESTADO_ADD,P317_CANAL_COMUNICACION_ADD,P317_OBSERVACION_ADD,P317_FECHA_DET,P317_COD_CIUDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81405090723339648)
,p_event_id=>wwv_flow_imp.id(81404822064339646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.ADD_COL(pcod_empresa        => :P_COD_EMPRESA,',
'                     pser_planilla       => :P317_SERIE_PLANILLA_ADD,',
'                     pnro_planilla       => :P317_NRO_PLANILLA_ADD,                      ',
'                     pfecha              => :P317_FECHA_DET,',
'                     pruc_nci            => :P317_RUC_NCI_ADD,',
'                     pcod_distribuidor   => :P317_COD_DISTRIBUIDOR_ADD,',
'                     pfactura            => :P317_FACTURA_ADD,',
'                     pfecha_compra       => :P317_FECHA_COMPRA_ADD,',
'                     porigen_setup       => :P317_ORIGEN_SETUP_ADD,',
'                     pci_cliente         => :P317_CI_CLIENTE_ADD,',
'                     pcod_cliente        => :P317_COD_CLIENTE_ADD,',
'                     ptelefono           => :P317_TELEFONO_ADD,',
'                     pcorreo             => :P317_CORREO_ADD,',
'                     pdireccion          => :P317_DIRECCION_ADD,',
'                     pcod_departamento   => :P317_COD_DEPARTAMENTO_ADD,',
'                     pcod_ciudad         => :P317_COD_CIUDAD,',
'                     pcod_categoria      => :P317_COD_CATEGORIA_ADD,',
'                     pestado             => :P317_ESTADO_ADD,',
'                     pfecha_estado       => :P317_FECHA_ESTADO_ADD,',
'                     pcanal_comunicacion => :P317_CANAL_COMUNICACION_ADD,',
'                     pobservacion        => :P317_OBSERVACION_ADD,',
'                     pcod_usuario        => :P_COD_USUARIO);',
'',
'    BEGIN',
'        SELECT seq_id',
'          INTO :P317_DET_DATA',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CA_SOLICITUD_SERVICIO_DIST''',
'           AND c003 = :P317_NRO_PLANILLA_ADD;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P317_DET_DATA := NULL;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_USUARIO,P317_SERIE_PLANILLA_ADD,P317_CI_CLIENTE_ADD,P317_NRO_PLANILLA_ADD,P317_COD_CLIENTE_ADD,P317_NOMB_CLIENTE_ADD,P317_RUC_NCI_ADD,P317_TELEFONO_ADD,P317_COD_DISTRIBUIDOR_ADD,P317_CORREO_ADD,P317_FACTURA_ADD,P317_DIRECCION_ADD,'
||'P317_FECHA_COMPRA_ADD,P317_COD_DEPARTAMENTO_ADD,P317_ORIGEN_SETUP_ADD,P317_COD_CATEGORIA_ADD,P317_ESTADO_ADD,P317_FECHA_ESTADO_ADD,P317_CANAL_COMUNICACION_ADD,P317_OBSERVACION_ADD,P317_COD_CIUDAD,P317_FECHA_DET'
,p_attribute_03=>'P317_DET_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P317_EDIT_DATA'
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
 p_id=>wwv_flow_imp.id(82563123193905806)
,p_event_id=>wwv_flow_imp.id(81404822064339646)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.EDIT_COL(pseq_id             => :P317_EDIT_DATA,',
'                      pser_planilla       => :P317_SERIE_PLANILLA_ADD,',
'                      pnro_planilla       => :P317_NRO_PLANILLA_ADD,                      ',
'                      pfecha              => :P317_FECHA_DET,',
'                      pruc_nci            => :P317_RUC_NCI_ADD,',
'                      pcod_distribuidor   => :P317_COD_DISTRIBUIDOR_ADD,',
'                      pfactura            => :P317_FACTURA_ADD,',
'                      pfecha_compra       => :P317_FECHA_COMPRA_ADD,',
'                      porigen_setup       => :P317_ORIGEN_SETUP_ADD,',
'                      pci_cliente         => :P317_CI_CLIENTE_ADD,',
'                      pcod_cliente        => :P317_COD_CLIENTE_ADD,',
'                      ptelefono           => :P317_TELEFONO_ADD,',
'                      pcorreo             => :P317_CORREO_ADD,',
'                      pdireccion          => :P317_DIRECCION_ADD,',
'                      pcod_departamento   => :P317_COD_DEPARTAMENTO_ADD,',
'                      pcod_ciudad         => :P317_COD_CIUDAD,',
'                      pcod_categoria      => :P317_COD_CATEGORIA_ADD,',
'                      pestado             => :P317_ESTADO_ADD,',
'                      pfecha_estado       => :P317_FECHA_ESTADO_ADD,',
'                      pcanal_comunicacion => :P317_CANAL_COMUNICACION_ADD,',
'                      pobservacion        => :P317_OBSERVACION_ADD,',
'                      pcod_usuario        => :P_COD_USUARIO);',
'    ',
'    BEGIN',
'        SELECT seq_id',
'          INTO :P317_DET_DATA',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CA_SOLICITUD_SERVICIO_DIST''',
'           AND c003 = :P317_NRO_PLANILLA_ADD;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P317_DET_DATA := NULL;',
'    END;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P317_EDIT_DATA,P_COD_USUARIO,P317_SERIE_PLANILLA_ADD,P317_CI_CLIENTE_ADD,P317_NRO_PLANILLA_ADD,P317_COD_CLIENTE_ADD,P317_NOMB_CLIENTE_ADD,P317_RUC_NCI_ADD,P317_TELEFONO_ADD,P317_COD_DISTRIBUIDOR_ADD,P317_CORREO_ADD,P317_FACTURA_ADD,P317_DIRECCION_ADD'
||',P317_FECHA_COMPRA_ADD,P317_COD_DEPARTAMENTO_ADD,P317_ORIGEN_SETUP_ADD,P317_COD_CATEGORIA_ADD,P317_ESTADO_ADD,P317_FECHA_ESTADO_ADD,P317_CANAL_COMUNICACION_ADD,P317_OBSERVACION_ADD,P317_COD_CIUDAD,P317_FECHA_DET'
,p_attribute_03=>'P317_DET_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81405175429339649)
,p_event_id=>wwv_flow_imp.id(81404822064339646)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77429982473988150)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81405248894339650)
,p_event_id=>wwv_flow_imp.id(81404822064339646)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76926503148434628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82562709409905802)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82562870417905803)
,p_event_id=>wwv_flow_imp.id(82562709409905802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82563033800905805)
,p_event_id=>wwv_flow_imp.id(82562709409905802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.CARGAR_DATOS_EDIT(pedit_data          => :P317_EDIT_DATA,',
'                               pser_planilla       => :P317_SERIE_PLANILLA_ADD,',
'                               pnro_planilla       => :P317_NRO_PLANILLA_ADD,                      ',
'                               pfecha              => :P317_FECHA_DET,',
'                               pruc_nci            => :P317_RUC_NCI_ADD,',
'                               pcod_distribuidor   => :P317_COD_DISTRIBUIDOR_ADD,',
'                               pfactura            => :P317_FACTURA_ADD,',
'                               pfecha_compra       => :P317_FECHA_COMPRA_ADD,',
'                               porigen_setup       => :P317_ORIGEN_SETUP_ADD,',
'                               pci_cliente         => :P317_CI_CLIENTE_ADD,',
'                               pcod_cliente        => :P317_COD_CLIENTE_ADD,',
'                               ptelefono           => :P317_TELEFONO_ADD,',
'                               pcorreo             => :P317_CORREO_ADD,',
'                               pdireccion          => :P317_DIRECCION_ADD,',
'                               pcod_departamento   => :P317_COD_DEPARTAMENTO_ADD,',
'                               pcod_ciudad         => :P317_COD_CIUDAD,',
'                               pcod_categoria      => :P317_COD_CATEGORIA_ADD,',
'                               pestado             => :P317_ESTADO_ADD,',
'                               pfecha_estado       => :P317_FECHA_ESTADO_ADD,',
'                               pcanal_comunicacion => :P317_CANAL_COMUNICACION_ADD,',
'                               pobservacion        => :P317_OBSERVACION_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA CARGAR_DATOS_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P317_EDIT_DATA'
,p_attribute_03=>'P317_SERIE_PLANILLA_ADD,P317_CI_CLIENTE_ADD,P317_NRO_PLANILLA_ADD,P317_COD_CLIENTE_ADD,P317_NOMB_CLIENTE_ADD,P317_RUC_NCI_ADD,P317_TELEFONO_ADD,P317_COD_DISTRIBUIDOR_ADD,P317_CORREO_ADD,P317_FACTURA_ADD,P317_DIRECCION_ADD,P317_FECHA_COMPRA_ADD,P317_C'
||'OD_DEPARTAMENTO_ADD,P317_ORIGEN_SETUP_ADD,P317_ESTADO_ADD,P317_FECHA_ESTADO_ADD,P317_CANAL_COMUNICACION_ADD,P317_OBSERVACION_ADD,P317_FECHA_DET,P317_COD_CIUDAD,P317_COD_CATEGORIA_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82562922919905804)
,p_event_id=>wwv_flow_imp.id(82562709409905802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77429982473988150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82563977501905814)
,p_name=>'DA_PREGUNTA_NO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82563776104905812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82564056252905815)
,p_event_id=>wwv_flow_imp.id(82563977501905814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82563375531905808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82564103344905816)
,p_name=>'DA_PREGUNTA_SI'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82563605573905811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82564235012905817)
,p_event_id=>wwv_flow_imp.id(82564103344905816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P317_URL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82564485934905819)
,p_event_id=>wwv_flow_imp.id(82564103344905816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL(p_page   => 271) f_url_1',
'		INTO :P317_URL',
'		FROM DUAL;        ',
'	 ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_PREGUNTA_SI ''||SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P317_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82564557254905820)
,p_event_id=>wwv_flow_imp.id(82564103344905816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P317_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82564743983905822)
,p_event_id=>wwv_flow_imp.id(82564103344905816)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82563375531905808)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77429857147988149)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76926383314434626)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CA_SOLICITUD_SERVICIO_DIST'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76926435748434627)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.CARGAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83780079443124703)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASOSEUP.GUARDAR_DATOS;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 317 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar los datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(76926262273434625)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
