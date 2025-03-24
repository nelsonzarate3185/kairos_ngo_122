prompt --application/pages/page_00227
begin
--   Manifest
--     PAGE: 00227
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
 p_id=>227
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVPAVECM'
,p_alias=>'FVPAVECM'
,p_step_title=>'FVPAVECM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906152611'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51158844655134720)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51159610692134728)
,p_plug_name=>'COMISIONES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'        seq_id  SEQ_ID,                                  ',
'        c001    COD_VENDEDOR,',
'        c002    NOM_VENDEDOR, ',
'        c003    COD_DIVISION, ',
'        c004    MONTO_MIN,',
'        c005    PORC_COM,',
'        c006    MONTO_PLUS,',
'        c007    PORC_COM_NM,                                     ',
'        c008    PORC_DTO_MIN,',
'        c009    PORC_DTO_MAX,',
'        c010    MONTO_MAX,',
'        c011    COD_CLIENTE,',
'        c012    COD_LISTA_PRECIO,',
'        NULL    EDITAR,',
'        NULL    ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COMISIONES''',
'AND nvl(c020, ''O'') <> ''B''',
'ORDER BY SEQ_ID asc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COMISIONES'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.estilo {',
'  height: 20em;',
'  line-height: 1em;',
'  overflow-x: hidden;',
'  overflow-y: scroll;',
'  width: 100%;',
'}',
'</style>',
'',
'<div class="container-fluid row">',
'  <div id="reporte" name="reporte" class="estilo">'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(51159797710134729)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>51159797710134729
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51159818402134730)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51159903145134731)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160098830134732)
,p_db_column_name=>'MONTO_MIN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Monto Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160180745134733)
,p_db_column_name=>'PORC_COM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Porc Com'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160267819134734)
,p_db_column_name=>'MONTO_PLUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Monto Plus'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160326680134735)
,p_db_column_name=>'PORC_COM_NM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Porc Com Nm'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160479608134736)
,p_db_column_name=>'PORC_DTO_MIN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Porc Dto Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160569327134737)
,p_db_column_name=>'PORC_DTO_MAX'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Porc Dto Max'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160698943134738)
,p_db_column_name=>'MONTO_MAX'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto Max'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160780079134739)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6220104513588210)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51160805290134740)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51161162052134743)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P227_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51161253258134744)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P227_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(51161524288134747)
,p_db_column_name=>'NOM_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nom Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51161829431134750)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51574652658308292)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'515747'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_VENDEDOR:NOM_VENDEDOR:COD_DIVISION:MONTO_MIN:PORC_COM:MONTO_PLUS:PORC_COM_NM:PORC_DTO_MIN:PORC_DTO_MAX:MONTO_MAX:COD_CLIENTE:COD_LISTA_PRECIO:EDITAR:ELIMINAR'
,p_sort_column_1=>'COD_VENDEDOR'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51605713147681602)
,p_plug_name=>'CREAR/EDITAR VENDEDOR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51607124571681616)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_button_name=>'P227_BOTON_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51607232269681617)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_button_name=>'P227_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51607307244681618)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_button_name=>'P227_BOTON_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51605687598681601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51159610692134728)
,p_button_name=>'P227_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
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
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51740192263843903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51159610692134728)
,p_button_name=>'P227_BOTON_GUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51158993265134721)
,p_name=>'P227_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51159051460134722)
,p_name=>'P227_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51159160579134723)
,p_name=>'P227_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51161032766134742)
,p_name=>'P227_COD_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51161640544134748)
,p_name=>'P227_SEQ_ID_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51161712217134749)
,p_name=>'P227_SEQ_ID_ELIMINAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51605881025681603)
,p_name=>'P227_COD_VENDEDOR_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.cod_vendedor || '' - '' || nvl(v.descripcion, p.nombre ) || '' - '' || v.tit_comision D, ',
'       v.cod_vendedor R  ',
'FROM fv_vendedores v, personas p ',
'WHERE v.cod_empresa = :P_COD_EMPRESA',
'AND v.cod_persona = p.cod_persona;'))
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
 p_id=>wwv_flow_imp.id(51605933786681604)
