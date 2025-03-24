prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
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
 p_id=>202
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSPROXPE'
,p_alias=>'BSPROXPE'
,p_step_title=>'BSPROXPE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P202_ACCION'',''AGREGAR'');',
'      $s(''P202_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P202_ACCION'',''QUITAR'');',
'      $s(''P202_SEQ_ID'', cb.value,false);',
'  }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125114123'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44173428849881320)
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
 p_id=>wwv_flow_imp.id(44173948616881325)
,p_plug_name=>'PERSONAS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44174393001881329)
,p_plug_name=>'PROPIEDADES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44176026172881346)
,p_plug_name=>'REPORTE_PROPIEDADES'
,p_parent_plug_id=>wwv_flow_imp.id(44174393001881329)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,        ',
'        c001    COD_PERSONA,',
'        c002    NUM_FINCA,',
'        c003    DISTRITO,',
'        --c004  DESC_DISTRITO,',
'        c005    UBICACION,',
'        c006    NOM_TITULAR,',
'        c007    CUENTA_CTE,',
'        c008    COD_MONEDA,',
'        c009    V_DESC_MONEDA,',
'        c010    SUPERFICIE,',
'        TO_NUMBER(c011)    VAL_COMERCIAL,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c012',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as HIPOTECADO,       ',
'         ',
'        --c012    IND_HIPOTECA,',
'        TO_NUMBER(c013)    VAL_HIPOTECA,',
'        c014    HIPOTECADO_A,',
'        c021    RID,        ',
'        null Editar,',
'        null Eliminar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PROPIEDADESXPER''',
'AND nvl(c030, ''O'') <> ''B''',
'ORDER BY 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_PROPIEDADES'
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
 p_id=>wwv_flow_imp.id(44176361729881349)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>44176361729881349
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44176474223881350)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45504916026632533)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505097349632534)
,p_db_column_name=>'NUM_FINCA'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Finca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505119336632535)
,p_db_column_name=>'DISTRITO'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Distrito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505206180632536)
,p_db_column_name=>'UBICACION'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505359072632537)
,p_db_column_name=>'NOM_TITULAR'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Titular'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505433251632538)
,p_db_column_name=>'CUENTA_CTE'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Cuenta Cte'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505515144632539)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45505699346632540)
,p_db_column_name=>'SUPERFICIE'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Superficie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45506095530632544)
,p_db_column_name=>'HIPOTECADO_A'
,p_display_order=>190
,p_column_identifier=>'V'
,p_column_label=>'Hipotecado a'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45506102101632545)
,p_db_column_name=>'RID'
,p_display_order=>200
,p_column_identifier=>'W'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45506241592632546)
,p_db_column_name=>'V_DESC_MONEDA'
,p_display_order=>210
,p_column_identifier=>'X'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45502122424632505)
,p_db_column_name=>'EDITAR'
,p_display_order=>230
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P202_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45502282479632506)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>240
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P202_SEQ_ID_ELIMINAR'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45803210822056628)
,p_db_column_name=>'HIPOTECADO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Hipotecado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45804668160056642)
,p_db_column_name=>'VAL_COMERCIAL'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Val Comercial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45804769725056643)
,p_db_column_name=>'VAL_HIPOTECA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Val Hipoteca'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(45512959444633586)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'455130'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DISTRITO:NUM_FINCA:V_DESC_MONEDA:CUENTA_CTE:HIPOTECADO_A:NOM_TITULAR:SUPERFICIE:UBICACION:VAL_COMERCIAL:VAL_HIPOTECA:HIPOTECADO:EDITAR:ELIMINAR:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44175713685881343)
,p_plug_name=>'AGREGAR/EDITAR PROPIEDAD'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45504255411632526)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45502934944632513)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45503716774632521)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(44173948616881325)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45503369251632517)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_button_name=>'ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45503461936632518)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_button_name=>'ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45502458699632508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44176026172881346)
,p_button_name=>'P202_AGREGAR_PROPIEDAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Propiedad'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45842902804236282)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(44173948616881325)
,p_button_name=>'P202_BOTON_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                   ppage_id => :APP_PAGE_ID,',
'                                                papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44173533440881321)
,p_name=>'P202_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44173428849881320)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44173698773881322)
,p_name=>'P202_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44173428849881320)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44173716160881323)
,p_name=>'P202_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44173428849881320)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44173870277881324)
,p_name=>'P202_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44173428849881320)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44174059965881326)
,p_name=>'P202_PER_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44173948616881325)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44174144914881327)
,p_name=>'P202_PER_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44173948616881325)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44174262629881328)
,p_name=>'P202_PER_ES_FISICA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44173948616881325)
,p_prompt=>'T. Persona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Fisica;S,Juridica;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44174444139881330)
,p_name=>'P202_PRO_COD_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44174501815881331)
,p_name=>'P202_PRO_NUM_FINCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Finca'
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
 p_id=>wwv_flow_imp.id(44174613704881332)
