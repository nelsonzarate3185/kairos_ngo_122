prompt --application/pages/page_00219
begin
--   Manifest
--     PAGE: 00219
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
 p_id=>219
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CMPROVEEDORES'
,p_alias=>'CMPROVEEDORES'
,p_page_mode=>'MODAL'
,p_step_title=>'PROVEEDORES'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-label{      color: #003A85 !important;',
'                    border-color: #003A85 !important;',
'              }',
'/*',
'input{ color: darkblue !important;',
'                    font-weight: bold ;',
'    }*/',
'',
'',
'#regcentral > .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer{',
'    border-style: solid;',
'    border-width: 0.5px;',
'    border-color:  #003A85',
'    }',
'',
' ',
' #regcentral{',
'    border-color: #003A85 !important;',
'    background: #487ab8 !important;',
'    border-style: solid !important; ',
'    }',
'',
'',
'    #reglateral{',
'    border-color: #0062ff4e !important;',
'    background: #0062ff4e !important;',
'    border-style: solid !important; ',
'    }',
'    ',
'     #BTNOK{ ',
'              margin-top: 15px;',
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
'        }',
'',
'        #btn{',
'            background:white;',
'            background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'            color:  yellow; ',
'            justify-content: center;',
'            align-items: center; ',
'            box-shadow: #000000 1px 1px 5px 1px; ',
'            border-style: solid;',
'            border-width: 0.5px;',
'            border-color: darkblue;}',
'    '))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'900'
,p_dialog_width=>'1200'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240916153048'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48498813461520106)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48498980268520107)
,p_plug_name=>'PROVEEDOR'
,p_region_name=>'regcentral'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48500010376520118)
,p_plug_name=>'lateral'
,p_region_name=>'reglateral'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54420215680716921)
,p_plug_name=>'Rubros'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(48503297818520150)
,p_name=>'Rubro Proveedor'
,p_parent_plug_id=>wwv_flow_imp.id(54420215680716921)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_SECTOR, null eliminar',
'  from CP_PROVEEDORES_RUBROS',
' where COD_EMPRESA = NVL(:P_COD_EMPRESA,''1'' )',
' AND COD_PROVEEDOR = :P219_P_COD_PROVEEDOR'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P219_P_COD_PROVEEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Rubro Proveedor'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54419303219716912)
,p_query_column_id=>1
,p_column_alias=>'COD_SECTOR'
,p_column_display_sequence=>40
,p_column_heading=>'Rubro / Sector'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_sector',
' from sectores_econ ;'))
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54419435293716913)
,p_query_column_id=>2
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>50
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P219_COD_ELIMINAR'',''#COD_SECTOR#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54422204323716941)
,p_plug_name=>'reg_boton'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48502906676520147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54422204323716941)
,p_button_name=>'GUARDAR'
,p_button_static_id=>'BTNOK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'Vactualiza NUMBER;',
'VInserta NUMBER;',
'BEGIN',
'',
'    VInserta := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'',
'    Vactualiza := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF Vactualiza = 0 and VInserta = 0  THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54419745870716916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54420215680716921)
,p_button_name=>'Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54419861790716917)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_button_name=>'rubro'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'+ Rubros'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48503065644520148)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_button_name=>'persona'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Persona'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::P102_PERS_COD_PERSONA:&P219_COD_PERSONA.'
,p_button_condition=>'P219_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-users'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48503140382520149)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_button_name=>'Cuenta_Bcria'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cuenta Bancaria'
,p_icon_css_classes=>'fa-briefcase'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51712410191409001)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_button_name=>'contactos'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Contactos'
,p_icon_css_classes=>'fa-users-chat'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(54422319769716942)
,p_branch_name=>'Go To Page 217'
,p_branch_action=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.::P217_ACTUALIZA,P217_CODIGO:S,&P219_COD_PROVEEDOR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48499061402520108)
,p_name=>'P219_COD_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Codigo Proveedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48499181497520109)
,p_name=>'P219_COD_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Codigo Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_PROV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ,ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) x',
'from personas',
'order by 1;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'D:P219_NOM_RAZ_SOC_PROV,X:P219_NOMB_PROVEEDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48499247519520110)
,p_name=>'P219_NOMB_PROVEEDOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Nombre Abreviado para Contabilidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48499388429520111)
,p_name=>'P219_NOM_RAZ_SOC_PROV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>unistr('Nombre Prov.- Raz\00F3n Social')
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
 p_id=>wwv_flow_imp.id(48499488450520112)