,p_name=>'P227_COD_DIVISION_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ELECTRODOMESTICOS;ELECTRO,GASTRONOMIA;GASTRO,INSTALACIONES;INSTAL,CLIMA-RESID;CLIMAR,OTROS;0,CLIMA-COMERC;CLIMAC,VRF;VRF,OTRAS MARCAS;OM,REPUESTOS;REP'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51606264703681607)
,p_name=>'P227_MONTO_MIN_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Monto Min'
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
 p_id=>wwv_flow_imp.id(51606384592681608)
,p_name=>'P227_PORC_DTO_MIN_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Porc. Dto. Min.'
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
 p_id=>wwv_flow_imp.id(51606419966681609)
,p_name=>'P227_MONTO_PLUS_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Monto Plus'
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
 p_id=>wwv_flow_imp.id(51606542384681610)
,p_name=>'P227_MONTO_MAX_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>unistr('Monto M\00E1x.')
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
 p_id=>wwv_flow_imp.id(51606633380681611)
,p_name=>'P227_PORC_COM_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Porc. Com'
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
 p_id=>wwv_flow_imp.id(51606797735681612)
,p_name=>'P227_PORC_COM_NM_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Porc. Com. Nm'
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
 p_id=>wwv_flow_imp.id(51606840648681613)
,p_name=>'P227_PORC_DTO_MAX_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>unistr('Porc. Dto. M\00E1x.')
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
 p_id=>wwv_flow_imp.id(51606902490681614)
