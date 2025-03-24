prompt --application/pages/page_00737
begin
--   Manifest
--     PAGE: 00737
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
 p_id=>737
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Centro de ayuda'
,p_alias=>'CREAR_TITULO'
,p_step_title=>'Centro_de_ayuda'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#VISOR{    ',
'  background-color: #00457F  !important;',
'} ',
'',
'#ngo_web,#home,#catalogo,#nosotros {',
'',
'    color: rgb(249, 249, 249);',
'   ',
'',
'}',
'',
'.cc-object-style {',
'    width: 100%;',
'    height: 800px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240509102305'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119421365744047904)
,p_plug_name=>'Centro de ayuda'
,p_region_name=>'VISOR'
,p_region_css_classes=>'u-color-1-background'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119422138536047912)
,p_plug_name=>unistr('Configuraci\00F3n de Articulo')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119423043939047921)
,p_plug_name=>'TITULO'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<h2>\00BFDe que trata la publicaci\00F3n?</h2>'),
'<style>',
'.sin-borde {',
'    border: none !important;',
'    box-shadow: none !important;',
'}',
'.apex-rds-container {',
'    margin: 0;',
'}',
'',
'</style>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119423389260047924)
,p_plug_name=>'Imagenes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       NRO_INTERNO,',
'       COD_IMAGEN,',
'       FEC_ALTA,',
'       NOMBRE_IMAGEN_CLOB,',
'       BFILE_IMAGEN,',
'       NOMBRE_IMAGEN,',
'       ROWID ROW_ID_DOC,',
'       NULL VER_DOCUMENTO,',
'       url,',
'       null eliminar',
'  from SPEE_IMAGENES ',
'  where cod_empresa = :P737_COD_EMPRESA',
'   and nro_interno = :P737_NRO_INTERNO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P737_COD_EMPRESA,P737_NRO_INTERNO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Imagenes'
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
 p_id=>wwv_flow_imp.id(119423442459047925)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>119423442459047925
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119423575226047926)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119423638150047927)
,p_db_column_name=>'NRO_INTERNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Interno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119423725882047928)
,p_db_column_name=>'COD_IMAGEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Imagen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119423837437047929)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119424001071047931)
,p_db_column_name=>'BFILE_IMAGEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Bfile Imagen'
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
 p_id=>wwv_flow_imp.id(119424122307047932)
,p_db_column_name=>'NOMBRE_IMAGEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre Imagen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119424481415047935)
,p_db_column_name=>'VER_DOCUMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ver Imagen'
,p_column_link=>'javascript:$s(''P737_VER_DOCUMENTOS_IMAGEN'',''#ROW_ID_DOC#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'VER_DOCUMENTO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119425238211047943)
,p_db_column_name=>'ROW_ID_DOC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Row Id Doc'
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
 p_id=>wwv_flow_imp.id(286837255042879940)
,p_db_column_name=>'NOMBRE_IMAGEN_CLOB'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nombre Imagen Clob'
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
 p_id=>wwv_flow_imp.id(301733776957802607)