,p_name=>'P219_COD_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ,cod_sector',
'    from sectores_econ',
'   ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(48499542093520113)
,p_name=>'P219_COD_CONDICION_COMPRA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Condicion Compra'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ,c.cod_condicion_compra',
'    from cm_condiciones_compras c',
'   where c.cod_empresa = NVL(:P_COD_EMPRESA,''1'' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(48499610134520114)
,p_name=>'P219_COD_MONEDA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion ,cod_moneda',
'    from monedas '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48499725665520115)
,p_name=>'P219_COD_CUENTA_CONTABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Cuenta Contable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_cuenta||'' - ''|| nombre_cuenta , cod_cuenta',
'    from co_plan_cuentas',
'   where cod_empresa = NVL(:P_COD_EMPRESA,''1'' )',
'   AND COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'');'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(48499873608520116)
,p_name=>'P219_DIAS_OC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Periodo Cobertura'
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
 p_id=>wwv_flow_imp.id(48499986036520117)
,p_name=>'P219_DIAS_ANALISIS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Periodo Analisis'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48500176974520119)
,p_name=>'P219_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Sucursal Autorizado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion,cod_sucursal',
' from sucursales ',
'where cod_empresa  = NVL(:P_COD_EMPRESA,''1'' )',
'  ---and cod_sucursal = :b_proveedores.cod_sucursal',
'  ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(48500221866520120)
,p_name=>'P219_COD_AGENTE_STA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Agente Sta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cod_usuario, cod_usuario cod',
'from inv.ca_agente_call',
'WHERE COD_EMPRESA = NVL(:P_COD_EMPRESA,''1'' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48500394692520121)
,p_name=>'P219_IND_SERVICIO_TECNICO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Tipo ST'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:STNGO;STNGO,STA;STA'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48500402723520122)
,p_name=>'P219_COD_RESPONSABLE_REPUESTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Responsable Repuesto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	            select nvl(p.nombre,p.nomb_fantasia), s.cod_empleado',
'					from inv.rh_empleados s,',
'					     personas p',
'					where s.cod_empresa= ''1''--:variables.cod_empresa',
'					and s.cod_persona=p.cod_persona',
'					--and s.cod_empleado= :B_PROVEEDORES.cod_responsable_repuesto',
'					; '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(48500620341520124)
,p_name=>'P219_COD_PERS_BCO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Cuenta Banco Gs.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                    select nvl(p.nombre,p.nomb_fantasia),s.cod_persona',
'					from inv.cc_bancos_sipap s,',
'					     personas p',
'					where s.cod_persona=p.cod_persona',
'					---and s.cod_persona= :B_PROVEEDORES.COD_PERS_BCO',
'					; '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48500733089520125)
,p_name=>'P219_COD_PERS_BCO_US'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Cuenta Banco U$.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                    select nvl(p.nombre,p.nomb_fantasia),s.cod_persona',
'					from inv.cc_bancos_sipap s,',
'					     personas p',
'					where s.cod_persona=p.cod_persona',
'					---and s.cod_persona= :B_PROVEEDORES.COD_PERS_BCO',
'					; '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48500823745520126)
,p_name=>'P219_NRO_CTA_BCO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>unistr('N\00BA Cta. Bancaria Gs.')
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
 p_id=>wwv_flow_imp.id(48500949294520127)
,p_name=>'P219_NRO_CTA_BCO_US'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>unistr('N\00BA Cta.Bancaria U$')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501063457520128)
,p_name=>'P219_OBSERVACION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501109875520129)
,p_name=>'P219_COMENTARIO_BLOQUEO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Comentario de Bloqueo'
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
 p_id=>wwv_flow_imp.id(48501294942520130)
,p_name=>'P219_EXTERIOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Exterior'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501443679520132)
,p_name=>'P219_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501564050520133)
,p_name=>'P219_EXENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Exento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501644911520134)
,p_name=>'P219_DIRECTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Directo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501706940520135)
,p_name=>'P219_AFECTA_CTA_PAG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Afecta Cta. Pag '
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501859541520136)
,p_name=>'P219_IND_TRANSFERENCIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Transfer. Bcria.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48501967615520137)
,p_name=>'P219_IND_RETENCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Retenciones'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502076189520138)
,p_name=>'P219_IND_RETENCION_RENTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Retencion Renta'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502140870520139)
,p_name=>'P219_BLOQUEO_PAGO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'Bloqueo Pago'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502263513520140)
,p_name=>'P219_NO_AFECTA_BLOQUEO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48500010376520118)
,p_prompt=>'No Afecta Bloqueo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502363163520141)
,p_name=>'P219_ACTUALIZADO_POR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Actualizado Por'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502402493520142)
,p_name=>'P219_FECHA_ACTUALIZACION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Fecha Actualiza'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502588002520143)
,p_name=>'P219_FECHA_DESBLOQUEO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Fecha Desbloqueo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502680807520144)
,p_name=>'P219_DESBLOQUEADO_POR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(48498980268520107)
,p_prompt=>'Desbloqueado por'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48502764210520145)
,p_name=>'P219_P_COD_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48498813461520106)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51715756046409034)
,p_name=>'P219_IND_CTA_BCRIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48498813461520106)
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
 p_id=>wwv_flow_imp.id(51716243454409039)