,p_name=>'P227_COD_CLIENTE_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(51607051211681615)
,p_name=>'P227_COD_LISTA_PRECIO_CR_ED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(51605713147681602)
,p_prompt=>'Lista de precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_LISTA_PRECIO || '' - '' || DESCRIPCION D, COD_LISTA_PRECIO R',
'FROM VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND ESTADO=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(51608312369681628)
,p_name=>'P227_INDICADOR_ALERT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51158844655134720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51606013861681605)
,p_name=>'DA_AGREGAR_VENDEDOR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51605687598681601)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608045114681625)
,p_event_id=>wwv_flow_imp.id(51606013861681605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P227_COD_VENDEDOR_CR_ED,P227_COD_DIVISION_CR_ED,P227_MONTO_MIN_CR_ED,P227_PORC_COM_CR_ED,P227_MONTO_PLUS_CR_ED,P227_PORC_COM_NM_CR_ED,P227_PORC_DTO_MIN_CR_ED,P227_PORC_DTO_MAX_CR_ED,P227_MONTO_MAX_CR_ED,P227_COD_CLIENTE_CR_ED,P227_COD_LISTA_PRECIO_CR'
||'_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608143927681626)
,p_event_id=>wwv_flow_imp.id(51606013861681605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51607232269681617)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608208310681627)
,p_event_id=>wwv_flow_imp.id(51606013861681605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51607124571681616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51606154223681606)
,p_event_id=>wwv_flow_imp.id(51606013861681605)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51605713147681602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51607479978681619)
,p_name=>'DA_CERRAR_CR_ED'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51607307244681618)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51607501819681620)
,p_event_id=>wwv_flow_imp.id(51607479978681619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51605713147681602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51607736459681622)
,p_name=>'DA_OCULTAR_BOTON_CR_ED'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51607867558681623)
,p_event_id=>wwv_flow_imp.id(51607736459681622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51607124571681616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51607999629681624)
,p_event_id=>wwv_flow_imp.id(51607736459681622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51607232269681617)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51608422869681629)
,p_name=>'DA_AGREGAR_MIEM_COL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51607124571681616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608749130681632)
,p_event_id=>wwv_flow_imp.id(51608422869681629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P227_COD_VENDEDOR_CR_ED IS NULL THEN',
'        :P227_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P227_INDICADOR_ALERT := ''0'';',
'        FVPAVECM.pr_agregar_miem_col ( :P_COD_EMPRESA,',
'                                       :P227_COD_VENDEDOR_CR_ED,',
'                                       :P227_COD_DIVISION_CR_ED,',
'                                       :P227_MONTO_MIN_CR_ED,',
'                                       :P227_PORC_COM_CR_ED,',
'                                       :P227_MONTO_PLUS_CR_ED,',
'                                       :P227_PORC_COM_NM_CR_ED,',
'                                       :P227_PORC_DTO_MIN_CR_ED,',
'                                       :P227_PORC_DTO_MAX_CR_ED,',
'                                       :P227_MONTO_MAX_CR_ED,',
'                                       :P227_COD_CLIENTE_CR_ED,',
'                                       :P227_COD_LISTA_PRECIO_CR_ED);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P227_COD_VENDEDOR_CR_ED,P227_COD_VENDEDOR_CR_ED,P227_COD_DIVISION_CR_ED,P227_MONTO_MIN_CR_ED,P227_PORC_COM_CR_ED,P227_MONTO_PLUS_CR_ED,P227_PORC_COM_NM_CR_ED,P227_PORC_DTO_MIN_CR_ED,P227_PORC_DTO_MAX_CR_ED,P227_MONTO_MAX_CR_ED,P227_COD_'
||'CLIENTE_CR_ED,P227_COD_LISTA_PRECIO_CR_ED'
,p_attribute_03=>'P227_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608851456681633)
,p_event_id=>wwv_flow_imp.id(51608422869681629)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los datos obligatorios esten completos.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P227_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608541480681630)
,p_event_id=>wwv_flow_imp.id(51608422869681629)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51605713147681602)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P227_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51608633358681631)
,p_event_id=>wwv_flow_imp.id(51608422869681629)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51159610692134728)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P227_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51608928672681634)
,p_name=>'DA_ELIMINAR_MIEM_COL'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P227_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51609072825681635)
,p_event_id=>wwv_flow_imp.id(51608928672681634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea borrar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51609175983681636)
,p_event_id=>wwv_flow_imp.id(51608928672681634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVPAVECM.pr_borrar_miem_col(:P227_SEQ_ID_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P227_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51609223394681637)
,p_event_id=>wwv_flow_imp.id(51608928672681634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51159610692134728)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51609525638681640)
,p_name=>'DA_EDITAR_MIEM_COL'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P227_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51609629521681641)
,p_event_id=>wwv_flow_imp.id(51609525638681640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51607232269681617)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51609747566681642)
,p_event_id=>wwv_flow_imp.id(51609525638681640)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51607124571681616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51609902965681644)
,p_event_id=>wwv_flow_imp.id(51609525638681640)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT                                       ',
'        c001    COD_VENDEDOR,',
'        c003    COD_DIVISION, ',
'        c004    MONTO_MIN,',
'        c005    PORC_COM,',
'        c006    MONTO_PLUS,',
'        c007    PORC_COM_NM,                                     ',
'        c008    PORC_DTO_MIN,',
'        c009    PORC_DTO_MAX,',
'        c010    MONTO_MAX,',
'        c011    COD_CLIENTE,',
'        c012    COD_LISTA_PRECIO',
'',
'    INTO :P227_COD_VENDEDOR_CR_ED,',
'         :P227_COD_DIVISION_CR_ED,',
'         :P227_MONTO_MIN_CR_ED,',
'         :P227_PORC_COM_CR_ED,',
'         :P227_MONTO_PLUS_CR_ED,',
'         :P227_PORC_COM_NM_CR_ED,',
'         :P227_PORC_DTO_MIN_CR_ED,',
'         :P227_PORC_DTO_MAX_CR_ED,',
'         :P227_MONTO_MAX_CR_ED,',
'         :P227_COD_CLIENTE_CR_ED,',
'         :P227_COD_LISTA_PRECIO_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMISIONES''',
'    AND SEQ_ID = :P227_SEQ_ID_EDITAR;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P227_SEQ_ID_EDITAR'
,p_attribute_03=>'P227_COD_VENDEDOR_CR_ED,P227_COD_DIVISION_CR_ED,P227_MONTO_MIN_CR_ED,P227_PORC_COM_CR_ED,P227_MONTO_PLUS_CR_ED,P227_PORC_COM_NM_CR_ED,P227_PORC_DTO_MIN_CR_ED,P227_PORC_DTO_MAX_CR_ED,P227_MONTO_MAX_CR_ED,P227_COD_CLIENTE_CR_ED,P227_COD_LISTA_PRECIO_CR'
||'_ED'
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
 p_id=>wwv_flow_imp.id(51609894341681643)