,p_db_column_name=>'URL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(301734954614802619)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P737_ELIMINAR_DOC'',''#ROW_ID_DOC#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(285835875725708900)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2858359'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_IMAGEN:VER_DOCUMENTO:URL:ELIMINAR:'
,p_sort_column_1=>'DERIVADA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(280460164355208017)
,p_plug_name=>'Centro de ayuda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPEE_TITULO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(280464684151208019)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119421440294047905)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119421365744047904)
,p_button_name=>'Home'
,p_button_static_id=>'home'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Home'
,p_button_redirect_url=>'f?p=&APP_ID.:736:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119421540469047906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119421365744047904)
,p_button_name=>'NGO_web'
,p_button_static_id=>'ngo_web'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Ngo Web'
,p_button_redirect_url=>'https://ngosaeca.com.py/'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119421696681047907)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(119421365744047904)
,p_button_name=>'Catalogo'
,p_button_static_id=>'catalogo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Catalogo'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:126::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119421784105047908)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119421365744047904)
,p_button_name=>'Nosotros'
,p_button_static_id=>'nosotros'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Nosotros'
,p_button_redirect_url=>'https://ngosaeca.com.py/nosotros'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280466458686208020)
,p_button_sequence=>80
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P737_NRO_INTERNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(197610112326084282)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280466885462208020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'CHANGE'
,p_button_condition=>'P737_NRO_INTERNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280465033287208019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(280464684151208019)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280467253352208020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_button_condition=>'P737_NRO_INTERNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286450706433853129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119423389260047924)
,p_button_name=>'BT_Agregar_imagen'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Imagen'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:742:&SESSION.::&DEBUG.:742:P742_NRO_INTERNO,P742_COD_EMPRESA,P742_NOMBRE_IMAGEN:&P737_NRO_INTERNO.,&P737_COD_EMPRESA.,'
,p_button_condition=>'P737_NRO_INTERNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119422219065047913)
,p_name=>'P737_ETIQUETA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_prompt=>'Etiqueta'
,p_source=>'ETIQUETA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ETIQUETAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.etiqueta, t.etiqueta cod_etiqueta',
'from INV.SPEE_ETIQUETAS t'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119422965771047920)
,p_name=>'P737_FEC_ALTA'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_default=>'to_char(sysdate,''DD-MM-YYYY HH24:MI:SS'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_source=>'FEC_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280460413441208017)
,p_name=>'P737_NRO_INTERNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_source=>'NRO_INTERNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280460839917208017)
,p_name=>'P737_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280461296216208018)
,p_name=>'P737_TITULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_prompt=>'Titulo'
,p_source=>'TITULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>120
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280461656042208018)
,p_name=>'P737_DETALLES'
,p_source_data_type=>'CLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_prompt=>'Detalles'
,p_source=>'DETALLES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>60
,p_cMaxlength=>100000
,p_cHeight=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_02=>'Full'
,p_attribute_07=>'180'
,p_attribute_09=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280462434086208018)
,p_name=>'P737_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTADOS_SPEE'
,p_lov=>'.'||wwv_flow_imp.id(661673983748287327)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286451176540853133)
,p_name=>'P737_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286451351633853135)
,p_name=>'P737_VER_DOCUMENTOS_IMAGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286834504340879913)
,p_name=>'P737_TIPO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_prompt=>'Tipo'
,p_source=>'TIPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PROCEDIMIENTO;PROCEDIMIENTO,COMUNICADO;COMUNICADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836873775879936)
,p_name=>'P737_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_source_plug_id=>wwv_flow_imp.id(280460164355208017)
,p_item_default=>'(coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user))'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301735008380802620)
,p_name=>'P737_ELIMINAR_DOC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119422138536047912)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(280465141979208019)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(280465033287208019)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280465977704208019)
,p_event_id=>wwv_flow_imp.id(280465141979208019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286451456775853136)
,p_name=>'DA_VER_IMAGEN'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P737_VER_DOCUMENTOS_IMAGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286451501114853137)
,p_event_id=>wwv_flow_imp.id(286451456775853136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 741,',
'				    p_items  => ''P741_ROW_ID_DOCU'',',
'                    p_values => (''''||:P737_VER_DOCUMENTOS_IMAGEN||'''')) f_url_1',
'		INTO :P737_URL',
'		FROM DUAL;       ',
'	 ',
'    APEX_DEBUG.ERROR(:P737_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error en DA_VER_IMAGEN - 01.'' || SQLERRM);',
'END;'))
,p_attribute_02=>'P737_VER_DOCUMENTOS_IMAGEN'
,p_attribute_03=>'P737_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286451674924853138)
,p_event_id=>wwv_flow_imp.id(286451456775853136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P737_URL").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286833878456879906)
,p_name=>'DA_CERRAR'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(119423389260047924)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286833994333879907)
,p_event_id=>wwv_flow_imp.id(286833878456879906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119423389260047924)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286834007186879908)
,p_name=>'DA_REFRESCA'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(280460164355208017)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286834111033879909)
,p_event_id=>wwv_flow_imp.id(286834007186879908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119423389260047924)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286837576233879943)
,p_name=>'Previe_File'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.cc-object-style'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286837693467879944)
,p_event_id=>wwv_flow_imp.id(286837576233879943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let filesUrl = $(this.triggerinElement).data(''fileUrl'');',
'',
'  fetch(filesUrl)',
'    .then(response => {',
'         if (response.ok) {',
'             return response.blob();',
'         }',
'    }',
'    )',
'    .then(file => {',
'        let src = URL.createObjectURL(file);',
'        $(''#embeddedfile'').attr(''data'', src);',
'        $(''#filePreviewContainer'').dialog(''open'');',
'    })'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(301735121805802621)
,p_name=>'ELIMINAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P737_ELIMINAR_DOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301735210802802622)
,p_event_id=>wwv_flow_imp.id(301735121805802621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	DELETE INV.SPEE_IMAGENES',
'    WHERE ROWID = :P737_ELIMINAR_DOC;       ',
'	 ',
'   -- APEX_DEBUG.ERROR(:P737_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error en Eliminar IMAGEN - 01.'' || SQLERRM);',
'END;'))
,p_attribute_02=>'P737_ELIMINAR_DOC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301735312075802623)
,p_event_id=>wwv_flow_imp.id(301735121805802621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119423389260047924)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(280468000190208020)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(280460164355208017)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Crear_titulo'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(280467606910208020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(280460164355208017)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Crear_titulo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
