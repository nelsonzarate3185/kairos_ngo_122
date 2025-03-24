prompt --application/pages/page_00217
begin
--   Manifest
--     PAGE: 00217
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
 p_id=>217
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'GRILLA PROVEEDORES'
,p_alias=>'GRILLA-PROVEEDORES'
,p_step_title=>unistr('Proveedores - B\00FAsqueda')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#btn, #btnew{ ',
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
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'      ',
'#subreg {',
'      background-color: #487ab8 !important;',
'      }',
'  ',
' #P217_ACTIVO_LABEL , #a_Collapsible1_subreg_heading{ color: yellow !important;}',
' ',
'  .t-Report-colHead {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240916153726'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48237713162546549)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51714407304409021)
,p_plug_name=>'Ampliar Busqueda'
,p_region_name=>'subreg'
,p_parent_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(48498632336520104)
,p_name=>'Listado de Proveedores'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 COD_PROVEEDOR',
'       ,C002 COD_PERSONA',
'       ,C003 COD_CUENTA_CONTABLE  ',
'       ,C004 COD_RUBRO  ',
'       ,nvl(C006,C005) NOMB_PROVEEDOR   ',
'       ,C007 COD_CONDICION_COMPRA  ',
'       ,C008 COD_MONEDA  ',
'       ,APEX_ITEM.CHECKBOX(1,C009,decode(C009,''A'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )ESTADO',
'       ,APEX_ITEM.CHECKBOX(1,C010,decode(C010,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )EXENTO',
'       ,APEX_ITEM.CHECKBOX(1,C011,decode(C011,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )DIRECTO',
'       ,APEX_ITEM.CHECKBOX(1,C012,decode(C012,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )TRANSFERENCIA',
'       ,APEX_ITEM.CHECKBOX(1,C013,decode(C013,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )RETENCION',
'       ,APEX_ITEM.CHECKBOX(1,C014,decode(C014,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )RETENCION_RENTA',
'       , null eliminar',
'       , null editar',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''CM_PROVEEDORES''  '))
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
 p_id=>wwv_flow_imp.id(51712505833409002)
,p_query_column_id=>1
,p_column_alias=>'COD_PROVEEDOR'
,p_column_display_sequence=>20
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51712695967409003)
,p_query_column_id=>2
,p_column_alias=>'COD_PERSONA'
,p_column_display_sequence=>50
,p_column_heading=>unistr('C\00F3digo Persona')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51712705813409004)
,p_query_column_id=>3
,p_column_alias=>'COD_CUENTA_CONTABLE'
,p_column_display_sequence=>40
,p_column_heading=>'Cuenta Contable'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select nombre_cuenta, cod_cuenta',
'    from co_plan_cuentas',
'   where cod_empresa =  nvl(:p_cod_empresa ,''1'')',
'   AND COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'')'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51712880837409005)
,p_query_column_id=>4
,p_column_alias=>'COD_RUBRO'
,p_column_display_sequence=>60
,p_column_heading=>'Rubro'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_sector',
'    from sectores_econ ;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51712949170409006)
,p_query_column_id=>5
,p_column_alias=>'NOMB_PROVEEDOR'
,p_column_display_sequence=>30
,p_column_heading=>'Nombre del  Proveedor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713051120409007)
,p_query_column_id=>6
,p_column_alias=>'COD_CONDICION_COMPRA'
,p_column_display_sequence=>70
,p_column_heading=>'Condicion Compra'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, c.cod_condicion_compra',
'    from cm_condiciones_compras c',
'   where c.cod_empresa = nvl(:p_cod_empresa,''1'');'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713156463409008)
,p_query_column_id=>7
,p_column_alias=>'COD_MONEDA'
,p_column_display_sequence=>80
,p_column_heading=>'Moneda'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_moneda',
'    from monedas '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713290294409009)
,p_query_column_id=>8
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>90
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713386496409010)
,p_query_column_id=>9
,p_column_alias=>'EXENTO'
,p_column_display_sequence=>100
,p_column_heading=>'Exento'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713468887409011)
,p_query_column_id=>10
,p_column_alias=>'DIRECTO'
,p_column_display_sequence=>110
,p_column_heading=>'Directo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713580328409012)
,p_query_column_id=>11
,p_column_alias=>'TRANSFERENCIA'
,p_column_display_sequence=>120
,p_column_heading=>'Transferencia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713628193409013)
,p_query_column_id=>12
,p_column_alias=>'RETENCION'
,p_column_display_sequence=>130
,p_column_heading=>'Retencion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713744612409014)
,p_query_column_id=>13
,p_column_alias=>'RETENCION_RENTA'
,p_column_display_sequence=>140
,p_column_heading=>'Ret.Renta'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713830167409015)
,p_query_column_id=>14
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>150
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P217_COD_ELIMINAR'',#COD_PROVEEDOR#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'    END IF;                                                     ',
'END;',
''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51713966009409016)
,p_query_column_id=>15
,p_column_alias=>'EDITAR'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:219:P219_P_COD_PROVEEDOR:#COD_PROVEEDOR#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48498361645520101)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_button_name=>'BUSCAR'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48498583475520103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51714407304409021)
,p_button_name=>'NUEVO'
,p_button_static_id=>'btnew'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:CR,219:P219_P_COD_PROVEEDOR:'
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
'        RETURN false;',
'    ELSE',
'        RETURN true;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48237838140546550)
,p_name=>'P217_NOMBRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_prompt=>'RAZON SOCIAL - NOMBRE PROVEEDOR'
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
 p_id=>wwv_flow_imp.id(48498441969520102)