,p_name=>'P219_IND_BLOQUEO_PAGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48498813461520106)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54419661150716915)
,p_name=>'P219_RUBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54420215680716921)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion ,cod_sector',
'		    from sectores_econ  ;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54420316296716922)
,p_name=>'P219_COD_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54420215680716921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51715178372409028)
,p_name=>'BLOQUEA_CAMPOS'
,p_event_sequence=>10
,p_condition_element=>'P219_P_COD_PROVEEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51715213278409029)
,p_event_id=>wwv_flow_imp.id(51715178372409028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P219_COD_PROVEEDOR").readOnly=true;',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51715852413409035)
,p_name=>'DA_BLOQUEA_CTA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P219_IND_CTA_BCRIA'
,p_condition_element=>'P219_IND_CTA_BCRIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51715950942409036)
,p_event_id=>wwv_flow_imp.id(51715852413409035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P219_NRO_CTA_BCO").readOnly=true;',
'document.getElementById("P219_NRO_CTA_BCO_US").readOnly=true;',
'//document.getElementById("P219_COD_PERS_BCO").readOnly=true;',
'//document.getElementById("P219_COD_PERS_BCO_US").readOnly=true; ',
'',
'$(''#P219_COD_PERS_BCO'').css(''pointer-events'',''none'');',
'$(''#P219_COD_PERS_BCO_US'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51716330175409040)
,p_name=>'DA_BLOQUEO_PAGO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P219_IND_BLOQUEO_PAGO'
,p_condition_element=>'P219_IND_BLOQUEO_PAGO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51716467792409041)
,p_event_id=>wwv_flow_imp.id(51716330175409040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'////document.getElementById("P219_BLOQUEO_PAGO_HIDDENVALUE").readOnly=true; ',
'// $(''#P219_BLOQUEO_PAGO'').prop(''disabled'',true)  ',
'$("#P219_BLOQUEO_PAGO").parent(".apex-item-single-checkbox").addClass("apex_disabled").attr(''tabindex'',''-1'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54419978593716918)
,p_name=>'da_region'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54419861790716917)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54420192463716920)
,p_event_id=>wwv_flow_imp.id(54419978593716918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54420215680716921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54420403292716923)
,p_name=>'DA_ELIMINAR_RUBRO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P219_COD_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54420587209716924)
,p_event_id=>wwv_flow_imp.id(54420403292716923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el Rubro &P219_COD_ELIMINAR. ?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54420643137716925)
,p_event_id=>wwv_flow_imp.id(54420403292716923)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  inv.cmprovee.elimina_rubro(p_cod_proveedor => :p219_cod_proveedor,',
'                             p_cod_empresa => ''1'',----:p_cod_empresa,'''',',
'                             p_cod_rubro => :P219_COD_ELIMINAR);'))
,p_attribute_02=>'P219_COD_PROVEEDOR,P219_COD_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54420797503716926)
,p_event_id=>wwv_flow_imp.id(54420403292716923)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48503297818520150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54420890637716927)
,p_name=>'da_insert_rubro'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54419745870716916)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54420962139716928)
,p_event_id=>wwv_flow_imp.id(54420890637716927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  inv.cmprovee.inserta_rubro(p_cod_proveedor => :p219_cod_proveedor,',
'                             p_cod_empresa => ''1'',--- :p_cod_empresa,',
'                             p_cod_rubro => :p219_rubro);'))
,p_attribute_02=>'P219_COD_PROVEEDOR,P219_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54421071674716929)
,p_event_id=>wwv_flow_imp.id(54420890637716927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48503297818520150)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48502831330520146)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :P219_P_COD_PROVEEDOR IS NULL THEN',
'    ----:P219_cod_empresa := :P_cod_empresa;',
'    :P219_cod_sucursal  := :P_cod_sucursal ;',
'    :P219_exento := ''S'';',
'    :P219_estado := ''A'';',
'    :P219_directo := ''S'';',
'    :P219_exterior := ''N'';',
'    :P219_IND_RETENCION:= ''N'';',
'    :P219_BLOQUEO_PAGO:=''N'';',
'',
'ELSE ',
'  inv.cmprovee.busca_proveedor(p_cod_proveedor => :P219_P_COD_PROVEEDOR,',
'                               p_cod_persona => :P219_cod_persona,',
'                               p_cod_cuenta_contable => :P219_cod_cuenta_contable,',
'                               p_cod_rubro => :P219_cod_rubro,',
'                               p_nomb_proveedor => :P219_nomb_proveedor,',
'                               p_nom_raz_soc_prov => :P219_nom_raz_soc_prov,',
'                               p_cod_condicion_compra => :P219_cod_condicion_compra,',
'                               p_cod_sucursal => :P219_cod_sucursal,',
'                               p_cod_responsable_repuesto => :P219_cod_responsable_repuesto,',
'                               p_cod_agente_sta => :P219_cod_agente_sta,',
'                               p_cod_moneda => :P219_cod_moneda,',
'                               p_ind_servicio_tecnico => :P219_ind_servicio_tecnico,',
'                               p_dias_oc => :P219_dias_oc,',
'                               p_dias_analisis => :P219_dias_analisis,',
'                               p_cod_pers_bco => :P219_cod_pers_bco,',
'                               p_cod_pers_bco_us => :P219_cod_pers_bco_us,',
'                               p_nro_cta_bco => :P219_nro_cta_bco,',
'                               p_nro_cta_bco_us => :P219_nro_cta_bco_us,',
'                               p_observacion => :P219_observacion,',
'                               p_comentario_bloqueo => :P219_comentario_bloqueo,',
'                               p_exterior => :P219_exterior,',
'                               p_estado => :P219_estado,',
'                               p_exento => :P219_exento,',
'                               p_directo => :P219_directo,',
'                               p_afecta_cta_pag => :P219_afecta_cta_pag,',
'                               p_ind_transferencia => :P219_ind_transferencia,',
'                               p_ind_retencion => :P219_ind_retencion,',
'                               p_ind_retencion_renta => :P219_ind_retencion_renta,',
'                               p_bloqueo_pago => :P219_bloqueo_pago,',
'                               p_no_afecta_bloqueo => :P219_no_afecta_bloqueo,',
'                               p_actualizado_por => :P219_actualizado_por,',
'                               p_fecha_actualizacion => :P219_fecha_actualizacion,',
'                               p_desbloqueado_por => :P219_desbloqueado_por,',
'                               p_fecha_desbloqueo => :P219_fecha_desbloqueo);',
':P219_COD_PROVEEDOR:=:P219_P_COD_PROVEEDOR; ',
'END IF;',
'',
'',
':P219_IND_CTA_BCRIA            := ''N'';--busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''CMPROVEE'',:APP_USER,''CARGA_CTA_BCRIA'' );',
':P219_IND_BLOQUEO_PAGO         :=''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54422097542716939)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_PROVEEDOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' IF :P219_P_COD_PROVEEDOR IS NOT NULL or  :P219_COD_PROVEEDOR  IS NOT NULL THEN',
' ',
' inv.cmprovee.crea_actualiza_proveedor(p_operacion => ''M'',',
'                                        p_cod_proveedor => nvl(:P219_P_COD_PROVEEDOR ,:p219_cod_proveedor),',
'                                        p_cod_persona => :p219_cod_persona,',
'                                        p_cod_cuenta_contable => :p219_cod_cuenta_contable,',
'                                        p_cod_rubro => :p219_cod_rubro,',
'                                        p_nomb_proveedor => :p219_nomb_proveedor,',
'                                        p_nom_raz_soc_prov => :p219_nom_raz_soc_prov,',
'                                        p_cod_condicion_compra => :p219_cod_condicion_compra,',
'                                        p_cod_sucursal => :p219_cod_sucursal,',
'                                        p_cod_responsable_repuesto => :p219_cod_responsable_repuesto,',
'                                        p_cod_agente_sta => :p219_cod_agente_sta,',
'                                        p_cod_moneda => :P219_COD_MONEDA,',
'                                        p_ind_servicio_tecnico => :p219_ind_servicio_tecnico,',
'                                        p_dias_oc => :p219_dias_oc,',
'                                        p_dias_analisis => :p219_dias_analisis,',
'                                        p_cod_pers_bco => :p219_cod_pers_bco,',
'                                        p_cod_pers_bco_us => :p219_cod_pers_bco_us,',
'                                        p_nro_cta_bco => :p219_nro_cta_bco,',
'                                        p_nro_cta_bco_us => :p219_nro_cta_bco_us,',
'                                        p_observacion => :p219_observacion,',
'                                        p_comentario_bloqueo => :p219_comentario_bloqueo,',
'                                        p_exterior => :p219_exterior,',
'                                        p_estado => :p219_estado,',
'                                        p_exento => :p219_exento,',
'                                        p_directo => :p219_directo,',
'                                        p_afecta_cta_pag => :p219_afecta_cta_pag,',
'                                        p_ind_transferencia => :p219_ind_transferencia,',
'                                        p_ind_retencion => :p219_ind_retencion,',
'                                        p_ind_retencion_renta => :p219_ind_retencion_renta,',
'                                        p_bloqueo_pago => :p219_bloqueo_pago,',
'                                        p_no_afecta_bloqueo => :p219_no_afecta_bloqueo,',
'                                        p_actualizado_por => :p219_actualizado_por,',
'                                        p_fecha_actualizacion => :p219_fecha_actualizacion,',
'                                        p_desbloqueado_por => :p219_desbloqueado_por,',
'                                        p_fecha_desbloqueo => :p219_fecha_desbloqueo);',
'',
' ELSE',
'    DECLARE ',
'        VCODIGO VARCHAR2(30);',
'    BEGIN',
'        select nvl(MAX(TO_NUMBER(o.cod_proveedor)),0)+1',
'        INTO VCODIGO',
'        from CM_PROVEEDORES o',
'        where o.cod_empresa=NVL(:P_COD_EMPRESA,''1'' );',
'             ',
'             ',
'             inv.cmprovee.crea_actualiza_proveedor(p_operacion => ''I'',',
'                                                    p_cod_proveedor => VCODIGO,',
'                                                    p_cod_persona => :p219_cod_persona,',
'                                                    p_cod_cuenta_contable => :p219_cod_cuenta_contable,',
'                                                    p_cod_rubro => :p219_cod_rubro,',
'                                                    p_nomb_proveedor => :p219_nomb_proveedor,',
'                                                    p_nom_raz_soc_prov => :p219_nom_raz_soc_prov,',
'                                                    p_cod_condicion_compra => :p219_cod_condicion_compra,',
'                                                    p_cod_sucursal => :p219_cod_sucursal,',
'                                                    p_cod_responsable_repuesto => :p219_cod_responsable_repuesto,',
'                                                    p_cod_agente_sta => :p219_cod_agente_sta,',
'                                                    p_cod_moneda => :p219_cod_moneda,',
'                                                    p_ind_servicio_tecnico => :p219_ind_servicio_tecnico,',
'                                                    p_dias_oc => :p219_dias_oc,',
'                                                    p_dias_analisis => :p219_dias_analisis,',
'                                                    p_cod_pers_bco => :p219_cod_pers_bco,',
'                                                    p_cod_pers_bco_us => :p219_cod_pers_bco_us,',
'                                                    p_nro_cta_bco => :p219_nro_cta_bco,',
'                                                    p_nro_cta_bco_us => :p219_nro_cta_bco_us,',
'                                                    p_observacion => :p219_observacion,',
'                                                    p_comentario_bloqueo => :p219_comentario_bloqueo,',
'                                                    p_exterior => :p219_exterior,',
'                                                    p_estado => :p219_estado,',
'                                                    p_exento => :p219_exento,',
'                                                    p_directo => :p219_directo,',
'                                                    p_afecta_cta_pag => :p219_afecta_cta_pag,',
'                                                    p_ind_transferencia => :p219_ind_transferencia,',
'                                                    p_ind_retencion => :p219_ind_retencion,',
'                                                    p_ind_retencion_renta => :p219_ind_retencion_renta,',
'                                                    p_bloqueo_pago => :p219_bloqueo_pago,',
'                                                    p_no_afecta_bloqueo => :p219_no_afecta_bloqueo,',
'                                                    p_actualizado_por => :p219_actualizado_por,',
'                                                    p_fecha_actualizacion => :p219_fecha_actualizacion,',
'                                                    p_desbloqueado_por => :p219_desbloqueado_por,',
'                                                    p_fecha_desbloqueo => :p219_fecha_desbloqueo);',
'       :p219_cod_proveedor:=VCODIGO;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            	raise_application_error(-20000, ''Error en la tabla de Proveedores ''||sqlerrm);',
'    END;',
' END IF;',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al intentar guardar el registro.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(48502906676520147)
,p_process_when=>'P219_COD_PERSONA'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp.component_end;
end;
/
