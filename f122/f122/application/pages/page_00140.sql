prompt --application/pages/page_00140
begin
--   Manifest
--     PAGE: 00140
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
 p_id=>140
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Casos_Seguimiento'
,p_alias=>'CASOS-SEGUIMIENTO1'
,p_step_title=>'Seguimiento de Casos '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
'   display: none;',
'}',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: #003a85;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    ',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: yellow;',
'    font-weight: bold !important;',
'}',
'',
'.t-Region-body>.container .t-Button{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'',
' #btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros/*, #R12875002688605103,#P12_DETALLE_DISPLAY*/{',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P140_CAMPANIA, #P140_MOTIVO , #P140_CODIGO, #P140_CLIENTE, #P140_ESTADO, ',
'#P140_FECHA_INICIO, #P140_FECHA_FIN, #P140_NRO_REF, #P140_GARANTIA, #P140_TIPO {',
'    background: white;',
'    border-color: darkblue; ',
'    color: darkblue;',
'}      ',
'',
'.a-GV-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'	color: #FFED00 !important; ',
'      }',
'',
'',
'',
'.a-GV-footer { display:none;}',
'',
'',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'RVASQUEZ'
,p_last_upd_yyyymmddhh24miss=>'20250310104822'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66651280406004425)
,p_plug_name=>'Detalles'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77924540426020485)
,p_plug_name=>'Casos_contactos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CASO,',
'       FECHA,',
'       ESTADO,',
'       OBSERVACION,',
'       PROXIMO_CONTACTO,',
'       CAMPANIA,',
'       MOTIVO,',
'       COD_USUARIO,',
'       COD_CLIENTE,',
'       COD_CAMPANIA,',
'       COD_MOTIVO,',
'       CANT,',
'       TIPO_COMP_REF,',
'       NRO_COMP_REF,',
'       NRO_GARANTIA',
'  from VW_CRM_CASOS',
' where (:P140_CODIGO IS NOT NULL OR :P140_ID_CASO IS NOT NULL)',
'AND  ( :P140_CODIGO IS NULL OR COD_CLIENTE=:P140_CODIGO)',
'AND ( :P140_CAMPANIA IS NULL  OR COD_CAMPANIA=:P140_CAMPANIA)',
'AND ( :P140_MOTIVO IS NULL OR COD_MOTIVO=:P140_MOTIVO)',
'and ( :P140_ESTADO IS NULL OR ESTADO=:P140_ESTADO )',
'AND ( :P140_TIPO IS NULL OR tipo_comp_ref=:P140_TIPO)',
'and ( :P140_NRO_REF IS NULL OR nro_comp_ref=:P140_NRO_REF )',
'and ( :P140_GARANTIA IS NULL OR nro_garantia=:P140_GARANTIA )',
'and ( :P140_ID_CASO IS NULL OR ID_CASO = :P140_ID_CASO ) '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P140_CODIGO,P140_CAMPANIA,P140_MOTIVO,P140_ESTADO,P140_NRO_REF,P140_TIPO,P140_ID_CASO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Casos_contactos'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(62309137828124868)
,p_name=>'COD_CAMPANIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CAMPANIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(62309183334124869)
,p_name=>'COD_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66216807114200367)
,p_name=>'TIPO_COMP_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_COMP_REF'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tipo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:ORDEN DE TRABAJO;ORT,NOTA DE CREDITO;NCR,FACTURA CREDITO;FCR,FACTURA CONTADO;FCO,PEDIDO;PED,SOLICITUD NO CONFORME;SNF'
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66216878675200368)
,p_name=>'NRO_COMP_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMP_REF'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66217037016200369)
,p_name=>'NRO_GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Garantia'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70043400266326360)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70043470008326361)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.DESCRIPCION, T.COD_ESTADO ',
'from INV.CRM_ESTADOS t',
'WHERE COD_EMPRESA= :P_COD_EMPRESA;'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70043568259326362)
,p_name=>'CAMPANIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAMPANIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Campa\00F1a')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70043710560326363)
,p_name=>'MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Motivo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70043757684326364)
,p_name=>'CANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cant.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70043955241326366)
,p_name=>'Add'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Contacto'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_link_target=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:CR,141:P141_P_ID_CASO,P141_CAMPANIA,P141_MOTIVO,P141_CLIENTE:&ID_CASO.,&COD_CAMPANIA.,&COD_MOTIVO.,&COD_CLIENTE.'
,p_link_text=>'<i class=''fa fa-plus''></i>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77927286702020490)
,p_name=>'ID_CASO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CASO'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Caso'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77931340582020492)
,p_name=>'COD_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT DISTINCT NVL(TRIM(P.NOMBRE),TRIM(P.NOMB_FANTASIA))||'' - ''||  C.COD_CLIENTE DATOS',
'           , C.COD_CLIENTE',
'     FROM CC_CLIENTES C',
'          ,PERSONAS P',
'     WHERE C.COD_EMPRESA= :P_COD_EMPRESA',
'     AND   C.COD_PERSONA=P.COD_PERSONA',
'',
'     '))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77933300305020493)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Observacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_link_target=>'javascript:$s(''P140_DETALLE'',''&OBSERVACION.'')'
,p_link_text=>'&OBSERVACION.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77934331535020493)
,p_name=>'PROXIMO_CONTACTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROXIMO_CONTACTO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Proximo Contacto'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77935316032020494)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Usuario'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(77925003304020486)
,p_internal_uid=>77925003304020486
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(77925422736020487)
,p_interactive_grid_id=>wwv_flow_imp.id(77925003304020486)
,p_static_id=>'73848'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(77925567475020488)
,p_report_id=>wwv_flow_imp.id(77925422736020487)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63180918294966714)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(62309137828124868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63185960709979612)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(62309183334124869)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66629730867954200)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(66216807114200367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66630677419954203)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(66216878675200368)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66631573982954204)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(66217037016200369)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70875879235965800)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(70043400266326360)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70876777290965804)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(70043470008326361)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70877672958965809)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(70043568259326362)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70878557116965811)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(70043710560326363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70879506784965813)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(70043757684326364)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70921162209507796)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(70043955241326366)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77927726955020491)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(77927286702020490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77931712922020492)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(77931340582020492)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>252.219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77933673842020493)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(77933300305020493)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>298
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77934664367020493)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(77934331535020493)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77935730840020494)
,p_view_id=>wwv_flow_imp.id(77925567475020488)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(77935316032020494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77937560942020537)
,p_plug_name=>'Detalle_contact'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.ID_CASO,',
'       C.ID_CONTACTO,',
'       C.COD_EMPRESA,',
'       C.COD_CANAL,',
'       C.num_telefono,',
'       C.COD_USUARIO,',
'       C.FECHA_INICIO,',
'       DECODE(C.FECHA_FIN,NULL,',
'                     ''<button  type="button"  id="btndet" onclick="$s(''''P140_ID_FINALIZA'''',''''''||C.ID_CASO||C.ID_CONTACTO||'''''')" >FINALIZAR</button>''   ,',
'                    ''<input type="date" value="''||to_char(C.FECHA_FIN,''YYYY-MM-DD'')||''" />'') AS  FECHA_FIN,',
'       C.COD_ESTADO,',
'       C.OBSERVACION,',
'       (SELECT COUNT(*) FROM CRM_DERIVACIONES_CONTACTO D WHERE D.ID_CASO = C.ID_CASO AND D.ID_CONTACTO = C.ID_CONTACTO AND D.COD_EMPRESA =C.COD_EMPRESA)CANT_DERIVACIONES',
'       ',
'        ',
'        ',
'  from CRM_CONTACTOS C ',
' WHERE (C.ID_CASO     = :P140_ID_CASO     OR :P140_ID_CASO     IS NULL)',
'   AND (C.ID_CONTACTO = :P140_ID_CONTACTO OR :P140_ID_CONTACTO IS NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(77924540426020485)
,p_ajax_items_to_submit=>'P140_ID_CASO,P140_ID_CONTACTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Detalle_contact'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38782133351764844)
,p_name=>'Derivaciones'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Derivaciones'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:144:P144_COD_EMPRESA,P144_COD_CONTACTO,P144_COD_CASO:&COD_EMPRESA.,&ID_CONTACTO.,&ID_CASO.'
,p_link_text=>'<img src="#APP_FILES#derivacion.png" width="20" height="20">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38782412136764847)
,p_name=>'CANT_DERIVACIONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANT_DERIVACIONES'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cant. Derivaciones'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60907305807885909)
,p_name=>'NUM_TELEFONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUM_TELEFONO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Nro. Tel\00E9fono')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77940329399020539)
,p_name=>'ID_CASO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CASO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(77927286702020490)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77941340615020539)
,p_name=>'ID_CONTACTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CONTACTO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cod. Contacto'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77942273548020540)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77943270348020540)
,p_name=>'COD_CANAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CANAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Canal'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>' select descripcion, cod_canal  from inv.crm_canal'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77944294064020541)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Usuario'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77945340193020541)
,p_name=>'FECHA_INICIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_INICIO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77946263015020541)
,p_name=>'FECHA_FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_FIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Finalizado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77947261220020542)
,p_name=>'COD_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.DESCRIPCION, T.COD_ESTADO ',
'from INV.CRM_ESTADOS t',
'WHERE COD_EMPRESA= :P_COD_EMPRESA;'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77948298114020542)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comentario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_link_target=>'javascript:$s(''P140_DETALLE'',''&OBSERVACION.'')'
,p_link_text=>'&OBSERVACION.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(77937992731020537)
,p_internal_uid=>77937992731020537
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU'
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(77938393201020538)
,p_interactive_grid_id=>wwv_flow_imp.id(77937992731020537)
,p_static_id=>'73978'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(77938616357020538)
,p_report_id=>wwv_flow_imp.id(77938393201020538)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39180507685686784)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(38782133351764844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39200492340939729)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(38782412136764847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60940161806188250)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(60907305807885909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77940700526020539)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(77940329399020539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77941675487020540)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(77941340615020539)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77942702242020540)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(77942273548020540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77943675269020540)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(77943270348020540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77944646612020541)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(77944294064020541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>202
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77945714707020541)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(77945340193020541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77946645534020541)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(77946263015020541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77947660574020542)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(77947261220020542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77948691042020542)
,p_view_id=>wwv_flow_imp.id(77938616357020538)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(77948298114020542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>509
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107492173384982337)
,p_plug_name=>'FILTRO'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19616771292532442)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66651280406004425)
,p_button_name=>'Volver'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(195731513564446443)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_button_name=>'FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23428682811756721)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_button_name=>'Limpiar_Pantalla'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Pantalla'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19623292926532447)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_button_name=>'Crear_cliente'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:CR,92::'
,p_icon_css_classes=>'fa fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19623621262532447)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_button_name=>'Nuevo_caso'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Nuevo Caso '
,p_icon_css_classes=>'fa fa-comments-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19639650703532457)
,p_branch_name=>'Go To Page 141'
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:CR,141:P141_CLIENTE,P141_CAMPANIA,P141_MOTIVO:&P140_CODIGO.,&P140_CAMPANIA.,&P140_MOTIVO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(19623621262532447)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P140_CODIGO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19617117865532442)
,p_name=>'P140_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66651280406004425)
,p_prompt=>unistr(' Observaci\00F3n   -    Comentario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19624062705532447)
,p_name=>'P140_CODIGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLIENTE,',
'       COD_CLIENTE,',
'       NCI,',
'       RUC,',
'       TELEFONO       ',
' from INV.VW_CLIENTES_CASOS',
'     ORDER BY 1 ASC'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19624858135532448)
,p_name=>'P140_CAMPANIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>unistr('Campa\00F1a')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion,cod_campania from crm_campania ',
'where activo=''S''',
'and cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(19625271625532448)
,p_name=>'P140_MOTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct m.descripcion, m.cod_motivo ',
'from crm_motivo m,',
'     crm_cam_can_mot d',
'where m.cod_empresa = :P_COD_EMPRESA',
'and m.cod_empresa = d.COD_EMPRESA',
'and m.activo=''S'' ',
'and m.cod_motivo=d.cod_motivo',
'and ( :P140_CAMPANIA is null  or d.cod_campania = :P140_CAMPANIA)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_lov_cascade_parent_items=>'P140_CAMPANIA'
,p_ajax_items_to_submit=>'P140_CAMPANIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19625685072532448)
,p_name=>'P140_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.DESCRIPCION, T.COD_ESTADO ',
'from INV.CRM_ESTADOS t',
'WHERE COD_EMPRESA= :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19626025123532449)
,p_name=>'P140_TIPO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ORDEN DE TRABAJO;ORT,PEDIDO;PED,NOTA DE CREDITO;NCR,FACTURA CREDITO;FCR,FACTURA CONTADO;FCO,SOLICITUD NO CONFORME;SNC'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19626443786532449)
,p_name=>'P140_NRO_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>unistr('N\00BA Comprobante Ref.')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
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
 p_id=>wwv_flow_imp.id(19626831210532449)
