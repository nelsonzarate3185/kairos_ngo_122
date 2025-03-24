prompt --application/pages/page_00447
begin
--   Manifest
--     PAGE: 00447
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
 p_id=>447
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('CPAUTOCS - Autorizaci\00F3n de Ordenes de Compra')
,p_alias=>unistr('CPAUTOCS-AUTORIZACI\00D3N-DE-ORDENES-DE-COMPRA')
,p_step_title=>unistr('CPAUTOCS - Autorizaci\00F3n de Ordenes de Compra')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  .t-Report-colHead,  .t-Report-colHead .u-Report-sort .u-Report-sortHeading a {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230322080444'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(132046387279968528)
,p_name=>'Ordenes de Compras'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS COD_EMPRESA,',
'             c002   AS NRO_PEDIDO,',
'             c003   AS FECHA,',
'             c004   AS COD_SUCURSAL_EMP,',
'             c005   AS DESC_SUCURSAL,',
'             c006   AS COD_AREA,',
'             c007   AS DESC_AREA,',
'             c008   AS COD_AUT_OC_AR,',
'             c009   AS COD_DEPARTAMENTO,',
'             c010   AS DESC_DEPARTAMENTO,',
'             c011   AS COD_AUT_OC_DEP,',
'             c012   AS COD_PROVEEDOR,',
'             c013   AS NOM_PROVEEDOR,',
'             c014   AS COMENTARIO,',
'             c015   AS COD_MONEDA,',
'             c016   AS DESC_MONEDA,',
'             c017   AS COD_CONDICION_COMPRA,',
'             c018   AS DESC_CONDICION_COMPRA,',
'             c019   AS IND_ESTADO,',
'             c020   AS REL_AUTORIZACION,',
'             c021   AS REL_RECHAZO,',
'             to_number(c022)   AS MONTO_TOTAL,',
'             to_number(c023)   AS MONTO_TOTAL_GS,',
'             c024   AS COD_MOTIVO_RECHAZO,',
'             c025   AS DESC_MOTIVO_RECHAZO,',
'             c026   AS VER_PEDIDO,',
'             c027   AS VER_DETALLE',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_ORDENDES''',
'       union all',
'       select null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null from dual;'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(132046467425968529)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132046594576968530)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132213868848825636)
,p_query_column_id=>3
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>100
,p_column_heading=>'Nro. OC'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132213958410825637)
,p_query_column_id=>4
,p_column_alias=>'FECHA'
,p_column_display_sequence=>110
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214037447825638)
,p_query_column_id=>5
,p_column_alias=>'COD_SUCURSAL_EMP'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214152658825639)
,p_query_column_id=>6
,p_column_alias=>'DESC_SUCURSAL'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214283787825640)
,p_query_column_id=>7
,p_column_alias=>'COD_AREA'
,p_column_display_sequence=>140
,p_column_heading=>unistr('\00C1rea')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214306131825641)
,p_query_column_id=>8
,p_column_alias=>'DESC_AREA'
,p_column_display_sequence=>150
,p_column_heading=>unistr('Descripci\00F3n \00C1rea')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214497483825642)
,p_query_column_id=>9
,p_column_alias=>'COD_AUT_OC_AR'
,p_column_display_sequence=>160
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214522048825643)
,p_query_column_id=>10
,p_column_alias=>'COD_DEPARTAMENTO'
,p_column_display_sequence=>170
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214689410825644)
,p_query_column_id=>11
,p_column_alias=>'DESC_DEPARTAMENTO'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214791550825645)
,p_query_column_id=>12
,p_column_alias=>'COD_AUT_OC_DEP'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214830702825646)
,p_query_column_id=>13
,p_column_alias=>'COD_PROVEEDOR'
,p_column_display_sequence=>200
,p_column_heading=>'Proveedor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132214978151825647)
,p_query_column_id=>14
,p_column_alias=>'NOM_PROVEEDOR'
,p_column_display_sequence=>210
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132215049655825648)
,p_query_column_id=>15
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>320
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132215104508825649)
,p_query_column_id=>16
,p_column_alias=>'COD_MONEDA'
,p_column_display_sequence=>230
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132215265869825650)
,p_query_column_id=>17
,p_column_alias=>'DESC_MONEDA'
,p_column_display_sequence=>240
,p_column_heading=>'Moneda'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249237430775501)
,p_query_column_id=>18
,p_column_alias=>'COD_CONDICION_COMPRA'
,p_column_display_sequence=>250
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249361102775502)
,p_query_column_id=>19
,p_column_alias=>'DESC_CONDICION_COMPRA'
,p_column_display_sequence=>260
,p_column_heading=>unistr('Condici\00F3n Compra')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249499191775503)
,p_query_column_id=>20
,p_column_alias=>'IND_ESTADO'
,p_column_display_sequence=>270
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249505242775504)
,p_query_column_id=>21
,p_column_alias=>'REL_AUTORIZACION'
,p_column_display_sequence=>280
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249699507775505)
,p_query_column_id=>22
,p_column_alias=>'REL_RECHAZO'
,p_column_display_sequence=>290
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132047278313968537)
,p_query_column_id=>23
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>270
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249736135775506)
,p_query_column_id=>24
,p_column_alias=>'MONTO_TOTAL_GS'
,p_column_display_sequence=>300
,p_column_heading=>'Monto Total Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249897584775507)
,p_query_column_id=>25
,p_column_alias=>'COD_MOTIVO_RECHAZO'
,p_column_display_sequence=>310
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132249950292775508)
,p_query_column_id=>26
,p_column_alias=>'DESC_MOTIVO_RECHAZO'
,p_column_display_sequence=>320
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132250465546775513)
,p_query_column_id=>27
,p_column_alias=>'VER_PEDIDO'
,p_column_display_sequence=>360
,p_column_heading=>'Ver Pedido'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'#VER_PEDIDO#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132252385995775532)
,p_query_column_id=>28
,p_column_alias=>'VER_DETALLE'
,p_column_display_sequence=>340
,p_column_heading=>'Ver Detalle'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P447_SECUENCIA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span style="color: #003a85;" class="fa fa-eye" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132250522315775514)
,p_plug_name=>'Detalles'
,p_parent_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132559649690369902)
,p_plug_name=>'Rechazar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132559887451369904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(132559649690369902)
,p_button_name=>'CONFIRMA_REC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132559999079369905)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(132559649690369902)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132251808921775527)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_button_name=>'NIVEL1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aut. Gte. \00C1rea')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132251928619775528)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_button_name=>'NIVEL2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aut. Gte. Adm.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132252052294775529)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_button_name=>'NIVEL3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aut. Gte. Gral.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132252158092775530)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_button_name=>'NIVEL4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aut. Directorio'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132252205358775531)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_button_name=>'RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132250292226775511)
,p_name=>'P447_IND_VISUALIZA_TODO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132250620573775515)
,p_name=>'P447_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(132250736722775516)
,p_name=>'P447_DESC_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>'Sucursal que solicita'
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
 p_id=>wwv_flow_imp.id(132250856898775517)
,p_name=>'P447_DESC_DEPARTAMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>'Departamento'
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
 p_id=>wwv_flow_imp.id(132250912078775518)
,p_name=>'P447_NOM_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>'Nombre proveedor'
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
 p_id=>wwv_flow_imp.id(132251064109775519)
,p_name=>'P447_REL_AUTORIZACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>unistr('Relatorio autorizaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132251151038775520)
,p_name=>'P447_REL_RECHAZO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>'Relatorio de rechazo'
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
 p_id=>wwv_flow_imp.id(132251365575775522)
,p_name=>'P447_USUARIO_N1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
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
 p_id=>wwv_flow_imp.id(132251467935775523)
,p_name=>'P447_USUARIO_N2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
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
 p_id=>wwv_flow_imp.id(132251567422775524)
,p_name=>'P447_USUARIO_N3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
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
 p_id=>wwv_flow_imp.id(132251677225775525)
,p_name=>'P447_USUARIO_N4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
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
 p_id=>wwv_flow_imp.id(132251719053775526)
,p_name=>'P447_USUARIO_RECHAZO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
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
 p_id=>wwv_flow_imp.id(132252461623775533)
,p_name=>'P447_SECUENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132252864388775537)
,p_name=>'P447_NRO_OC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_prompt=>'Nro. OC'
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
 p_id=>wwv_flow_imp.id(132253293742775541)
,p_name=>'P447_MONTO_TOTAL_GS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132253303112775542)
,p_name=>'P447_MONTO_N1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132253493795775543)
,p_name=>'P447_IND_ESTADO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132253792710775546)
,p_name=>'P447_MONTO_N2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132254039991775549)
,p_name=>'P447_MONTO_N3'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(132250522315775514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132559706505369903)
,p_name=>'P447_COD_MOTIVO_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132559649690369902)
,p_prompt=>'Motivo Rechazo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo||''  - ''||descripcion descripcion, cod_motivo',
'from cp_motivo_rec_oc',
'where cod_empresa = ''1''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132561377075369919)
,p_name=>'P447_NIVEL_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132561477490369920)
,p_name=>'P447_NIVEL_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132561596051369921)
,p_name=>'P447_NIVEL_3'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132561624985369922)
,p_name=>'P447_NIVEL_4'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132563043853369936)
,p_name=>'P447_COD_SUCURSAL_EMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132563165810369937)
,p_name=>'P447_COD_AREA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132046387279968528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132250091423775509)
,p_name=>'Carga datos del detalle'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560530000369911)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P447_IND_VISUALIZA_TODO := busca_permiso(:P_COD_EMPRESA,',
'											''CPAUTOCS'',',
'											 :APP_USER,',
'											 ''IND_VISUALIZA_TODO''); 	',
'',
':P447_MONTO_N1 := to_number(bs_busca_parametro(''CP'', ''MON_OC_NIVEL1''||:P_COD_EMPRESA), ''999999999999'');',
':P447_MONTO_N2 := to_number(bs_busca_parametro(''CP'', ''MON_OC_NIVEL2''||:P_COD_EMPRESA), ''999999999999'');',
':P447_MONTO_N3 := to_number(bs_busca_parametro(''CP'', ''MON_OC_NIVEL3''||:P_COD_EMPRESA), ''999999999999'');',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P447_MONTO_N1,P447_MONTO_N2,P447_MONTO_N3,P447_IND_VISUALIZA_TODO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132250189731775510)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cpautocs.pr_obtiene_datos(p_cod_empresa       => :P_COD_EMPRESA,',
'                             p_cod_usuario        => :APP_USER,',
'                             p_cod_forma          => ''CPAUTOCS'',',
'                             p_ind_visualiza_todo => :P447_IND_VISUALIZA_TODO);'))
,p_attribute_02=>'P_COD_EMPRESA,P447_IND_VISUALIZA_TODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132250327794775512)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132046387279968528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132563244581369938)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132251808921775527)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132563337191369939)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132251928619775528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132563406214369940)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132252052294775529)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132563571444369941)
,p_event_id=>wwv_flow_imp.id(132250091423775509)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132252158092775530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132252531646775534)
,p_name=>'Obtiene datos'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P447_SECUENCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132252655583775535)
,p_event_id=>wwv_flow_imp.id(132252531646775534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT c002   AS NRO_OC,',
'         C004   AS COD_SUCURSAL_EMP,',
'         C006   AS COD_AREA,',
'         c014   AS COMENTARIO,',
'         c005   AS DESC_SUCURSAL,',
'         c010   AS DESC_DEPARTAMENTO,',
'         c013   AS NOM_PROVEEDOR,',
'         c020   AS REL_AUTORIZACION,',
'         c021   AS REL_RECHAZO,',
'         c023   AS MONTO_TOTAL_GS',
'    into :P447_NRO_OC,',
'         :P447_COD_SUCURSAL_EMP,',
'         :P447_COD_AREA,',
'         :P447_COMENTARIO,',
'         :P447_DESC_SUCURSAL,',
'         :P447_DESC_DEPARTAMENTO,',
'         :P447_NOM_PROVEEDOR,',
'         :P447_REL_AUTORIZACION,',
'         :P447_REL_RECHAZO,',
'         :P447_MONTO_TOTAL_GS',
'    FROM apex_collections',
'   WHERE collection_name = ''TMP_ORDENDES''',
'   AND seq_id   = :P447_SECUENCIA;',
'EXCEPTION ',
'   WHEN OTHERS  THEN ',
'    :P447_NRO_OC := NULL;',
'     :P447_COD_SUCURSAL_EMP := NULL;',
'     :P447_COD_AREA := NULL;',
'     :P447_COMENTARIO := NULL;',
'     :P447_DESC_SUCURSAL := NULL;',
'     :P447_DESC_DEPARTAMENTO := NULL;',
'     :P447_NOM_PROVEEDOR := NULL;',
'     :P447_REL_AUTORIZACION := NULL;',
'     :P447_REL_RECHAZO  := NULL;',
'END;'))
,p_attribute_02=>'P447_SECUENCIA'
,p_attribute_03=>'P447_COMENTARIO,P447_DESC_SUCURSAL,P447_DESC_DEPARTAMENTO,P447_NOM_PROVEEDOR,P447_REL_AUTORIZACION,P447_REL_RECHAZO,P447_NRO_OC,P447_MONTO_TOTAL_GS,P447_COD_SUCURSAL_EMP,P447_COD_AREA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132252955795775538)
,p_event_id=>wwv_flow_imp.id(132252531646775534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cpautocs.pr_ver_usuarios(p_usuario_n1        => :P447_USUARIO_N1,',
'                              p_usuario_n2       => :P447_USUARIO_N2,',
'                              p_usuario_n3       => :P447_USUARIO_N3,',
'                              p_usuario_n4       => :P447_USUARIO_N4,',
'                              p_usuario_rechazo  => :P447_USUARIO_RECHAZO,',
'                              p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                              p_rel_rechazo      => :P447_REL_RECHAZO);'))
,p_attribute_02=>'P447_REL_AUTORIZACION,P447_REL_RECHAZO'
,p_attribute_03=>'P447_USUARIO_N1,P447_USUARIO_N2,P447_USUARIO_N3,P447_USUARIO_N4,P447_USUARIO_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562950994369935)
,p_event_id=>wwv_flow_imp.id(132252531646775534)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cpautocs.pr_configurar( p_cod_empresa      => :P_COD_EMPRESA,',
'                            p_cod_sucursal_emp =>  :P447_COD_SUCURSAL_EMP,',
'                            p_cod_area         =>  :P447_COD_AREA,',
'                            p_cod_usuario      => :APP_USER,',
'                            p_cod_forma        => ''CPAUTOCS'',',
'                            p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                            p_nivel_4          => :P447_NIVEL_4,',
'                            p_nivel_3          =>  :P447_NIVEL_3,',
'                            p_nivel_2          => :P447_NIVEL_2,',
'                            p_nivel_1          => :P447_NIVEL_1);'))
,p_attribute_02=>'P_COD_EMPRESA,P447_COD_SUCURSAL_EMP,P447_COD_AREA,P447_REL_AUTORIZACION'
,p_attribute_03=>'P447_NIVEL_4,P447_NIVEL_3,P447_NIVEL_2,P447_NIVEL_1'
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
 p_id=>wwv_flow_imp.id(132252773091775536)
