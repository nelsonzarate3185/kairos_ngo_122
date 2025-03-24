prompt --application/pages/page_00588
begin
--   Manifest
--     PAGE: 00588
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
 p_id=>588
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VER ORDEN DE TRABAJO '
,p_alias=>'VER-ORDEN-DE-TRABAJO'
,p_page_mode=>'MODAL'
,p_step_title=>'ORDEN DE TRABAJO'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-label',
'{',
'    color: #003A85  !important;',
'    font-weight: bold;',
'}',
'',
'.apex-item-select, .apex-item-text, .apex-item-textarea {',
'    border-color: #001b3f92;',
' ',
'}',
'',
'.u-checkbox{',
'    font-weight: bold;',
'    }',
'',
'.t-Dialog, #det{',
'      background-color: #c1cddb;',
'  }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240729121228'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195925026896368413)
,p_plug_name=>'ORDEN DE TRABAJO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'VT_ORDENES_TRABAJO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195727739272446405)
,p_plug_name=>'Detalle'
,p_region_name=>'det'
,p_parent_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>2060
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(340401626998114148)
,p_name=>'SEGUIMIENTO'
,p_parent_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>2070
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select    /*''Fecha:''||to_char(C.FEC_MOVIMIENTO,''dd/mm/yyyy'')||'' Hora:''||C.HORA_LLAMADA ||'' Usuario:''||cod_usuario ||chr(10)||',
'         ''Motivo:  ''||C.cod_motivo||'' - ''||m.descripcion||chr(10)||C.OBSERVACION as observacion',
'           */',
'        ',
'      c.Nombre nombre, c.empresa, C.FEC_MOVIMIENTO FEC_LLAMADA, C.HORA_LLAMADA hora ,C.cod_motivo, m.descripcion desc_motivo,',
'       C.OBSERVACION comentario,cod_usuario ,c.calificacion        ',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = NVL(:P_COD_EMPRESA,''1'')',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = ''ORT''',
' and c.ser_comprobante = :P588_SER_COMPROBANTE',
' and c.nro_comprobante = :P588_NRO_COMPROBANTE',
' and (/*M.motivo_principal is not null OR */C.COD_MOTIVO=''59'')',
' ',
'  ORDER BY C.FEC_MOVIMIENTO desc, C.HORA_LLAMADA desc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P588_SER_COMPROBANTE,P588_NRO_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365786937461397809)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787021688397810)
,p_query_column_id=>2
,p_column_alias=>'EMPRESA'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787184263397811)
,p_query_column_id=>3
,p_column_alias=>'FEC_LLAMADA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787244972397812)
,p_query_column_id=>4
,p_column_alias=>'HORA'
,p_column_display_sequence=>40
,p_column_heading=>'Hora'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787303558397813)
,p_query_column_id=>5
,p_column_alias=>'COD_MOTIVO'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787457559397814)
,p_query_column_id=>6
,p_column_alias=>'DESC_MOTIVO'
,p_column_display_sequence=>70
,p_column_heading=>'Motivo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787534862397815)
,p_query_column_id=>7
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>80
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787643851397816)
,p_query_column_id=>8
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>60
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365787773998397817)
,p_query_column_id=>9
,p_column_alias=>'CALIFICACION'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196100339600368305)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(196100770341368305)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(196100339600368305)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(196102176840368303)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(196100339600368305)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P588_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(196102573043368303)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(196100339600368305)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P588_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(196102925790368303)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(196100339600368305)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P588_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195925302532368412)
,p_name=>'P588_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'NUMERO'
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195925785270368412)
,p_name=>'P588_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'SERIE'
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195926186606368411)
,p_name=>'P588_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195926500719368411)
,p_name=>'P588_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195926905864368411)
,p_name=>'P588_FEC_COMPROBANTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195927309374368410)
,p_name=>'P588_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'CLIENTE'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT COD_CLIENTE||'' - ''||NOMBRE D, ',
'	   COD_CLIENTE R',
'  FROM CC_CLIENTES, ',
'       PERSONAS ',
' WHERE CC_CLIENTES.COD_CLIENTE = :P588_COD_CLIENTE',
'   AND CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA',
'   AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA  '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195927732282368410)
,p_name=>'P588_NOM_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NOM_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195928130165368410)
,p_name=>'P588_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195928513411368410)
,p_name=>'P588_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195928928071368409)
,p_name=>'P588_RUC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'RUC'
,p_source=>'RUC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195929393039368409)
,p_name=>'P588_GARANTIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'GARANTIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195929753820368409)
,p_name=>'P588_COD_FAMILIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_FAMILIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195930119219368409)
,p_name=>'P588_COD_ARTICULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'ARTICULO'
,p_source=>'COD_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.cod_articulo ||'' - '' || r.descripcion||'' (''||cod_art_corto ||'')''  NOM, cod_articulo ',
'FROM st_articulos r',
'WHERE cod_empresa = :p_cod_empresa ',
'AND COD_ARTICULO = :P588_COD_ARTICULO',
'AND COD_RUBRO = ''PR''',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195930524983368409)
,p_name=>'P588_SERIE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'SERIE'
,p_source=>'SERIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195930999529368408)
,p_name=>'P588_TIP_COMPROBANTE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195931317985368408)
,p_name=>'P588_SER_COMPROBANTE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SER_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195931789484368408)
,p_name=>'P588_NRO_COMPROBANTE_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195932177054368408)
,p_name=>'P588_COD_DISTRIBUIDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'DISTRIBUIDOR'
,p_source=>'COD_DISTRIBUIDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT COD_CLIENTE||'' - ''||NOMBRE D, ',
'	   COD_CLIENTE R',
'  FROM CC_CLIENTES, ',
'       PERSONAS ',
' WHERE CC_CLIENTES.COD_CLIENTE = :P588_COD_DISTRIBUIDOR',
'   AND CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA',
'   AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA  '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195932531388368407)
,p_name=>'P588_COD_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'ORIGEN'
,p_source=>'COD_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ORIGEN||'' - ''|| DESCRIPCION NOM, COD_ORIGEN COD',
'FROM VT_ORIGENES',
'WHERE COD_EMPRESA= :P_COD_EMPRESA',
'AND   COD_ORIGEN= :P588_COD_ORIGEN'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195932975410368407)
,p_name=>'P588_CONDICION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'CONDICION'
,p_source=>'CONDICION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195933372151368407)
,p_name=>'P588_PROBLEMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'PROBLEMA'
,p_source=>'PROBLEMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195933751104368407)
,p_name=>'P588_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195934182381368407)
,p_name=>'P588_SENIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SENIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195934543475368406)
,p_name=>'P588_CERRADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'CERRADO'
,p_source=>'CERRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195934930258368406)
,p_name=>'P588_FEC_CIERRE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA CIERRE'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_CIERRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195935364974368406)
,p_name=>'P588_TOT_MOBRA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TOT_MOBRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195935755667368406)
,p_name=>'P588_TOT_REPUESTOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TOT_REPUESTOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195936180672368405)
,p_name=>'P588_TIP_COMPROBANTE_FAC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'Tipo factura'
,p_source=>'TIP_COMPROBANTE_FAC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195936560592368405)
,p_name=>'P588_SER_COMPROBANTE_FAC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'Serie factura'
,p_source=>'SER_COMPROBANTE_FAC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195936914916368405)
,p_name=>'P588_NRO_COMPROBANTE_FAC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'Nro factura'
,p_source=>'NRO_COMPROBANTE_FAC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195937357298368404)
,p_name=>'P588_SENIA_DEVUELTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SENIA_DEVUELTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195937726761368404)
,p_name=>'P588_FEC_DEVOLUCION_SENIA'
,p_source_data_type=>'DATE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_DEVOLUCION_SENIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195938107391368404)
,p_name=>'P588_COD_PROVEEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'TECNICO'
,p_source=>'COD_PROVEEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )NOM ,c.cod_proveedor COD',
'	          from cm_proveedores c, personas p',
'	          where c.cod_empresa   = :P_cod_empresa',
'	            and c.cod_proveedor = :P588_cod_proveedor',
'	            and c.cod_persona   = p.cod_persona',
'	        ;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195938540128368403)
,p_name=>'P588_TIP_COMPROBANTE_SER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_COMPROBANTE_SER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195938994001368403)
,p_name=>'P588_SER_COMPROBANTE_SER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SER_COMPROBANTE_SER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195939393156368403)
,p_name=>'P588_NRO_COMPROBANTE_SER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_COMPROBANTE_SER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195939718458368402)
,p_name=>'P588_IND_GARANTIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'GARANTIA'
,p_source=>'IND_GARANTIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195940148496368402)
,p_name=>'P588_IND_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'ENTREGADO'
,p_source=>'IND_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195940542018368402)
,p_name=>'P588_FEC_ENTREGA'
,p_source_data_type=>'DATE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FEC. ENTREGA'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195940974045368402)
,p_name=>'P588_ANULADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ANULADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195941306574368401)
,p_name=>'P588_FEC_ANULADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_ANULADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195941754727368401)
,p_name=>'P588_COD_MOTIVO_ANU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(195942110347368401)
,p_name=>'P588_GARANTIA_TMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'GARANTIA_TMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195942573954368401)
,p_name=>'P588_NRO_COMPROBANTE_DISTR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>unistr('N\00BA FACT. DIST.')
,p_source=>'NRO_COMPROBANTE_DISTR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195942928032368400)
,p_name=>'P588_ASIENTOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ASIENTOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195943315938368400)
,p_name=>'P588_PRESUPUESTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'PRESUPUESTO'
,p_source=>'PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195943709281368400)
,p_name=>'P588_FEC_COBRO_ADELANTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_COBRO_ADELANTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195944188815368400)
,p_name=>'P588_FEC_ESTADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA ESTADO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195944536775368399)
,p_name=>'P588_ESTADO_PRESU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'ESTADO'
,p_source=>'ESTADO_PRESU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION ||''  (''|| COD_ESTADO||'')'' NOM, COD_ESTADO',
'from CA_ESTADO_OT',
'where cod_empresa= :P_COD_EMPRESA',
'and   COD_ESTADO = :P588_ESTADO_PRESU'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195944984411368399)
,p_name=>'P588_MONTO_ADELANTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'Monto adelanto'
,p_source=>'MONTO_ADELANTO'
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
 p_id=>wwv_flow_imp.id(195945364413368399)