,p_name=>'P217_RUC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51714323959409020)
,p_name=>'P217_COD_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51714596724409022)
,p_name=>'P217_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51714407304409021)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ,cod_sector',
'    from sectores_econ',
'order by 1',
'   ;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51714625015409023)
,p_name=>'P217_CONDICION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51714407304409021)
,p_prompt=>'Condicion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ,c.cod_condicion_compra',
'    from cm_condiciones_compras c',
'   where c.cod_empresa =  nvl(:p_cod_empresa ,''1'') '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51714749400409024)
,p_name=>'P217_ACTIVO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51714407304409021)
,p_prompt=>'Ver Solo Activos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51714828935409025)
,p_name=>'P217_PERSONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51714407304409021)
,p_prompt=>'Codigo Persona'
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
 p_id=>wwv_flow_imp.id(51714961930409026)
,p_name=>'P217_CODIGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_prompt=>'CODIGO'
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
 p_id=>wwv_flow_imp.id(51715044094409027)
,p_name=>'P217_CUENTA_CONTABLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51714407304409021)
,p_prompt=>'Cuenta Contable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_cuenta||'' - ''|| nombre_cuenta , cod_cuenta',
'    from co_plan_cuentas',
'   where cod_empresa = NVL(:P_COD_EMPRESA,''1'');'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54422482416716943)
,p_name=>'P217_ACTUALIZA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48237713162546549)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51714001883409017)
,p_name=>'FILTRA_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48498361645520101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832975312733065718)
,p_event_id=>wwv_flow_imp.id(51714001883409017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var spinner = apex.util.showSpinner();',
' ',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51714169786409018)
,p_event_id=>wwv_flow_imp.id(51714001883409017)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'   begin',
'    inv.cmprovee.cargar_reporte(p_cod_empresa => :p_cod_empresa,',
'                              p_descripcion => :P217_NOMBRE,',
'                              p_cod_proveedor => :P217_CODIGO,',
'                              p_cod_rubro => :P217_RUBRO,',
'                              p_condicion_compra => :P217_CONDICION,',
'                              p_ruc => :P217_RUC,',
'                              p_cuenta => :P217_CUENTA_CONTABLE,',
'                              p_persona => :P217_PERSONA,',
'                              p_activos => :P217_ACTIVO);',
'exception',
'    when others then         ',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'end;'))
,p_attribute_02=>'P217_NOMBRE,P217_RUC,P217_RUBRO,P217_CODIGO,P217_CONDICION,P217_CUENTA_CONTABLE,P217_PERSONA,P217_ACTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51714221190409019)
,p_event_id=>wwv_flow_imp.id(51714001883409017)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48498632336520104)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832975458983065719)
,p_event_id=>wwv_flow_imp.id(51714001883409017)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54421106360716930)
,p_name=>'da_eliminar_prov'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P217_COD_ELIMINAR'
,p_condition_element=>'P217_COD_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54421260183716931)
,p_event_id=>wwv_flow_imp.id(54421106360716930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el Proveedor &P217_COD_ELIMINAR. ?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54421335745716932)
,p_event_id=>wwv_flow_imp.id(54421106360716930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cmprovee.elimina_proveedor(pi_cod_empresa =>  nvl(:p_cod_empresa ,''1''),',
'                                 pi_cod_proveedor => :P217_COD_ELIMINAR);'))
,p_attribute_02=>'P217_COD_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54422132588716940)
,p_event_id=>wwv_flow_imp.id(54421106360716930)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54422580593716944)
,p_name=>'Setea_Campos'
,p_event_sequence=>30
,p_condition_element=>'P217_ACTUALIZA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54422626374716945)
,p_event_id=>wwv_flow_imp.id(54422580593716944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#btn'').click();',
'apex.item(''P217_ACTUALIZA'').setValue(''N'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54422793589716946)
,p_event_id=>wwv_flow_imp.id(54422580593716944)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CM_PROVEEDORES'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54422824519716947)
,p_event_id=>wwv_flow_imp.id(54422580593716944)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48498632336520104)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54422976281716948)
,p_event_id=>wwv_flow_imp.id(54422580593716944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P217_ACTUALIZA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54423025364716949)
,p_event_id=>wwv_flow_imp.id(54422580593716944)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P217_NOMBRE,P217_RUC,P217_CODIGO,P217_CONDICION,P217_RUBRO,P217_CUENTA_CONTABLE,P217_PERSONA,P217_ACTIVO'
);
wwv_flow_imp.component_end;
end;
/
