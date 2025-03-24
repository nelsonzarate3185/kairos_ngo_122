prompt --application/pages/page_00237
begin
--   Manifest
--     PAGE: 00237
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
 p_id=>237
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Promotoras'
,p_alias=>'FVPROEMP'
,p_step_title=>'Carga de Promotoras'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240918173010'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55471421743684419)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55473019881684435)
,p_plug_name=>'Carga de Promotoras'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55473704526684442)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(55473019881684435)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55473861792684443)
,p_plug_name=>'Promotoras'
,p_parent_plug_id=>wwv_flow_imp.id(55473019881684435)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id p_id,',
'    c001 COD_EMPRESA,',
'    c002 COD_EMPLEADO,',
'    c003 NOMBRE,',
'    c004 COD_CATEGORIA,',
'    c005 COD_ZONA,     ',
'    c006 FEC_ALTA,',
'    C007 COD_USUARIO,',
'    C008 RID,',
'    C009 TIPO_EMPLEADO,',
'    null editar,',
'    null eliminar ',
'from apex_collections',
'     ',
'where collection_name = ''PROMOTORAS''',
'AND nvl(c030, ''O'') <> ''B'' ',
'ORDER BY 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Promotoras'
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
 p_id=>wwv_flow_imp.id(55473925003684444)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>55473925003684444
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55474073569684445)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Promotora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55474165477684446)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55474281271684447)
,p_db_column_name=>'COD_ZONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(63171072382195925)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55474481875684449)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55474564895684450)
,p_db_column_name=>'NOMBRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58414419231106102)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P237_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58414594909106103)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P237_SEQ_ID_ELIMINAR'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58415553220106113)
,p_db_column_name=>'P_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58415668174106114)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58415792485106115)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58415812335106116)
,p_db_column_name=>'RID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58417926878106137)
,p_db_column_name=>'TIPO_EMPLEADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58402139630001734)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'584022'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_EMPLEADO:NOMBRE:TIPO_EMPLEADO:COD_CATEGORIA:COD_ZONA:EDITAR:ELIMINAR:'
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
 p_id=>wwv_flow_imp.id(58344213918629065)