,p_event_id=>wwv_flow_imp.id(132252531646775534)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132250522315775514)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132253045582775539)
,p_name=>'Actualiza datos'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132251808921775527)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132253105418775540)
,p_event_id=>wwv_flow_imp.id(132253045582775539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('--Nivel 1 - Gerente de \00E1rea'),
'if nvl(instr(:P447_REL_AUTORIZACION, ''*1*'', 1, 1), 0) = 0 then',
'	  --Si el monto total de la OC es <= 500.000 queda autorizado por el GTE. DE AREA',
'	  if TO_NUMBER(REPLACE(nvl(:P447_MONTO_TOTAL_GS,0), ''.'')) <= TO_NUMBER(REPLACE(nvl(:P447_MONTO_N1,0), ''.'')) then',
'		    :P447_REL_AUTORIZACION := :P447_REL_AUTORIZACION||''*''||''1''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'		    :P447_IND_ESTADO				:= ''A'';',
'			:P0_MENSAJE_VALIDACION := ''La orden de compra ha sido totalmente autorizada. '';',
'	  else',
'	  	  :P447_REL_AUTORIZACION := trim(:P447_REL_AUTORIZACION||''*''||''1''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'');',
'	  end if;',
'	  ',
'elsif nvl(instr(:P447_REL_AUTORIZACION, ''*1*'', 1, 1), 0) > 0 then',
unistr('    raise_application_error(-20001, ''El movimiento ya fue aprobado en el primer nivel. Autorizaci\00F3n solicitudes'');'),
'end if ;',
'inv.cpautocs.pr_ver_usuarios(p_usuario_n1        => :P447_USUARIO_N1,',
'                              p_usuario_n2       => :P447_USUARIO_N2,',
'                              p_usuario_n3       => :P447_USUARIO_N3,',
'                              p_usuario_n4       => :P447_USUARIO_N4,',
'                              p_usuario_rechazo  => :P447_USUARIO_RECHAZO,',
'                              p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                              p_rel_rechazo      => :P447_REL_RECHAZO);',
'',
'inv.cpautocs.pr_actualiza_datos(p_comentario     => :P447_COMENTARIO,',
'                                 p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                                 p_ind_estado       => :P447_IND_ESTADO,',
'                                 p_nro_pedido       => :P447_NRO_OC,',
'                                 p_cod_empresa      => :P_COD_EMPRESA);'))
,p_attribute_02=>'P447_REL_AUTORIZACION,P447_MONTO_TOTAL_GS,P447_MONTO_N1,P447_USUARIO_RECHAZO,P447_REL_RECHAZO,P447_COMENTARIO,P447_IND_ESTADO,P447_NRO_OC,P_COD_EMPRESA'
,p_attribute_03=>'P447_REL_AUTORIZACION,P447_IND_ESTADO,P0_MENSAJE_VALIDACION,P447_USUARIO_N1,P447_USUARIO_N2,P447_USUARIO_N3,P447_USUARIO_N4'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560656554369912)
,p_event_id=>wwv_flow_imp.id(132253045582775539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132253585694775544)
,p_name=>'Actualiza datos2'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132251928619775528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132253634383775545)
,p_event_id=>wwv_flow_imp.id(132253585694775544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('--Nivel 2 - Gerente de Administraci\00F3n y Finanzas'),
'if nvl(instr(:P447_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
unistr('    raise_application_error(-20001, ''No puede autorizar el segundo nivel sin autorizar previamente el primer nivel. Autorizaci\00F3n de horas adicionales'');'),
'else',
'		if nvl(instr(:P447_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 then',
'			  -->500.000 y <= 5.000.000 --> queda autorizado por GTE. ADM. Y FINANZAS',
'			  if nvl(TO_NUMBER(REPLACE(:P447_MONTO_TOTAL_GS, ''.'')),0) > nvl(TO_NUMBER(REPLACE(:P447_MONTO_N1, ''.'')),0) and nvl(TO_NUMBER(REPLACE(:P447_MONTO_TOTAL_GS, ''.'')),0) <= nvl(TO_NUMBER(REPLACE(:P447_MONTO_N2, ''.'')),0) then',
'			  	  :P447_REL_AUTORIZACION := :P447_REL_AUTORIZACION||''*''||''2''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'			  	  :P447_IND_ESTADO				:= ''A'';',
'			  	  ',
'			  	  :P0_MENSAJE_VALIDACION := ''La orden de compra ha sido totalmente autorizada.'';',
'			  else',
'			  	 :P447_REL_AUTORIZACION := :P447_REL_AUTORIZACION||''*''||''2''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'				end if;',
'		    ',
'		elsif nvl(instr(:P447_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) > 0 then',
unistr('		   raise_application_error(-20001,''El movimiento ya fue aprobado en el segundo nivel. Autorizaci\00F3n solicitudes'');'),
'		end if;',
'		',
'    inv.cpautocs.pr_ver_usuarios(p_usuario_n1        => :P447_USUARIO_N1,',
'                              p_usuario_n2       => :P447_USUARIO_N2,',
'                              p_usuario_n3       => :P447_USUARIO_N3,',
'                              p_usuario_n4       => :P447_USUARIO_N4,',
'                              p_usuario_rechazo  => :P447_USUARIO_RECHAZO,',
'                              p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                              p_rel_rechazo      => :P447_REL_RECHAZO);',
'',
'    inv.cpautocs.pr_actualiza_datos(p_comentario     => :P447_COMENTARIO,',
'                                 p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                                 p_ind_estado       => :P447_IND_ESTADO,',
'                                 p_nro_pedido       => :P447_NRO_OC,',
'                                 p_cod_empresa      => :P_COD_EMPRESA);',
'',
'		',
'end if;',
''))
,p_attribute_02=>'P447_REL_AUTORIZACION,P447_MONTO_TOTAL_GS,P447_MONTO_N1,P447_MONTO_N2,P447_USUARIO_RECHAZO,P447_REL_RECHAZO,P447_COMENTARIO,P447_IND_ESTADO,P447_NRO_OC,P_COD_EMPRESA'
,p_attribute_03=>'P447_REL_AUTORIZACION,P447_IND_ESTADO,P0_MENSAJE_VALIDACION,P447_USUARIO_N1,P447_USUARIO_N2,P447_USUARIO_N3,P447_USUARIO_N4'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560757862369913)
,p_event_id=>wwv_flow_imp.id(132253585694775544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132253844894775547)
,p_name=>'Actualiza datos 3'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132252052294775529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132253979514775548)
,p_event_id=>wwv_flow_imp.id(132253844894775547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Nivel 3 - Gerente General',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
unistr('    raise_application_error(-20001, ''No puede autorizar el tercer nivel sin autorizar previamente el primer nivel. Autorizaci\00F3n de solicitudes'');'),
'end if;',
'',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 then',
unistr('    raise_application_error(-20001,''No puede autorizar el tercer nivel sin autorizar previamente el segundo nivel. Autorizaci\00F3n de solicitudes'');'),
'end if;',
'',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*3*'', 1, 1 ), 0) = 0 then	  ',
'	  -->5.000.000 y <= 90.000.000  queda autorizado por GTE. GENERAL',
'	  if nvl(TO_NUMBER(REPLACE(:P447_MONTO_TOTAL_GS, ''.'')),0) > nvl(TO_NUMBER(REPLACE(:P447_MONTO_N2, ''.'')),0) and nvl(TO_NUMBER(REPLACE(:P447_MONTO_TOTAL_GS, ''.'')),0) <= nvl(TO_NUMBER(REPLACE(:P447_MONTO_N3, ''.'')),0) then',
'	  		:P447_REL_AUTORIZACION := :P447_REL_AUTORIZACION||''*''||''3''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'	  		:P447_IND_ESTADO				:= ''A'';	 ',
'	  		',
'	  		:P0_MENSAJE_VALIDACION  := ''La orden de compra ha sido totalmente autorizada. '';',
'	  else',
'	  	  :P447_REL_AUTORIZACION := :P447_REL_AUTORIZACION||''*''||''3''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'		end if;',
'    ',
'elsif nvl(instr(:P447_REL_AUTORIZACION, ''*3*'', 1, 1 ), 0) > 0 then',
unistr('    raise_application_error(-20001,''El movimiento ya fue aprobado en el tercer nivel nivel. Autorizaci\00F3n de solicitudes'');'),
'end if;',
'',
'inv.cpautocs.pr_ver_usuarios(p_usuario_n1        => :P447_USUARIO_N1,',
'                              p_usuario_n2       => :P447_USUARIO_N2,',
'                              p_usuario_n3       => :P447_USUARIO_N3,',
'                              p_usuario_n4       => :P447_USUARIO_N4,',
'                              p_usuario_rechazo  => :P447_USUARIO_RECHAZO,',
'                              p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                              p_rel_rechazo      => :P447_REL_RECHAZO);',
'',
'    inv.cpautocs.pr_actualiza_datos(p_comentario     => :P447_COMENTARIO,',
'                                 p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                                 p_ind_estado       => :P447_IND_ESTADO,',
'                                 p_nro_pedido       => :P447_NRO_OC,',
'                                 p_cod_empresa      => :P_COD_EMPRESA);'))
,p_attribute_02=>'P447_REL_AUTORIZACION,P447_MONTO_TOTAL_GS,P447_MONTO_N2,P447_MONTO_N3,P447_USUARIO_RECHAZO,P447_REL_RECHAZO,P447_COMENTARIO,P447_IND_ESTADO,P447_NRO_OC,P_COD_EMPRESA'
,p_attribute_03=>'P447_REL_AUTORIZACION,P447_IND_ESTADO,P0_MENSAJE_VALIDACION,P447_USUARIO_N1,P447_USUARIO_N2,P447_USUARIO_N3,P447_USUARIO_N4'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560838606369914)
,p_event_id=>wwv_flow_imp.id(132253844894775547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132254108242775550)
,p_name=>'Actualiza datos 4'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132252158092775530)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132559569839369901)
,p_event_id=>wwv_flow_imp.id(132254108242775550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Nivel 4 - Directorio',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
unistr('    raise_application_error(-20001, ''No puede autorizar el cuarto nivel sin autorizar previamente el primer nivel. Autorizaci\00F3n de solicitudes'');'),
'end if;',
'',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 then',
unistr('    raise_application_error(-20001,''No puede autorizar el cuarto nivel sin autorizar previamente el segundo nivel. Autorizaci\00F3n de solicitudes'');'),
'end if;',
'',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*3*'', 1, 1 ), 0) = 0 then	  ',
unistr('	raise_application_error(-20001,''No puede autorizar el cuarto nivel sin autorizar previamente el tercer nivel. Autorizaci\00F3n de solicitudes'');'),
'end if;',
'',
'if nvl(instr(:P447_REL_AUTORIZACION, ''*4*'', 1, 1 ), 0) = 0 then	 ',
'	  :P447_REL_AUTORIZACION := :P447_REL_AUTORIZACION||''*''||''4''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'	  :P447_IND_ESTADO       := ''A'';',
'	  :P0_MENSAJE_VALIDACION := ''La orden de compra ha sido totalmente autorizada. '';',
'elsif nvl(instr(:P447_REL_AUTORIZACION, ''*4*'', 1, 1 ), 0) > 0 then',
unistr('    raise_application_error(-20001,''El movimiento ya fue aprobado en el cuarto nivel nivel. Autorizaci\00F3n de solicitudes'');'),
'end if ;',
'',
'',
'inv.cpautocs.pr_ver_usuarios(p_usuario_n1        => :P447_USUARIO_N1,',
'                              p_usuario_n2       => :P447_USUARIO_N2,',
'                              p_usuario_n3       => :P447_USUARIO_N3,',
'                              p_usuario_n4       => :P447_USUARIO_N4,',
'                              p_usuario_rechazo  => :P447_USUARIO_RECHAZO,',
'                              p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                              p_rel_rechazo      => :P447_REL_RECHAZO);',
'',
'    inv.cpautocs.pr_actualiza_datos(p_comentario     => :P447_COMENTARIO,',
'                                 p_rel_autorizacion => :P447_REL_AUTORIZACION,',
'                                 p_ind_estado       => :P447_IND_ESTADO,',
'                                 p_nro_pedido       => :P447_NRO_OC,',
'                                 p_cod_empresa      => :P_COD_EMPRESA);'))
,p_attribute_02=>'P447_REL_AUTORIZACION,P447_USUARIO_RECHAZO,P447_REL_RECHAZO,P447_COMENTARIO,P447_IND_ESTADO,P447_NRO_OC,P_COD_EMPRESA'
,p_attribute_03=>'P447_REL_AUTORIZACION,P447_IND_ESTADO,P0_MENSAJE_VALIDACION,P447_USUARIO_N1,P447_USUARIO_N2,P447_USUARIO_N3,P447_USUARIO_N4'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560931982369915)
,p_event_id=>wwv_flow_imp.id(132254108242775550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132560042418369906)
,p_name=>'Cerrar ventana'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132559999079369905)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560191562369907)
,p_event_id=>wwv_flow_imp.id(132560042418369906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132559649690369902)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132560369634369909)
,p_name=>'Actualizar datos  4'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132559887451369904)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132560472114369910)
,p_event_id=>wwv_flow_imp.id(132560369634369909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P447_COD_MOTIVO_RECHAZO is not null then',
'		:P447_REL_RECHAZO := ''*''||''1''||''*''||:APP_USER||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*'';',
'		:P447_IND_ESTADO  := ''R'';',
'		',
'		:P0_MENSAJE_VALIDACION  := ''La orden de compra ha sido rechazada. '';',
'		',
'        UPDATE cp_pedidos_cab',
'         SET comentario       = :P447_COMENTARIO,',
'             rel_rechazo = :P447_REL_RECHAZO,',
'             ind_estado       = :P447_IND_ESTADO,',
'             rel_autorizacion = :P447_REL_AUTORIZACION',
'       WHERE nro_pedido = :P447_NRO_OC',
'         AND cod_empresa = :P_COD_EMPRESA;',
'		COMMIT;',
'		',
'else',
unistr('	 RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar el c\00F3digo de motivo de rechazo. La solicitud no puede ser rechazada sin el motivo. '');'),
'end if;',
'',
''))
,p_attribute_02=>'P447_COD_MOTIVO_RECHAZO,P447_COMENTARIO,P447_REL_RECHAZO,P447_IND_ESTADO,P447_REL_AUTORIZACION,P447_NRO_OC,P_COD_EMPRESA'
,p_attribute_03=>'P447_REL_RECHAZO,P447_IND_ESTADO,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132561212041369918)
,p_event_id=>wwv_flow_imp.id(132560369634369909)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132561005803369916)
,p_name=>'Abrir motivo rechazo'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132252205358775531)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132561160312369917)
,p_event_id=>wwv_flow_imp.id(132561005803369916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132559649690369902)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132561775548369923)
,p_name=>'Valida nivel 4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P447_NIVEL_4'
,p_condition_element=>'P447_NIVEL_4'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132561820306369924)
,p_event_id=>wwv_flow_imp.id(132561775548369923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132252158092775530)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132561976709369925)
,p_event_id=>wwv_flow_imp.id(132561775548369923)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132252158092775530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132562076755369926)
,p_name=>'Valida nivel 3'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P447_NIVEL_3'
,p_condition_element=>'P447_NIVEL_3'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562154284369927)
,p_event_id=>wwv_flow_imp.id(132562076755369926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132252052294775529)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562221288369928)
,p_event_id=>wwv_flow_imp.id(132562076755369926)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132252052294775529)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132562336218369929)
,p_name=>'Valida nivel 2'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P447_NIVEL_2'
,p_condition_element=>'P447_NIVEL_2'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562442630369930)
,p_event_id=>wwv_flow_imp.id(132562336218369929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132251928619775528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562594760369931)
,p_event_id=>wwv_flow_imp.id(132562336218369929)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132251928619775528)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132562684718369932)
,p_name=>'Valida nivel 1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P447_NIVEL_1'
,p_condition_element=>'P447_NIVEL_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562741804369933)
,p_event_id=>wwv_flow_imp.id(132562684718369932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132251808921775527)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132562892628369934)
,p_event_id=>wwv_flow_imp.id(132562684718369932)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(132251808921775527)
);
wwv_flow_imp.component_end;
end;
/