,p_name=>'P588_GARANTIA_OT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>unistr('N\00BA GARANTIA')
,p_source=>'GARANTIA_OT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195945758410368399)
,p_name=>'P588_TIPO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195946165837368398)
,p_name=>'P588_CONT_OT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CONT_OT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195946502029368398)
,p_name=>'P588_IND_RECLAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'RECLAMO'
,p_source=>'IND_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195946982223368398)
,p_name=>'P588_IND_INSTALACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_INSTALACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195947316660368398)
,p_name=>'P588_IND_COSTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_COSTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195947708342368397)
,p_name=>'P588_IND_ROTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_ROTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195948151904368397)
,p_name=>'P588_IND_FACTURADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FACTURADO'
,p_source=>'IND_FACTURADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195948526699368397)
,p_name=>'P588_TOT_REPUESTOS_CALL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TOT_REPUESTOS_CALL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195948912893368396)
,p_name=>'P588_COD_ARTICULO_CALL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_ARTICULO_CALL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195949339413368396)
,p_name=>'P588_SITIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SITIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195949718626368396)
,p_name=>'P588_NRO_LLAMADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195950119383368396)
,p_name=>'P588_CREADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'CREADO POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'CREADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195950555868368395)
,p_name=>'P588_FEC_CREACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA CREACION'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195950935888368395)
,p_name=>'P588_HORA_CREACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA CREACION'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195951396542368395)
,p_name=>'P588_PRESUPUESTADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'PRESUPUESTADO POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'PRESUPUESTADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195951767256368395)
,p_name=>'P588_FEC_PRESUPUESTADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA PRES.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_PRESUPUESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195952149790368394)
,p_name=>'P588_HORA_PRESUPUESTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA PRES.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195952567954368394)
,p_name=>'P588_VERIFICADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'REPARACION PARTICULA'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'VERIFICADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195952946241368394)
,p_name=>'P588_FEC_VERIFICADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA REPAR. PART.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_VERIFICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195953316545368394)
,p_name=>'P588_HORA_VERIFICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA REPAR. PART.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_VERIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195953712333368393)
,p_name=>'P588_APROBADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'APROBADO POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'APROBADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195954126694368393)
,p_name=>'P588_FEC_APROBACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA APROBACION'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_APROBACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195954544396368393)
,p_name=>'P588_HORA_APROBADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA APRUEBA'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_APROBADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195954954751368393)
,p_name=>'P588_RECHAZADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'RECHAZADO POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'RECHAZADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195955364594368393)
,p_name=>'P588_FEC_RECHAZO'
,p_source_data_type=>'DATE'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA RECHAZO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_RECHAZO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195955726526368392)
,p_name=>'P588_HORA_RECHAZADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA RECHAZO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_RECHAZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195956122874368392)
,p_name=>'P588_FINALIZADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'CERRADO POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FINALIZADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195956598173368392)
,p_name=>'P588_FEC_FINALIZADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA CIERRE'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_FINALIZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195956973438368392)
,p_name=>'P588_HORA_FINALIZADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA CIERRE'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_FINALIZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195957393545368391)
,p_name=>'P588_IND_IMPRESO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_IMPRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195957716577368391)
,p_name=>'P588_NRO_OT_PROVEEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_OT_PROVEEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195958182137368391)
,p_name=>'P588_FECHA_CO_DISTRIBUIDOR'
,p_source_data_type=>'DATE'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_CO_DISTRIBUIDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195958537309368391)
,p_name=>'P588_COMENTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'COMENTARIO'
,p_source=>'COMENTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195958984807368390)
,p_name=>'P588_PENDIENTE_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'ESPERA DE REPUESTO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'PENDIENTE_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195959330992368390)
,p_name=>'P588_FEC_PENDIENTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA ESPERA REP.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_PENDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195959703018368390)
,p_name=>'P588_HORA_PENDIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA ESPERA REP.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_PENDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195960185445368390)
,p_name=>'P588_FEC_MODIF_VERIFICADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_VERIFICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195960572710368389)
,p_name=>'P588_FEC_MODIF_PRESUPUESTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195960967744368389)
,p_name=>'P588_FEC_MODIF_PENDIENTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_PENDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195961373060368389)
,p_name=>'P588_FEC_MODIF_APROBADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_APROBADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195961700859368389)
,p_name=>'P588_FEC_MODIF_RECHAZADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_RECHAZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195962158794368389)
,p_name=>'P588_FEC_MODIF_CERRADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_CERRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195962503158368388)
,p_name=>'P588_ENTREGADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'ENTREGADO POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'ENTREGADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195962980754368388)
,p_name=>'P588_FEC_ENTREGADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA ENTREGA'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_ENTREGADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195963382151368388)
,p_name=>'P588_HORA_ENTREGADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA ENTREGA'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_ENTREGADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
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
 p_id=>wwv_flow_imp.id(195963755364368388)