,p_name=>'P140_GARANTIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>unistr('N\00BA Garantia')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(21759669405052332)
,p_name=>'P140_ID_CONTACTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77924540426020485)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23429155199756726)
,p_name=>'P140_ID_FINALIZA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66651280406004425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118930947676854134)
,p_name=>'P140_ID_CASO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107492173384982337)
,p_prompt=>unistr('C\00F3digo Caso')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19627659847532451)
,p_name=>'TRAE_CLIENTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_CODIGO'
,p_condition_element=>'P140_CODIGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19628190444532452)
,p_event_id=>wwv_flow_imp.id(19627659847532451)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19623621262532447)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P140_CODIGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19629120155532452)
,p_event_id=>wwv_flow_imp.id(19627659847532451)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_CLIENTE,P140_ID_CASO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21760239994052338)
,p_event_id=>wwv_flow_imp.id(19627659847532451)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_ID_CASO,P140_ID_CONTACTO,P140_CAMPANIA,P140_MOTIVO,P140_ESTADO,P140_TIPO,P140_NRO_REF,P140_GARANTIA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19629648865532452)
,p_event_id=>wwv_flow_imp.id(19627659847532451)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19623621262532447)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P140_CODIGO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19634590522532454)
,p_name=>'Da_btn_volver'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19616771292532442)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19635083867532455)
,p_event_id=>wwv_flow_imp.id(19634590522532454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66651280406004425)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19635562588532455)
,p_event_id=>wwv_flow_imp.id(19634590522532454)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P140_DETALLE'').setValue('''')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19635916998532455)
,p_name=>'DA_OR_DET'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_DETALLE'
,p_condition_element=>'P140_DETALLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19636440232532455)
,p_event_id=>wwv_flow_imp.id(19635916998532455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66651280406004425)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19637735931532456)
,p_name=>'New'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_FILTRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19638256959532456)
,p_event_id=>wwv_flow_imp.id(19637735931532456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P140_FILTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60907530258885911)
,p_event_id=>wwv_flow_imp.id(19637735931532456)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_CODIGO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19638607883532456)
,p_name=>'verdetalle'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.verdet'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19639193810532457)
,p_event_id=>wwv_flow_imp.id(19638607883532456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_DETALLE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21759963269052335)
,p_name=>'Editar : Cerrar Recuadro Dialogo (Derivaciones)'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(77937560942020537)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21760048692052336)
,p_event_id=>wwv_flow_imp.id(21759963269052335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77937560942020537)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23525089980419461)
,p_name=>'DA_FINALIZA'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_ID_FINALIZA'
,p_condition_element=>'P140_ID_FINALIZA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195731818817446446)
,p_event_id=>wwv_flow_imp.id(23525089980419461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    DUMMY VARCHAR2(1);',
'BEGIN',
'    select distinct ''1''',
'    INTO DUMMY',
'    from CRM_DERIVACIONES_CONTACTO',
'    where id_caso||id_contacto=:P140_ID_FINALIZA',
'    and cod_empresa= :P_COD_EMPRESA',
'    and nvl(estado,'''')<>''3'' ',
'    ;',
'      raise_application_error(-20000, ''No se puede Finalizar el Contacto. Existen Derivaciones que aun no fuerron Cerradas.'' );',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'  WHEN OTHERS THEN',
'           raise_application_error(-20000, SQLERRM );',
'END;'))
,p_attribute_02=>'P140_ID_FINALIZA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23525446430419462)
,p_event_id=>wwv_flow_imp.id(23525089980419461)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Finalizar el Contacto?')
,p_attribute_02=>unistr('Confirmaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23525901459419462)
,p_event_id=>wwv_flow_imp.id(23525089980419461)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update inv.crm_contactos',
'    set cod_estado=''3'',',
'        FECHA_FIN =SYSDATE',
'    where id_caso||id_contacto=:P140_ID_FINALIZA',
'    and cod_empresa= :P_COD_EMPRESA;',
'',
'            declare',
'                vidcaso     number;',
'                vidcontac   number;   ',
'                vidmax      number;   ',
'            BEGIN    ',
'                    select id_caso,id_contacto',
'                    into vidcaso, vidcontac',
'                    from crm_contactos c',
'                    where id_caso||id_contacto=:P140_ID_FINALIZA',
'                    and cod_empresa= :P_COD_EMPRESA;',
'',
'                    select max(id_contacto)',
'                    into vidmax',
'                    from crm_contactos c',
'                    where id_caso = vidcaso',
'                    and cod_empresa= :P_COD_EMPRESA;',
'',
'                 IF vidcontac = vidmax THEN',
'                         UPDATE CRM_CASOS',
'                         SET COD_ESTADO= ''3''',
'                         WHERE COD_EMPRESA= :P_COD_EMPRESA',
'                         AND ID_CASO = vidcaso;',
'                 END IF;   ',
'',
'            exception',
'                when others then',
'                    raise_application_error(-20000, SQLERRM );',
'            end;',
'',
'END;'))
,p_attribute_02=>'P140_ID_FINALIZA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23526434969419463)
,p_event_id=>wwv_flow_imp.id(23525089980419461)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23429805186756733)
,p_name=>'da_clear'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23428682811756721)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23429916079756734)
,p_event_id=>wwv_flow_imp.id(23429805186756733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_ID_CASO,P140_ID_CONTACTO,P140_CAMPANIA,P140_MOTIVO,P140_ESTADO,P140_TIPO,P140_NRO_REF,P140_GARANTIA,P140_CODIGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23430001889756735)
,p_event_id=>wwv_flow_imp.id(23429805186756733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(195731657098446444)
,p_name=>'DA_REFRESH'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(195731513564446443)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19628698718532452)
,p_event_id=>wwv_flow_imp.id(195731657098446444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77924540426020485)
);
wwv_flow_imp.component_end;
end;
/