,p_name=>'P202_PRO_DISTRITO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Distrito'
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
 p_id=>wwv_flow_imp.id(44174707086881333)
,p_name=>'P202_PRO_UBICACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Ubicacion'
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
 p_id=>wwv_flow_imp.id(44174854668881334)
,p_name=>'P202_PRO_NOM_TITULAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Titular'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44174976000881335)
,p_name=>'P202_PRO_CUENTA_CTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Cuenta Cte'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44175087743881336)
,p_name=>'P202_PRO_COD_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44175189891881337)
,p_name=>'P202_PRO_DESC_MONEDA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44175216316881338)
,p_name=>'P202_PRO_SUPERFICIE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Superficie'
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
 p_id=>wwv_flow_imp.id(44175327044881339)
,p_name=>'P202_PRO_VAL_COMERCIAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Valor Comercial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44175465975881340)
,p_name=>'P202_PRO_IND_HIPOTECA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44175597635881341)
,p_name=>'P202_VAL_HIPOTECA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Valor Hipoteca'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44175684665881342)
,p_name=>'P202_PRO_HIPOTECADO_A'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(44175713685881343)
,p_prompt=>'Hipotecado A'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45504389693632527)
,p_name=>'P202_AUX_CONTROL_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45504255411632526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45801493886056610)
,p_name=>'P202_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45504255411632526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45801547109056611)
,p_name=>'P202_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45504255411632526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45802637250056622)
,p_name=>'P202_AUX_MSJ_CONTROL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45504255411632526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45802851336056624)
,p_name=>'P202_ACCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45504255411632526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45802961618056625)
,p_name=>'P202_SEQ_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45504255411632526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45502724523632511)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45502458699632508)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45802792219056623)
,p_event_id=>wwv_flow_imp.id(45502724523632511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_AUX_MSJ_CONTROL, P202_PRO_NUM_FINCA, P202_PRO_DISTRITO, P202_PRO_UBICACION,  P202_PRO_NOM_TITULAR, P202_PRO_CUENTA_CTE, P202_PRO_COD_MONEDA, P202_PRO_SUPERFICIE, P202_PRO_VAL_COMERCIAL, P202_PRO_IND_HIPOTECA, P202_VAL_HIPOTECA, P202_PRO_HIPOTECA'
||'DO_A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45800639317056602)
,p_event_id=>wwv_flow_imp.id(45502724523632511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(45503461936632518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45800536554056601)
,p_event_id=>wwv_flow_imp.id(45502724523632511)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(45503369251632517)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45502812760632512)
,p_event_id=>wwv_flow_imp.id(45502724523632511)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44175713685881343)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45503219024632516)
,p_event_id=>wwv_flow_imp.id(45502724523632511)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44175713685881343)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45503081488632514)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45502934944632513)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45503161386632515)
,p_event_id=>wwv_flow_imp.id(45503081488632514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44175713685881343)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45503587659632519)
,p_name=>'DA_CAMBIA_COD_PERSONA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_PER_COD_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45503693606632520)
,p_event_id=>wwv_flow_imp.id(45503587659632519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select ES_FISICA	',
'  into :P202_PER_ES_FISICA',
'    from personas',
'    where cod_persona = :P202_PER_COD_PERSONA;',
'EXCEPTION',
'  when others then',
'    :P202_PER_ES_FISICA := NULL;',
'END;'))
,p_attribute_02=>'P202_PER_COD_PERSONA'
,p_attribute_03=>'P202_PER_ES_FISICA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45503890830632522)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45503921189632523)
,p_event_id=>wwv_flow_imp.id(45503890830632522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44174393001881329)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45504069147632524)
,p_name=>'DA_BUSCAR_PROPIEDADES'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45503716774632521)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45504402045632528)
,p_event_id=>wwv_flow_imp.id(45504069147632524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P202_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P202_AUX_CONTROL_REPORTE := ''MOSTRAR REPORTE'';',
'   ',
'END IF;'))
,p_attribute_02=>'P202_AUX_CONTROL_REPORTE,P202_PER_COD_PERSONA'
,p_attribute_03=>'P202_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45506437246632548)
,p_event_id=>wwv_flow_imp.id(45504069147632524)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>' BSPROXPE.pr_crear_collection(:P202_PER_COD_PERSONA);'
,p_attribute_02=>'P202_PER_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45504549644632529)
,p_event_id=>wwv_flow_imp.id(45504069147632524)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44176026172881346)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P202_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45504146429632525)
,p_event_id=>wwv_flow_imp.id(45504069147632524)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44174393001881329)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P202_AUX_CONTROL_REPORTE'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45506618442632550)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45503369251632517)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45802263725056618)
,p_event_id=>wwv_flow_imp.id(45506618442632550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P202_AUX_MSJ_CONTROL := null;',
'IF :P202_PRO_NUM_FINCA IS NULL THEN',
'    :P202_AUX_MSJ_CONTROL := ''Debe ingresar el NUMERO DE FINCA.'';',
'    ELSIF :P202_PRO_DISTRITO IS NULL THEN',
'    :P202_AUX_MSJ_CONTROL := ''Debe ingresar el DISTRITO.'';',
'        ELSIF :P202_PRO_UBICACION IS NULL THEN',
'        :P202_AUX_MSJ_CONTROL := ''Debe ingresar LA UBICACION.'';',
'            ELSIF :P202_PRO_NUM_FINCA IS NULL THEN',
'            :P202_AUX_MSJ_CONTROL := ''Debe ingresar el NUMERO DE FINCA.'';',
'              ELSE ',
'              BEGIN',
'                 BSPROXPE.pr_agregar_miembro_collection (',
'                        PI_COD_PERSONA => :P202_PER_COD_PERSONA,',
'                        PI_NUM_FINCA   => :P202_PRO_NUM_FINCA ,',
'                        PI_DISTRITO    => :P202_PRO_DISTRITO,',
'                        PI_UBICACION  => :P202_PRO_UBICACION,  ',
'                        PI_NOM_TITULAR   => :P202_PRO_NOM_TITULAR ,',
'                        PI_CUENTA_CTE   => :P202_PRO_CUENTA_CTE ,',
'                        PI_COD_MONEDA   => :P202_PRO_COD_MONEDA,',
'                        PI_SUPERFICIE    => :P202_PRO_SUPERFICIE,',
'                        PI_VAL_COMERCIAL  => :P202_PRO_VAL_COMERCIAL  ,',
'                        PI_IND_HIPOTECA   => :P202_PRO_IND_HIPOTECA ,',
'                        PI_VAL_HIPOTECA   => :P202_VAL_HIPOTECA ,',
'                        PI_HIPOTECADO_A   => :P202_PRO_HIPOTECADO_A    ',
'                                          ',
'                        );',
'',
'                 EXCEPTION',
'',
'                    WHEN OTHERS THEN',
'                        apex_debug.error(sqlerrm);',
'                END;',
'END IF;  '))
,p_attribute_02=>'P202_AUX_MSJ_CONTROL, P202_PER_COD_PERSONA,P202_PRO_NUM_FINCA, P202_PRO_DISTRITO, P202_PRO_UBICACION,  P202_PRO_NOM_TITULAR, P202_PRO_CUENTA_CTE, P202_PRO_COD_MONEDA, P202_PRO_SUPERFICIE, P202_PRO_VAL_COMERCIAL, P202_PRO_IND_HIPOTECA, P202_VAL_HIPOTE'
||'CA, P202_PRO_HIPOTECADO_A'
,p_attribute_03=>'P202_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45802425911056620)
,p_event_id=>wwv_flow_imp.id(45506618442632550)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P202_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P202_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45802306747056619)
,p_event_id=>wwv_flow_imp.id(45506618442632550)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44176026172881346)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P202_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45802515836056621)
,p_event_id=>wwv_flow_imp.id(45506618442632550)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44175713685881343)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P202_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45801018489056606)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45503461936632518)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803365108056629)
,p_event_id=>wwv_flow_imp.id(45801018489056606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' BSPROXPE.pr_modificar_miembro( :P202_SEQ_ID_EDITAR,',
'                            :P202_PRO_NUM_FINCA,',
'                            :P202_PRO_DISTRITO,',
'                            :P202_PRO_UBICACION,',
'                            :P202_PRO_NOM_TITULAR,',
'                            :P202_PRO_CUENTA_CTE,',
'                            :P202_PRO_COD_MONEDA,',
'                            :P202_PRO_SUPERFICIE,',
'                            :P202_PRO_VAL_COMERCIAL,',
'                            :P202_VAL_HIPOTECA,',
'                            :P202_PRO_HIPOTECADO_A',
'                             ',
'         );',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P202_PRO_NUM_FINCA, P202_PRO_DISTRITO, P202_PRO_UBICACION,  P202_PRO_NOM_TITULAR, P202_PRO_CUENTA_CTE, P202_PRO_COD_MONEDA, P202_PRO_SUPERFICIE, P202_PRO_VAL_COMERCIAL, P202_VAL_HIPOTECA, P202_PRO_HIPOTECADO_A'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803562639056631)
,p_event_id=>wwv_flow_imp.id(45801018489056606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44176026172881346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803661449056632)
,p_event_id=>wwv_flow_imp.id(45801018489056606)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44175713685881343)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803403703056630)
,p_event_id=>wwv_flow_imp.id(45801018489056606)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO MODIFICADO CORRECTAMENTE'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45801643497056612)
,p_name=>'DA_ABRIR_REGION_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803795774056633)
,p_event_id=>wwv_flow_imp.id(45801643497056612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT      ',
'    C002, --NUM_FINCA,',
'    C003, --DISTRITO,                 ',
'    C005, --UBICACION,',
'    C006, --NOM_TITULAR,',
'    C007, --CUENTA_CTE,',
'    C008, --COD_MONEDA,',
'    C010, --SUPERFICIE,',
'    C011, --VAL_COMERCIAL,',
'    C013, --VAL_HIPOTECA,',
'    C014 --HIPOTECADO_A,',
'   ',
'    into',
'    :P202_PRO_NUM_FINCA,',
'    :P202_PRO_DISTRITO,',
'    :P202_PRO_UBICACION,',
'    :P202_PRO_NOM_TITULAR,',
'    :P202_PRO_CUENTA_CTE,',
'    :P202_PRO_COD_MONEDA,',
'    :P202_PRO_SUPERFICIE,',
'    :P202_PRO_VAL_COMERCIAL,',
'    :P202_VAL_HIPOTECA,',
'    :P202_PRO_HIPOTECADO_A',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PROPIEDADESXPER''',
'    AND SEQ_ID = :P202_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P202_SEQ_ID_EDITAR'
,p_attribute_03=>'P202_PRO_NUM_FINCA, P202_PRO_DISTRITO, P202_PRO_UBICACION,  P202_PRO_NOM_TITULAR, P202_PRO_CUENTA_CTE, P202_PRO_COD_MONEDA, P202_PRO_SUPERFICIE, P202_PRO_VAL_COMERCIAL, P202_VAL_HIPOTECA, P202_PRO_HIPOTECADO_A'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45801838459056614)
,p_event_id=>wwv_flow_imp.id(45801643497056612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(45503369251632517)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45801928042056615)
,p_event_id=>wwv_flow_imp.id(45801643497056612)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(45503461936632518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45801772354056613)
,p_event_id=>wwv_flow_imp.id(45801643497056612)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44175713685881343)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45803087028056626)
,p_name=>'DA_CHECK'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803160937056627)
,p_event_id=>wwv_flow_imp.id(45803087028056626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'BSPROXPE.PR_CHECK(P_SEQ_ID => :P202_SEQ_ID,',
'                  P_ACCION => :P202_ACCION,',
'                  P_COLECCION => ''PROPIEDADESXPER'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P202_SEQ_ID,P202_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45803812111056634)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45803999329056635)
,p_event_id=>wwv_flow_imp.id(45803812111056634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45804029443056636)
,p_event_id=>wwv_flow_imp.id(45803812111056634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPROXPE.pr_borrar_miembro_collection(:P202_SEQ_ID_ELIMINAR',
'                                   ',
'    ) ;',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'END;'))
,p_attribute_02=>'P202_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45804178267056637)
,p_event_id=>wwv_flow_imp.id(45803812111056634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44176026172881346)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45804289094056638)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45842902804236282)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45804357554056639)
,p_event_id=>wwv_flow_imp.id(45804289094056638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para confirmar'
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45804419103056640)
,p_event_id=>wwv_flow_imp.id(45804289094056638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45804598772056641)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BSPROXPE.pr_confirmar_accion(:P202_PER_COD_PERSONA);',
'',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45506379742632547)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(45502934944632513)
,p_process_when=>'P202_COD_EMPRESA'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1000'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44173387763881319)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P202_COD_USUARIO := NVL(:P_COD_USUARIO, USER);',
':P202_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P202_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P202_COD_MODULO := NVL(:P_COD_MODULO, ''BS'');',
':P202_AUX_CONTROL_REPORTE := NULL;',
'--:P202_PER_COD_PERSONA := ''3271'';',
' --CASA CENTURION ELECTROD. DE GILBERTO RIVAS SANCHEZ ( 3271 ) es fisica',
'--15326 COOP. BINACIONAL DE SERVICIOS CABAL PARAGUAY LTDA.',
'BEGIN',
' select ES_FISICA	',
' into :P202_PER_ES_FISICA',
'   from personas',
'   where cod_persona = :P202_PER_COD_PERSONA;',
'EXCEPTION when others then',
' :P202_PER_ES_FISICA := NULL;',
' END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