,p_name=>'P588_NRO_ORDEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195964160763368387)
,p_name=>'P588_CI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'NCI'
,p_source=>'CI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195964564443368387)
,p_name=>'P588_NRO_OT_PLANTILLA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_OT_PLANTILLA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195964961395368387)
,p_name=>'P588_RECLAMO_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'RECLAMO_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195965357390368387)
,p_name=>'P588_CAMBIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CAMBIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195965740291368387)
,p_name=>'P588_NCR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195966109974368386)
,p_name=>'P588_AUTORIZADO_GAR_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'AUTORIZADO_GAR_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195966585113368386)
,p_name=>'P588_FEC_AUTORIZADO_GAR_POR'
,p_source_data_type=>'DATE'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_AUTORIZADO_GAR_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195966910172368386)
,p_name=>'P588_HORA_AUTORIZADO_GAR_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_AUTORIZADO_GAR_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195967339364368386)
,p_name=>'P588_FEC_MODIF_GAR'
,p_source_data_type=>'DATE'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_MODIF_GAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195967752146368385)
,p_name=>'P588_CONT_SER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CONT_SER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195968181314368385)
,p_name=>'P588_CO_USUARIO_UTIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CO_USUARIO_UTIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195968556195368385)
,p_name=>'P588_FECHA_HORA_REAGENDA'
,p_source_data_type=>'DATE'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_HORA_REAGENDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195968906588368385)
,p_name=>'P588_COD_MOTIVO_MOROSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_MOROSIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195969364428368384)
,p_name=>'P588_OBSERV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'OBSERVACION'
,p_source=>'OBSERV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195969731363368384)
,p_name=>'P588_FECHAOT'
,p_source_data_type=>'DATE'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHAOT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195970105144368384)
,p_name=>'P588_IND_RETIRADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'RETIRADO'
,p_source=>'IND_RETIRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195970554494368383)
,p_name=>'P588_FEC_RETIRADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA RETIRO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_RETIRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195970928544368383)
,p_name=>'P588_FEC_REPAR'
,p_source_data_type=>'DATE'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_REPAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195971393281368383)
,p_name=>'P588_COD_USUARIO_DEV_SEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_DEV_SEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195971787014368383)
,p_name=>'P588_FECHA_RETIRADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA RETIRO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_RETIRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195972135375368383)
,p_name=>'P588_RETIRADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'RETIRADO_ POR'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'RETIRADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195972501636368382)
,p_name=>'P588_HORA_RETIRADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA RETIRO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_RETIRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195972985920368382)
,p_name=>'P588_NO_RETIRADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NO_RETIRADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195973318388368382)
,p_name=>'P588_IND_TRANSPORTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_TRANSPORTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195973762082368381)
,p_name=>'P588_IND_RECLAMO_SEGURO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_RECLAMO_SEGURO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195974150630368381)
,p_name=>'P588_FEC_AUT_NCR'
,p_source_data_type=>'DATE'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_AUT_NCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195974581075368381)
,p_name=>'P588_FEC_REPARACION_STA'
,p_source_data_type=>'DATE'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_REPARACION_STA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195974908530368381)
,p_name=>'P588_FEC_RENDIDO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_RENDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195975349554368381)
,p_name=>'P588_IND_RENDIDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_RENDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195975794657368380)
,p_name=>'P588_IND_WEB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_WEB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195976163429368380)
,p_name=>'P588_COD_USUARIO_ANU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195976590016368380)
,p_name=>'P588_CELULAR_CONTACTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CELULAR_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195976916913368380)
,p_name=>'P588_CORREO_CONTACTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CORREO_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195977327622368379)
,p_name=>'P588_IND_DELIVERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_DELIVERY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195977760066368379)
,p_name=>'P588_IND_CORREO_PRESU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_CORREO_PRESU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195978133619368379)
,p_name=>'P588_IND_CARNEO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_CARNEO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195978587248368379)
,p_name=>'P588_IND_VERIFICADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_VERIFICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195978950703368378)
,p_name=>'P588_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195979340255368378)
,p_name=>'P588_COD_USUARIO_RENDICION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_RENDICION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195979714095368378)
,p_name=>'P588_IND_CORREO_PE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_CORREO_PE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195980159816368378)
,p_name=>'P588_COD_SUCURSAL_DIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_SUCURSAL_DIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195980546390368377)
,p_name=>'P588_COD_USUARIO_SIN_RP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_SIN_RP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195980965973368377)
,p_name=>'P588_FEC_SIN_REPUESTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'SIN_REPUESTO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_SIN_REPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195981315068368377)
,p_name=>'P588_HORA_SIN_REPUESTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA SIN REPUESTO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_SIN_REPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195981714335368377)
,p_name=>'P588_REPARADO_IM_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'REPARACION INMEDIATO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'REPARADO_IM_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195982111388368376)
,p_name=>'P588_FEC_IM'
,p_source_data_type=>'DATE'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA REPAR. INM'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_IM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195982593407368376)
,p_name=>'P588_HORA_IM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA REPAR. INM.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_IM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195982998153368376)
,p_name=>'P588_TIP_SERVICIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_SERVICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195983329603368376)
,p_name=>'P588_FEC_SERVICIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_SERVICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195983721918368376)
,p_name=>'P588_NRO_SERVICIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_SERVICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195984194097368375)
,p_name=>'P588_COD_UBICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_UBICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195984532483368375)
,p_name=>'P588_OT_ANTERIOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'OT_ANTERIOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195984996469368375)
,p_name=>'P588_ID_REGISTRO_RENDICION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ID_REGISTRO_RENDICION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195985314142368375)
,p_name=>'P588_NO_UBICADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NO_UBICADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195985743672368374)
,p_name=>'P588_IND_UBICADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_UBICADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195986120489368374)
,p_name=>'P588_COD_SUCURSAL_SAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_SUCURSAL_SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195986568473368374)
,p_name=>'P588_COD_SUCURSAL_PED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_SUCURSAL_PED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195986949270368374)
,p_name=>'P588_NRO_ENVIO_PENDIENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_ENVIO_PENDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195987335063368373)
,p_name=>'P588_IND_A_RETIRAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_A_RETIRAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195987757047368373)
,p_name=>'P588_TIP_SOL_CONF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_SOL_CONF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195988102028368373)
,p_name=>'P588_SER_SOL_CONF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SER_SOL_CONF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195988576065368373)
,p_name=>'P588_NRO_SOL_CONF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'SNC'
,p_source=>'NRO_SOL_CONF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195988976593368373)
,p_name=>'P588_IND_ENVIADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_ENVIADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195989343188368372)
,p_name=>'P588_TIP_NOTA_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_NOTA_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195989733523368372)
,p_name=>'P588_SER_NOTA_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SER_NOTA_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195990173673368372)
,p_name=>'P588_NRO_NOTA_ENVIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_NOTA_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(195990546715368372)
,p_name=>'P588_IND_INTERIOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_INTERIOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195990937210368372)
,p_name=>'P588_IND_VISITA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_VISITA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195991363681368371)
,p_name=>'P588_FEC_VISITA'
,p_source_data_type=>'DATE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_VISITA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195991752243368371)
,p_name=>'P588_PATH_INFORME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'PATH_INFORME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195992122955368371)
,p_name=>'P588_TIPO_CIERRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'Tipo Cierre'
,p_source=>'TIPO_CIERRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CERRADAS REPARADAS;CR,CERRADAS SIN SOLUCION;CSS,CERRADAS PRES. RECHAZADAS;CPR,CERRADAS SIN REPUESTOS;CSR,NN'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195992593122368370)
,p_name=>'P588_FEC_SOL_ENVIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_SOL_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195992961441368370)
,p_name=>'P588_IND_ADELANTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_ADELANTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195993369364368370)
,p_name=>'P588_HORA_PED_REP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'HORA PED. REP.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'HORA_PED_REP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195993700750368369)
,p_name=>'P588_USUARIO_PED_REP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'PEDIDO REPUESTO'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'USUARIO_PED_REP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195994134074368369)
,p_name=>'P588_FECHA_PED_REP'
,p_source_data_type=>'DATE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'FECHA PED. REP.'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_PED_REP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195994541519368369)
,p_name=>'P588_DELIVERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'DELIVERY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195994931809368369)
,p_name=>'P588_UBICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'UBICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195995363993368368)
,p_name=>'P588_ESTADO_ANT_PRES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ESTADO_ANT_PRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195995777953368368)
,p_name=>'P588_TOT_MOBRA_COM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TOT_MOBRA_COM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195996193624368368)
,p_name=>'P588_IND_LIQUIDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'IND_LIQUIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195996531423368368)
,p_name=>'P588_FECHA_LIQUIDA'
,p_source_data_type=>'DATE'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_LIQUIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195996983940368367)
,p_name=>'P588_USUARIO_LIQUIDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'USUARIO_LIQUIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195997310079368367)
,p_name=>'P588_DERIVADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'DERIVADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195997725457368367)
,p_name=>'P588_AUTORIZADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'AUTORIZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195998138908368367)
,p_name=>'P588_USR_SA_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'USR_SA_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195998535923368367)
,p_name=>'P588_FCH_SA_FMA'
,p_source_data_type=>'DATE'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FCH_SA_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195998938909368366)
,p_name=>'P588_SA_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SA_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195999351192368366)
,p_name=>'P588_USR_PR_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'USR_PR_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195999734512368366)
,p_name=>'P588_FCH_PR_FMA'
,p_source_data_type=>'DATE'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FCH_PR_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196000164062368365)
,p_name=>'P588_PR_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'PR_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196000533907368364)
,p_name=>'P588_AUTORIZADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'AUTORIZADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196000943310368364)
,p_name=>'P588_FEC_AUTORIZACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196001391639368363)
,p_name=>'P588_RECHAZAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'RECHAZAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196001760281368363)
,p_name=>'P588_FEC_RECHAZADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_RECHAZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196002145904368363)
,p_name=>'P588_ORDEN_AUTORIZADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_imp.id(195727739272446405)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ORDEN_AUTORIZADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196002526216368362)
,p_name=>'P588_IND_ZONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_ZONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196002963892368362)
,p_name=>'P588_IND_ABANDONADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_ABANDONADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196003313557368362)
,p_name=>'P588_IND_SNC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'SNC'
,p_source=>'IND_SNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196003795230368361)
,p_name=>'P588_INTERIOR_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'INTERIOR_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196004162321368361)
,p_name=>'P588_NRO_TICKET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_TICKET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196004525419368361)
,p_name=>'P588_FECHA_TICKET'
,p_source_data_type=>'DATE'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_TICKET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196004975423368361)
,p_name=>'P588_COD_DEPARTAMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_DEPARTAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196005347078368360)
,p_name=>'P588_COD_CIUDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_CIUDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196005768587368360)
,p_name=>'P588_ID_TRANSACCION_APP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ID_TRANSACCION_APP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196006138846368360)
,p_name=>'P588_TIPO_RECLAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIPO_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196006511836368359)
,p_name=>'P588_COD_MOTIVO_RECHAZO_PRESU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_RECHAZO_PRESU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196006991748368359)
,p_name=>'P588_COD_MOTIVO_RECLAMO_STA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_RECLAMO_STA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196007312747368359)
,p_name=>'P588_COD_MOTIVO_RECLAMO_SPP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_RECLAMO_SPP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196007733731368358)
,p_name=>'P588_IND_RECLAMO_STA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_RECLAMO_STA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196008154500368358)
,p_name=>'P588_SER_OT_ANTERIOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SER_OT_ANTERIOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196008513140368358)
,p_name=>'P588_IND_INGRESO_ANTERIOR_STA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_INGRESO_ANTERIOR_STA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196008999876368357)
,p_name=>'P588_KM_FLETE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'KM_FLETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196009389820368357)
,p_name=>'P588_CANTIDAD_GAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CANTIDAD_GAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196009761728368357)
,p_name=>'P588_TIPO_GAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIPO_GAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196010149286368357)
,p_name=>'P588_IND_ADICIONAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_ADICIONAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196010536296368356)
,p_name=>'P588_DATOS_DE_SP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'DATOS_DE_SP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196010983630368356)
,p_name=>'P588_REPARADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'REPARADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196011337929368356)
,p_name=>'P588_IND_IMPRESO_ORDEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_IMPRESO_ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196011738504368355)
,p_name=>'P588_TIP_DOCUMENTO_GEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'TIP_DOCUMENTO_GEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196012146695368355)
,p_name=>'P588_SER_DOCUMENTO_GEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'SER_DOCUMENTO_GEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196012572508368355)
,p_name=>'P588_NRO_DOCUMENTO_GEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_DOCUMENTO_GEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196012983890368355)
,p_name=>'P588_COD_MOTIVO_RECLAMO_JEFE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_RECLAMO_JEFE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196013389698368354)
,p_name=>'P588_COD_PROBLEMA_RECLAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_PROBLEMA_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196013755842368354)
,p_name=>'P588_ESTADO_RECLAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'ESTADO_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196014162913368354)
,p_name=>'P588_COMENTARIO_RECLAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COMENTARIO_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196014539205368353)
,p_name=>'P588_FECHA_FINALIZACION_RECLAM'
,p_source_data_type=>'DATE'
,p_item_sequence=>1820
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_FINALIZACION_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196014906232368353)
,p_name=>'P588_COD_SOLUCION_RECLAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_SOLUCION_RECLAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196015354421368353)
,p_name=>'P588_IND_CANAL_VERDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_CANAL_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196015762438368352)
,p_name=>'P588_OBSERVACION_CANAL_VERDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'OBSERVACION_CANAL_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196016115323368352)
,p_name=>'P588_RESULTADO_CANAL_VERDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'RESULTADO_CANAL_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196016547115368352)
,p_name=>'P588_COD_CONDICION_VENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_CONDICION_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196016956587368351)
,p_name=>'P588_IND_TEST_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'IND_TEST_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196017325097368351)
,p_name=>'P588_NRO_SOLICITUD_ASISTENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'NRO_SOLICITUD_ASISTENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196017719189368351)
,p_name=>'P588_COD_MOTIVO_COMPRA_NUEVA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1900
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_MOTIVO_COMPRA_NUEVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196018187739368351)
,p_name=>'P588_CONTADOR_FACT_ART_DIST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'CONTADOR_FACT_ART_DIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196018552378368350)
,p_name=>'P588_FECHA_ESTADO_COMPLICADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>1920
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_ESTADO_COMPLICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196018925974368350)
,p_name=>'P588_COD_USUARIO_ESTADO_COMPLI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1930
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_ESTADO_COMPLICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(196019313765368350)
,p_name=>'P588_COD_LISTA_PRECIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1940
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_LISTA_PRECIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196019745919368349)
,p_name=>'P588_COD_STA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1950
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_STA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196020178323368349)
,p_name=>'P588_FECHA_MODIFICADO_GARANTIA'
,p_source_data_type=>'DATE'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_MODIFICADO_GARANTIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196020549784368349)
,p_name=>'P588_COD_USUARIO_MOD_GAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_MOD_GAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196020977056368348)
,p_name=>'P588_FECHA_TILDE_SNC'
,p_source_data_type=>'DATE'
,p_item_sequence=>1980
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_TILDE_SNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196021370012368348)
,p_name=>'P588_COD_USUARIO_LIQUIDACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_LIQUIDACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196021732007368348)
,p_name=>'P588_FECHA_LIQUIDACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_LIQUIDACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196022136078368347)
,p_name=>'P588_FECHA_ABANDONADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>2010
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FECHA_ABANDONADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196022582598368347)
,p_name=>'P588_COD_USUARIO_ABANDONADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2020
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'COD_USUARIO_ABANDONADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196024532871368345)
,p_name=>'P588_USR_IND_SNC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2030
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'USR_IND_SNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196024909286368345)
,p_name=>'P588_FEC_IND_SNC'
,p_source_data_type=>'DATE'
,p_item_sequence=>2040
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_item_source_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_source=>'FEC_IND_SNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(336975821850160027)
,p_name=>'P588_INFORME'
,p_item_sequence=>2050
,p_item_plug_id=>wwv_flow_imp.id(195925026896368413)
,p_prompt=>'Informe del tecnico'
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
 p_id=>wwv_flow_imp.id(196100856897368305)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(196100770341368305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(196101629477368304)
,p_event_id=>wwv_flow_imp.id(196100856897368305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(196103736798368303)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(195925026896368413)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form VER ORDEN DE TRABAJO'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(196104161404368302)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(196103373750368303)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(195925026896368413)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form VER ORDEN DE TRABAJO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(326778988185253601)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF:P588_NRO_COMPROBANTE IS NOT NULL THEN',
'    SELECT TIP_COMPROBANTE,	',
'        --   SER_COMPROBANTE,	',
'           FEC_COMPROBANTE,	',
'           COD_CLIENTE,	',
'           NOM_CLIENTE,	',
'           DIRECCION,	',
'           TELEFONO,	',
'           RUC,	',
'           GARANTIA,	',
'           COD_FAMILIA,	',
'           COD_ARTICULO,	',
'           SERIE,	',
'           TIP_COMPROBANTE_REF,	',
'           SER_COMPROBANTE_REF,	',
'           NRO_COMPROBANTE_REF,',
'           COD_DISTRIBUIDOR,	',
'           COD_ORIGEN,	',
'           CONDICION,	',
'           PROBLEMA,',
'           COD_USUARIO,	',
'           SENIA,	',
'           CERRADO,	',
'           FEC_CIERRE,	',
'           TOT_MOBRA,	',
'           TOT_REPUESTOS,	',
'           TIP_COMPROBANTE_FAC,	',
'           SER_COMPROBANTE_FAC,	',
'           NRO_COMPROBANTE_FAC,	',
'           SENIA_DEVUELTA,	',
'           FEC_DEVOLUCION_SENIA,	',
'           COD_PROVEEDOR,	',
'           TIP_COMPROBANTE_SER,	',
'           SER_COMPROBANTE_SER,	',
'           NRO_COMPROBANTE_SER,',
'           IND_GARANTIA,	',
'           IND_ENTREGA,	',
'           FEC_ENTREGA,	',
'           ANULADO,	',
'           FEC_ANULADO,	',
'           COD_MOTIVO_ANU,	',
'           GARANTIA_TMP,	',
'           NRO_COMPROBANTE_DISTR,	',
'           ASIENTOS,	',
'           PRESUPUESTO,	',
'           FEC_COBRO_ADELANTO,	',
'           FEC_ESTADO,	',
'           ESTADO_PRESU,	',
'           MONTO_ADELANTO,	',
'           GARANTIA_OT,	',
'           TIPO,	',
'           CONT_OT,	',
'           IND_RECLAMO,	',
'           IND_INSTALACION,	',
'           IND_COSTO,	',
'           IND_ROTA,	',
'           IND_FACTURADO,	',
'           TOT_REPUESTOS_CALL,	',
'           COD_ARTICULO_CALL,	',
'           SITIO,	',
'           NRO_LLAMADA,	',
'           CREADO_POR,',
'           FEC_CREACION,	',
'           HORA_CREACION,	',
'           PRESUPUESTADO_POR,	',
'           FEC_PRESUPUESTADO,	',
'           HORA_PRESUPUESTO,',
'           VERIFICADO_POR,	',
'           FEC_VERIFICADO,	',
'           HORA_VERIFICACION,	',
'           APROBADO_POR,	',
'           FEC_APROBACION,	',
'           HORA_APROBADA,	',
'           RECHAZADO_POR,	',
'           FEC_RECHAZO,	',
'           HORA_RECHAZADO,	',
'           FINALIZADO_POR,	',
'           FEC_FINALIZADO,	',
'           HORA_FINALIZADO,	',
'           IND_IMPRESO,	',
'           NRO_OT_PROVEEDOR,	',
'           FECHA_CO_DISTRIBUIDOR,	',
'           COMENTARIO,	',
'           PENDIENTE_POR,	',
'           FEC_PENDIENTE,	',
'           HORA_PENDIENTE,	',
'           FEC_MODIF_VERIFICADO,	',
'           FEC_MODIF_PRESUPUESTO,	',
'           FEC_MODIF_PENDIENTE,	',
'           FEC_MODIF_APROBADO,	',
'           FEC_MODIF_RECHAZADO,	',
'           FEC_MODIF_CERRADO,',
'           ENTREGADO_POR,	',
'           FEC_ENTREGADO,	',
'           HORA_ENTREGADO,	',
'           NRO_ORDEN,	',
'           CI,	',
'           NRO_OT_PLANTILLA	,',
'           RECLAMO_ENTREGA,	',
'           CAMBIO,	',
'           NCR,',
'           AUTORIZADO_GAR_POR,	',
'           FEC_AUTORIZADO_GAR_POR,	',
'           HORA_AUTORIZADO_GAR_POR,	',
'           FEC_MODIF_GAR,	',
'           CONT_SER,	',
'           CO_USUARIO_UTIL,	',
'           FECHA_HORA_REAGENDA,	',
'           COD_MOTIVO_MOROSIDAD,',
'           OBSERV,	',
'           FECHAOT,	',
'           IND_RETIRADO,	',
'           FEC_RETIRADO,	',
'           FEC_REPAR,	',
'           COD_USUARIO_DEV_SEN,	',
'           FECHA_RETIRADO,	',
'           RETIRADO_POR,	',
'           HORA_RETIRADO,	',
'           NO_RETIRADA,	',
'           IND_TRANSPORTE,	',
'           IND_RECLAMO_SEGURO,	',
'           FEC_AUT_NCR,	',
'           FEC_REPARACION_STA,	',
'           FEC_RENDIDO,',
'           IND_RENDIDO,	',
'           IND_WEB,	',
'           COD_USUARIO_ANU,	',
'           CELULAR_CONTACTO,	',
'           CORREO_CONTACTO,	',
'           IND_DELIVERY,	',
'           IND_CORREO_PRESU,	',
'           IND_CARNEO,	',
'           IND_VERIFICADO,	',
'           COD_SUCURSAL,	',
'           COD_USUARIO_RENDICION,	',
'           IND_CORREO_PE,	',
'           COD_SUCURSAL_DIST,	',
'           COD_USUARIO_SIN_RP,	',
'           FEC_SIN_REPUESTO,	',
'           HORA_SIN_REPUESTO,	',
'           REPARADO_IM_POR,	',
'           FEC_IM,	',
'           HORA_IM,	',
'           TIP_SERVICIO,	',
'           FEC_SERVICIO,',
'           NRO_SERVICIO,	',
'           COD_UBICACION,	',
'           OT_ANTERIOR,	',
'           ID_REGISTRO_RENDICION,	',
'           NO_UBICADA,	',
'           IND_UBICADA,	',
'           COD_SUCURSAL_SAL,	',
'           COD_SUCURSAL_PED,	',
'           NRO_ENVIO_PENDIENTE,	',
'           IND_A_RETIRAR,	',
'           TIP_SOL_CONF,	',
'           SER_SOL_CONF,	',
'           NRO_SOL_CONF,',
'           IND_ENVIADO,	',
'           TIP_NOTA_ENVIO,	',
'           SER_NOTA_ENVIO,	',
'           NRO_NOTA_ENVIO,	',
'           IND_INTERIOR,',
'           IND_VISITA,	',
'           FEC_VISITA,	',
'           PATH_INFORME,	',
'           TIPO_CIERRE,	',
'           FEC_SOL_ENVIO,	',
'           IND_ADELANTO,	',
'           HORA_PED_REP,	',
'           USUARIO_PED_REP,	',
'           FECHA_PED_REP,	',
'           DELIVERY,	',
'           UBICACION,	',
'           ESTADO_ANT_PRES,	',
'           TOT_MOBRA_COM,	',
'           IND_LIQUIDA,	',
'           FECHA_LIQUIDA,	',
'           USUARIO_LIQUIDA,	',
'           DERIVADO,	',
'           AUTORIZADO,	',
'           USR_SA_FMA,	',
'           FCH_SA_FMA,	',
'           SA_FMA,	',
'           USR_PR_FMA,	',
'           FCH_PR_FMA,	',
'           PR_FMA,	',
'           AUTORIZADO_POR,	',
'           FEC_AUTORIZACION,	',
'           RECHAZAR,	',
'           FEC_RECHAZADO,	',
'           ORDEN_AUTORIZADA,	',
'           IND_ZONA,	',
'           IND_ABANDONADO,	',
'           IND_SNC,',
'           INTERIOR_ESTADO,	',
'           NRO_TICKET,	',
'           FECHA_TICKET,	',
'           COD_DEPARTAMENTO	,',
'           COD_CIUDAD,	',
'           ID_TRANSACCION_APP,	',
'           TIPO_RECLAMO	,',
'           COD_MOTIVO_RECHAZO_PRESU	,',
'           COD_MOTIVO_RECLAMO_STA,	',
'           COD_MOTIVO_RECLAMO_SPP,	',
'           IND_RECLAMO_STA,	',
'           SER_OT_ANTERIOR,	',
'           IND_INGRESO_ANTERIOR_STA	,',
'           KM_FLETE,	',
'           CANTIDAD_GAS,	',
'           TIPO_GAS,	',
'           IND_ADICIONAL,	',
'           DATOS_DE_SP,	',
'           REPARADO_POR,	',
'           IND_IMPRESO_ORDEN,	',
'           TIP_DOCUMENTO_GEN,	',
'           SER_DOCUMENTO_GEN,	',
'           NRO_DOCUMENTO_GEN,	',
'           COD_MOTIVO_RECLAMO_JEFE,	',
'           COD_PROBLEMA_RECLAMO,	',
'           ESTADO_RECLAMO,	',
'           COMENTARIO_RECLAMO,	',
'           FECHA_FINALIZACION_RECLAMO,	',
'           COD_SOLUCION_RECLAMO	,',
'           IND_CANAL_VERDE	,',
'           OBSERVACION_CANAL_VERDE	,',
'           RESULTADO_CANAL_VERDE,	',
'           COD_CONDICION_VENTA,',
'           IND_TEST_CLIENTE,	',
'           NRO_SOLICITUD_ASISTENCIA,	',
'           COD_MOTIVO_COMPRA_NUEVA,	',
'           CONTADOR_FACT_ART_DIST,	',
'           FECHA_ESTADO_COMPLICADO,	',
'           COD_USUARIO_ESTADO_COMPLICADO,	',
'           COD_LISTA_PRECIO,	',
'           COD_STA,	',
'           FECHA_MODIFICADO_GARANTIA,	',
'           COD_USUARIO_MOD_GAR,	',
'           FECHA_TILDE_SNC,	',
'           COD_USUARIO_LIQUIDACION,	',
'           FECHA_LIQUIDACION,	',
'           FECHA_ABANDONADO,	',
'           COD_USUARIO_ABANDONADO,	',
'           USR_IND_SNC,',
'           FEC_IND_SNC,',
'		    (',
'	SELECT',
'		observacion',
'	FROM',
'		(',
'		SELECT',
'			c.observacion,',
'			ROW_NUMBER() OVER (PARTITION BY c.ser_comprobante,',
'			c.nro_comprobante',
'		ORDER BY',
'			c.fec_movimiento DESC) AS rn',
'		FROM',
'			ca_llamadas_salientes c',
'		WHERE',
'			c.ser_comprobante = a.ser_comprobante',
'			AND c.nro_comprobante = a.nro_comprobante',
'			AND c.cod_motivo IN (''59'', ''74'')',
'			AND c.cod_empresa = a.cod_empresa',
'          ) sub',
'	WHERE',
'		sub.rn = 1) AS informe	',
'',
'    INTO :P588_TIP_COMPROBANTE,',
'     --    :P588_SER_COMPROBANTE,',
'         :P588_FEC_COMPROBANTE,',
'         :P588_COD_CLIENTE,',
'         :P588_NOM_CLIENTE,',
'         :P588_DIRECCION,',
'         :P588_TELEFONO,',
'         :P588_RUC,',
'         :P588_GARANTIA,',
'         :P588_COD_FAMILIA,',
'         :P588_COD_ARTICULO,',
'         :P588_SERIE,',
'         :P588_TIP_COMPROBANTE_REF,',
'         :P588_SER_COMPROBANTE_REF,',
'         :P588_NRO_COMPROBANTE_REF,',
'         :P588_COD_DISTRIBUIDOR,',
'         :P588_COD_ORIGEN,',
'         :P588_CONDICION,',
'         :P588_PROBLEMA,',
'         :P588_COD_USUARIO,',
'         :P588_SENIA,',
'         :P588_CERRADO,',
'         :P588_FEC_CIERRE,',
'         :P588_TOT_MOBRA,',
'         :P588_TOT_REPUESTOS,',
'         :P588_TIP_COMPROBANTE_FAC,',
'         :P588_SER_COMPROBANTE_FAC,',
'         :P588_NRO_COMPROBANTE_FAC,',
'         :P588_SENIA_DEVUELTA,',
'         :P588_FEC_DEVOLUCION_SENIA,',
'         :P588_COD_PROVEEDOR,',
'         :P588_TIP_COMPROBANTE_SER,',
'         :P588_SER_COMPROBANTE_SER,',
'         :P588_NRO_COMPROBANTE_SER,',
'         :P588_IND_GARANTIA,',
'         :P588_IND_ENTREGA,',
'         :P588_FEC_ENTREGA,',
'         :P588_ANULADO,',
'         :P588_FEC_ANULADO,',
'         :P588_COD_MOTIVO_ANU,',
'         :P588_GARANTIA_TMP,',
'         :P588_NRO_COMPROBANTE_DISTR,',
'         :P588_ASIENTOS,',
'         :P588_PRESUPUESTO,',
'         :P588_FEC_COBRO_ADELANTO,',
'         :P588_FEC_ESTADO,',
'         :P588_ESTADO_PRESU,',
'         :P588_MONTO_ADELANTO,',
'         :P588_GARANTIA_OT,',
'         :P588_TIPO,',
'         :P588_CONT_OT,',
'         :P588_IND_RECLAMO,',
'         :P588_IND_INSTALACION,',
'         :P588_IND_COSTO,',
'         :P588_IND_ROTA,',
'         :P588_IND_FACTURADO,',
'         :P588_TOT_REPUESTOS_CALL,',
'         :P588_COD_ARTICULO_CALL,',
'         :P588_SITIO,',
'         :P588_NRO_LLAMADA,',
'         :P588_CREADO_POR,',
'         :P588_FEC_CREACION,',
'         :P588_HORA_CREACION,',
'         :P588_PRESUPUESTADO_POR,',
'         :P588_FEC_PRESUPUESTADO,',
'         :P588_HORA_PRESUPUESTO,',
'         :P588_VERIFICADO_POR,',
'         :P588_FEC_VERIFICADO,',
'         :P588_HORA_VERIFICACION,',
'         :P588_APROBADO_POR,',
'         :P588_FEC_APROBACION,',
'         :P588_HORA_APROBADA,',
'         :P588_RECHAZADO_POR,',
'         :P588_FEC_RECHAZO,',
'         :P588_HORA_RECHAZADO,',
'         :P588_FINALIZADO_POR,',
'         :P588_FEC_FINALIZADO,',
'         :P588_HORA_FINALIZADO,',
'         :P588_IND_IMPRESO,',
'         :P588_NRO_OT_PROVEEDOR,',
'         :P588_FECHA_CO_DISTRIBUIDOR,',
'         :P588_COMENTARIO,',
'         :P588_PENDIENTE_POR,',
'         :P588_FEC_PENDIENTE,',
'         :P588_HORA_PENDIENTE,',
'         :P588_FEC_MODIF_VERIFICADO,',
'         :P588_FEC_MODIF_PRESUPUESTO,',
'         :P588_FEC_MODIF_PENDIENTE,',
'         :P588_FEC_MODIF_APROBADO,',
'         :P588_FEC_MODIF_RECHAZADO,',
'         :P588_FEC_MODIF_CERRADO,',
'         :P588_ENTREGADO_POR,',
'         :P588_FEC_ENTREGADO,',
'         :P588_HORA_ENTREGADO,',
'         :P588_NRO_ORDEN,',
'         :P588_CI,',
'         :P588_NRO_OT_PLANTILLA,',
'         :P588_RECLAMO_ENTREGA,',
'         :P588_CAMBIO,',
'         :P588_NCR,',
'         :P588_AUTORIZADO_GAR_POR,',
'         :P588_FEC_AUTORIZADO_GAR_POR,',
'         :P588_HORA_AUTORIZADO_GAR_POR,',
'         :P588_FEC_MODIF_GAR,',
'         :P588_CONT_SER,',
'         :P588_CO_USUARIO_UTIL,',
'         :P588_FECHA_HORA_REAGENDA,',
'         :P588_COD_MOTIVO_MOROSIDAD,',
'         :P588_OBSERV, ',
'         :P588_FECHAOT,',
'         :P588_IND_RETIRADO,',
'         :P588_FEC_RETIRADO,',
'         :P588_FEC_REPAR,',
'         :P588_COD_USUARIO_DEV_SEN,',
'         :P588_FECHA_RETIRADO,',
'         :P588_RETIRADO_POR,',
'         :P588_HORA_RETIRADO,',
'         :P588_NO_RETIRADA,',
'         :P588_IND_TRANSPORTE,',
'         :P588_IND_RECLAMO_SEGURO,',
'         :P588_FEC_AUT_NCR,',
'         :P588_FEC_REPARACION_STA,',
'         :P588_FEC_RENDIDO,',
'         :P588_IND_RENDIDO,',
'         :P588_IND_WEB,',
'         :P588_COD_USUARIO_ANU,',
'         :P588_CELULAR_CONTACTO,',
'         :P588_CORREO_CONTACTO,',
'         :P588_IND_DELIVERY,',
'         :P588_IND_CORREO_PRESU,',
'         :P588_IND_CARNEO,',
'         :P588_IND_VERIFICADO,',
'         :P588_COD_SUCURSAL,',
'         :P588_COD_USUARIO_RENDICION,',
'         :P588_IND_CORREO_PE,',
'         :P588_COD_SUCURSAL_DIST,',
'         :P588_COD_USUARIO_SIN_RP,',
'         :P588_FEC_SIN_REPUESTO,',
'         :P588_HORA_SIN_REPUESTO,',
'         :P588_REPARADO_IM_POR,',
'         :P588_FEC_IM,',
'         :P588_HORA_IM,',
'         :P588_TIP_SERVICIO,',
'         :P588_FEC_SERVICIO,',
'         :P588_NRO_SERVICIO,',
'         :P588_COD_UBICACION,',
'         :P588_OT_ANTERIOR,',
'         :P588_ID_REGISTRO_RENDICION,',
'         :P588_NO_UBICADA,',
'         :P588_IND_UBICADA,',
'         :P588_COD_SUCURSAL_SAL,',
'         :P588_COD_SUCURSAL_PED,',
'         :P588_NRO_ENVIO_PENDIENTE,',
'         :P588_IND_A_RETIRAR,',
'         :P588_TIP_SOL_CONF,',
'         :P588_SER_SOL_CONF,',
'         :P588_NRO_SOL_CONF,',
'         :P588_IND_ENVIADO,',
'         :P588_TIP_NOTA_ENVIO,',
'         :P588_SER_NOTA_ENVIO,',
'         :P588_NRO_NOTA_ENVIO,',
'         :P588_IND_INTERIOR,',
'         :P588_IND_VISITA,',
'         :P588_FEC_VISITA,',
'         :P588_PATH_INFORME,',
'         :P588_TIPO_CIERRE,',
'         :P588_FEC_SOL_ENVIO,',
'         :P588_IND_ADELANTO,',
'         :P588_HORA_PED_REP,',
'         :P588_USUARIO_PED_REP,',
'         :P588_FECHA_PED_REP,',
'         :P588_DELIVERY,',
'         :P588_UBICACION,',
'         :P588_ESTADO_ANT_PRES,',
'         :P588_TOT_MOBRA_COM,',
'         :P588_IND_LIQUIDA,',
'         :P588_FECHA_LIQUIDA,',
'         :P588_USUARIO_LIQUIDA,',
'         :P588_DERIVADO,',
'         :P588_AUTORIZADO,',
'         :P588_USR_SA_FMA,',
'         :P588_FCH_SA_FMA,',
'         :P588_SA_FMA,',
'         :P588_USR_PR_FMA,',
'         :P588_FCH_PR_FMA,',
'         :P588_PR_FMA,',
'         :P588_AUTORIZADO_POR,',
'         :P588_FEC_AUTORIZACION, ',
'         :P588_RECHAZAR,',
'         :P588_FEC_RECHAZADO,',
'         :P588_ORDEN_AUTORIZADA,',
'         :P588_IND_ZONA,',
'         :P588_IND_ABANDONADO,',
'         :P588_IND_SNC,',
'         :P588_INTERIOR_ESTADO,',
'         :P588_NRO_TICKET,',
'         :P588_FECHA_TICKET,',
'         :P588_COD_DEPARTAMENTO,',
'         :P588_COD_CIUDAD,',
'         :P588_ID_TRANSACCION_APP,',
'         :P588_TIPO_RECLAMO,',
'         :P588_COD_MOTIVO_RECHAZO_PRESU,',
'         :P588_COD_MOTIVO_RECLAMO_STA,',
'         :P588_COD_MOTIVO_RECLAMO_SPP,',
'         :P588_IND_RECLAMO_STA,',
'         :P588_SER_OT_ANTERIOR,',
'         :P588_IND_INGRESO_ANTERIOR_STA,',
'         :P588_KM_FLETE,',
'         :P588_CANTIDAD_GAS,',
'         :P588_TIPO_GAS,',
'         :P588_IND_ADICIONAL,',
'         :P588_DATOS_DE_SP,',
'         :P588_REPARADO_POR,',
'         :P588_IND_IMPRESO_ORDEN,',
'         :P588_TIP_DOCUMENTO_GEN,',
'         :P588_SER_DOCUMENTO_GEN,',
'         :P588_NRO_DOCUMENTO_GEN,',
'         :P588_COD_MOTIVO_RECLAMO_JEFE,',
'         :P588_COD_PROBLEMA_RECLAMO,',
'         :P588_ESTADO_RECLAMO,',
'         :P588_COMENTARIO_RECLAMO,',
'         :P588_FECHA_FINALIZACION_RECLAM,',
'         :P588_COD_SOLUCION_RECLAMO,',
'         :P588_IND_CANAL_VERDE,',
'         :P588_OBSERVACION_CANAL_VERDE,',
'         :P588_RESULTADO_CANAL_VERDE,',
'         :P588_COD_CONDICION_VENTA,',
'         :P588_IND_TEST_CLIENTE,',
'         :P588_NRO_SOLICITUD_ASISTENCIA,',
'         :P588_COD_MOTIVO_COMPRA_NUEVA,',
'         :P588_CONTADOR_FACT_ART_DIST,',
'         :P588_FECHA_ESTADO_COMPLICADO,',
'         :P588_COD_USUARIO_ESTADO_COMPLI,',
'         :P588_COD_LISTA_PRECIO,',
'         :P588_COD_STA,',
'         :P588_FECHA_MODIFICADO_GARANTIA,',
'         :P588_COD_USUARIO_MOD_GAR,',
'         :P588_FECHA_TILDE_SNC,',
'         :P588_COD_USUARIO_LIQUIDACION,',
'         :P588_FECHA_LIQUIDACION,',
'         :P588_FECHA_ABANDONADO,',
'         :P588_COD_USUARIO_ABANDONADO,',
'         :P588_USR_IND_SNC,',
'         :P588_FEC_IND_SNC,',
'		 :P588_INFORME',
'',
'    FROM VT_ORDENES_TRABAJO a',
'    WHERE NRO_COMPROBANTE = :P588_NRO_COMPROBANTE',
'    AND SER_COMPROBANTE = :P588_SER_COMPROBANTE;',
'',
'',
'                apex_debug.error(''nro comprobante: ''||:P588_NRO_COMPROBANTE);',
'',
' END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