,p_event_id=>wwv_flow_imp.id(51609525638681640)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51605713147681602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51610048469681645)
,p_name=>'DA_EDITAR_MIEM'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51607232269681617)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51610223081681647)
,p_event_id=>wwv_flow_imp.id(51610048469681645)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P227_COD_VENDEDOR_CR_ED IS NULL THEN',
'        :P227_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P227_INDICADOR_ALERT := ''0'';',
'        FVPAVECM.pr_modificar_miem_col ( :P_COD_EMPRESA,',
'                                        :P227_SEQ_ID_EDITAR,',
'                                        :P227_COD_VENDEDOR_CR_ED,',
'                                        :P227_COD_DIVISION_CR_ED,',
'                                        :P227_MONTO_MIN_CR_ED,',
'                                        :P227_PORC_COM_CR_ED,',
'                                        :P227_MONTO_PLUS_CR_ED,',
'                                        :P227_PORC_COM_NM_CR_ED,',
'                                        :P227_PORC_DTO_MIN_CR_ED,',
'                                        :P227_PORC_DTO_MAX_CR_ED,',
'                                        :P227_MONTO_MAX_CR_ED,',
'                                        :P227_COD_CLIENTE_CR_ED,',
'                                        :P227_COD_LISTA_PRECIO_CR_ED);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P227_SEQ_ID_EDITAR,P227_COD_VENDEDOR_CR_ED,P227_COD_VENDEDOR_CR_ED,P227_COD_DIVISION_CR_ED,P227_MONTO_MIN_CR_ED,P227_PORC_COM_CR_ED,P227_MONTO_PLUS_CR_ED,P227_PORC_COM_NM_CR_ED,P227_PORC_DTO_MIN_CR_ED,P227_PORC_DTO_MAX_CR_ED,P227_MONTO_'
||'MAX_CR_ED,P227_COD_CLIENTE_CR_ED,P227_COD_LISTA_PRECIO_CR_ED'
,p_attribute_03=>'P227_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51610330323681648)
,p_event_id=>wwv_flow_imp.id(51610048469681645)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los datos obligatorios esten completos.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P227_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51610453143681649)
,p_event_id=>wwv_flow_imp.id(51610048469681645)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51605713147681602)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P227_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51610598330681650)
,p_event_id=>wwv_flow_imp.id(51610048469681645)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51159610692134728)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P227_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51159282736134724)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P227_COD_USUARIO := :P_COD_USUARIO;',
'    :P227_COD_EMPRESA := :P_COD_EMPRESA;',
'    :P227_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    :P227_INDICADOR_ALERT := ''0'';',
'',
'',
'',
'    FVPAVECM.pr_crear_col_comisiones(:P_COD_EMPRESA);',
'',
'',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51740218992843904)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_CAMBIOS_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVPAVECM.pr_confirmar_accion;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ups! Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\00A1Los cambios se guardaron exitosamente!')
);
wwv_flow_imp.component_end;
end;
/