,p_plug_name=>'Carga de Promotoras'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58415087736106108)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58415466597106112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58344213918629065)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CREATE'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58414889830106106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58414980742106107)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58414301072106101)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(55473019881684435)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55471503986684420)
,p_name=>'P237_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55471617481684421)
,p_name=>'P237_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55471707561684422)
,p_name=>'P237_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55471876925684423)
,p_name=>'P237_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55471927468684424)
,p_name=>'P237_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472036624684425)
,p_name=>'P237_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472159921684426)
,p_name=>'P237_DERECHOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472289677684427)
,p_name=>'P237_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472338109684428)
,p_name=>'P237_NOM_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472400912684429)
,p_name=>'P237_COD_IDIOMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472588817684430)
,p_name=>'P237_CODSISMENU'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472662618684431)
,p_name=>'P237_SEQ_ID_EDITAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472731342684432)
,p_name=>'P237_SEQ_ID_ELIMINAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472898247684433)
,p_name=>'P237_AUX_CONTROL_REPORTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55472917331684434)
,p_name=>'P237_AUX_MSJ_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(55471421743684419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55473126878684436)
,p_name=>'P237_H_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55473295366684437)
,p_name=>'P237_H_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_FVCOPROM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre, em.cod_empleado ',
'  from rh_empleados em ,personas pe ',
' where em.cod_empresa = :P_COD_EMPRESA',
'   and em.cod_persona = pe.cod_persona ',
'   and nvl(em.activo, ''S'') = ''S'' ',
'order by pe.nombre',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(55473334672684438)
,p_name=>'P237_H_NOM_EMPLEADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55473492725684439)
,p_name=>'P237_H_COD_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:A;A,B;B,C;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55473517739684440)
,p_name=>'P237_H_COD_ZONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CAPITAL;C,INTERIOR;I'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55473678807684441)
,p_name=>'P237_H_TIPO_EMPLEADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55473704526684442)
,p_prompt=>'Tipo empleado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PROMOTOR;PROMOTOR,CAPACITADOR;CAPACITADOR'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58414699501106104)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58414301072106101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58415372262106111)
,p_event_id=>wwv_flow_imp.id(58414699501106104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P237_H_COD_EMPLEADO,P237_H_TIPO_EMPLEADO,P237_H_COD_CATEGORIA,P237_H_COD_ZONA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58415135232106109)
,p_event_id=>wwv_flow_imp.id(58414699501106104)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58414980742106107)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58415284596106110)
,p_event_id=>wwv_flow_imp.id(58414699501106104)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58414889830106106)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58414782471106105)
,p_event_id=>wwv_flow_imp.id(58414699501106104)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473704526684442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58415921907106117)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P237_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417194383106129)
,p_event_id=>wwv_flow_imp.id(58415921907106117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT      ',
'    C002, --COD EMPLEADOO',
'    C009, --COD TIPO EMPLEADO',
'    C004, --COD CATEGORIA',
'    C005 --COD ZONA',
'   ',
'    into',
'   :P237_H_COD_EMPLEADO,',
'   :P237_H_TIPO_EMPLEADO,',
'   :P237_H_COD_CATEGORIA,',
'   :P237_H_COD_ZONA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PROMOTORAS''',
'    AND SEQ_ID = :P237_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P237_SEQ_ID_EDITAR'
,p_attribute_03=>'P237_H_COD_EMPLEADO,P237_H_COD_CATEGORIA,P237_H_COD_ZONA,P237_H_TIPO_EMPLEADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416026056106118)
,p_event_id=>wwv_flow_imp.id(58415921907106117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58414980742106107)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416159646106119)
,p_event_id=>wwv_flow_imp.id(58415921907106117)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58414889830106106)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416279222106120)
,p_event_id=>wwv_flow_imp.id(58415921907106117)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473704526684442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58416399511106121)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P237_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416416586106122)
,p_event_id=>wwv_flow_imp.id(58416399511106121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417726130106135)
,p_event_id=>wwv_flow_imp.id(58416399511106121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVPROEMP.pr_eliminar_miembro(:P237_SEQ_ID_ELIMINAR  ) ;',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'END;'))
,p_attribute_02=>'P237_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417804068106136)
,p_event_id=>wwv_flow_imp.id(58416399511106121)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473861792684443)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58416554668106123)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58414980742106107)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416652201106124)
,p_event_id=>wwv_flow_imp.id(58416554668106123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P237_AUX_MSJ_CONTROL := null;',
'IF :P237_H_COD_EMPLEADO IS NULL THEN',
'    :P237_AUX_MSJ_CONTROL := ''Debe ingresar el EMPLEADO.'';',
' ELSE ',
'    BEGIN',
'      FVPROEMP.pr_agregar_miembro( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                    PI_COD_EMPLEADO => :P237_H_COD_EMPLEADO,',
'                    PI_TIPO_EMPLEADO => :P237_H_TIPO_EMPLEADO,',
'                    PI_COD_CATEGORIA => :P237_H_COD_CATEGORIA,',
'                    PI_COD_ZONA => :P237_H_COD_ZONA,',
'                    PI_COD_USUARIO => :P237_COD_USUARIO );',
'',
'     EXCEPTION',
'',
'        WHEN OTHERS THEN',
'          apex_debug.error(sqlerrm);',
'    END;',
'END IF;'))
,p_attribute_02=>'P237_COD_EMPRESA,P237_H_COD_EMPLEADO,P237_H_TIPO_EMPLEADO,P237_H_COD_CATEGORIA,P237_H_COD_ZONA'
,p_attribute_03=>'P237_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416714706106125)
,p_event_id=>wwv_flow_imp.id(58416554668106123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P237_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P237_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416845840106126)
,p_event_id=>wwv_flow_imp.id(58416554668106123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473861792684443)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P237_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58416926159106127)
,p_event_id=>wwv_flow_imp.id(58416554668106123)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473704526684442)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P237_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417082268106128)
,p_event_id=>wwv_flow_imp.id(58416554668106123)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('NUEVO REGISTRO A\00D1ADIDO')
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P237_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58417211443106130)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58414889830106106)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417637533106134)
,p_event_id=>wwv_flow_imp.id(58417211443106130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVPROEMP.pr_modificar_miembro(PI_SEQ_ID_EDITAR => :P237_SEQ_ID_EDITAR,',
'            PI_COD_EMPLEADO => :P237_H_COD_EMPLEADO,',
'            PI_TIPO_EMPLEADO => :P237_H_TIPO_EMPLEADO,',
'            PI_COD_CATEGORIA => :P237_H_COD_CATEGORIA,',
'            PI_COD_ZONA => :P237_H_COD_ZONA,',
'            PI_COD_USUARIO => :P237_COD_USUARIO);      ',
'END;'))
,p_attribute_02=>'P237_SEQ_ID_EDITAR,P237_H_COD_EMPLEADO,P237_H_TIPO_EMPLEADO,P237_H_COD_CATEGORIA,P237_H_COD_ZONA,P237_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417374763106131)
,p_event_id=>wwv_flow_imp.id(58417211443106130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473861792684443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417433509106132)
,p_event_id=>wwv_flow_imp.id(58417211443106130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473704526684442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58417597997106133)
,p_event_id=>wwv_flow_imp.id(58417211443106130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO EDITADO'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58418062603106138)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58415466597106112)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58418199305106139)
,p_event_id=>wwv_flow_imp.id(58418062603106138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea continuar?')
,p_attribute_02=>'CONFIRMAR ACCION'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58418230339106140)
,p_event_id=>wwv_flow_imp.id(58418062603106138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64855676341710920)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58415087736106108)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64855708109710921)
,p_event_id=>wwv_flow_imp.id(64855676341710920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55473704526684442)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58418305015106141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'     ',
'    FVPROEMP.pr_confirmar_accion(:P237_COD_USUARIO);',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en procedimiento confirmar accion'');',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>' '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55471307384684418)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P237_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
':P237_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P237_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
':P237_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P237_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P237_COD_MODULO := NVL(:P_COD_MODULO,''FV'');',
'',
'FVPROEMP.pr_crear_collection(:P237_COD_EMPRESA);',
'',
':P237_AUX_MSJ_CONTROL := NULL;'))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_imp.component_end;
end;
/
