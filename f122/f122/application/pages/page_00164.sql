prompt --application/pages/page_00164
begin
--   Manifest
--     PAGE: 00164
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
 p_id=>164
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCALIFC'
,p_alias=>'CCCALIFC'
,p_step_title=>'CCCALIFC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221129083013'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30050456527197232)
,p_plug_name=>'CCCALIFC'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30050515542197233)
,p_plug_name=>'CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(30050456527197232)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30494886409384136)
,p_plug_name=>unistr('CLASIFICACI\00D3N CLIENTE')
,p_parent_plug_id=>wwv_flow_imp.id(30050515542197233)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30494717537384135)
,p_plug_name=>'Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(30494886409384136)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30495179650384139)
,p_plug_name=>'BALANCE'
,p_parent_plug_id=>wwv_flow_imp.id(30494886409384136)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30495858984384146)
,p_plug_name=>'NECESIDAD Y LIMITE FINANCIERO'
,p_parent_plug_id=>wwv_flow_imp.id(30494886409384136)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31029704553731013)
,p_plug_name=>'LIMITE CREDITO FINANCIERO'
,p_parent_plug_id=>wwv_flow_imp.id(30494886409384136)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31031354767731029)
,p_plug_name=>'CATEGORIA CLIENTE'
,p_parent_plug_id=>wwv_flow_imp.id(30494886409384136)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31031518194731031)
,p_plug_name=>'Detalles_Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(31031354767731029)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31032791073731043)
,p_plug_name=>'Resumen_Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(31031354767731029)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32206864763653649)
,p_plug_name=>'INFORMACION_FECHAS_EN_CLIENTE'
,p_parent_plug_id=>wwv_flow_imp.id(30494886409384136)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33476089222764215)
,p_plug_name=>'VARIABLES_AUX_EN_CLIENTE'
,p_parent_plug_id=>wwv_flow_imp.id(30050515542197233)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30050658442197234)
,p_plug_name=>'CALIFICACION'
,p_parent_plug_id=>wwv_flow_imp.id(30050456527197232)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31226498244191902)
,p_plug_name=>'CALIFICACION'
,p_parent_plug_id=>wwv_flow_imp.id(30050658442197234)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT',
'            seq_id p_id,',
'            c001  COD_AGRUPACION,',
'            c002  COD_DOCUMENTO,',
'            c003  DESCRIPCION,',
'            to_number(c004)  VALOR,',
'            to_number(c005)  PONDERACION,',
'            c006  OBSERVACION,',
'            round(c004 * c005/100,2) TOTAL,          ',
'            NULL  DETALLES,',
'            NULL  EDITAR,',
'            NULL  ELIMINAR',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CALIF_COMP''',
'    AND nvl(c020, ''O'') <> ''B'';;                                       ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CALIFICACION'
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
 p_id=>wwv_flow_imp.id(31229655679191934)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>31229655679191934
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31229725298191935)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31229831313191936)
,p_db_column_name=>'COD_AGRUPACION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Agrupacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31229931699191937)
,p_db_column_name=>'COD_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Doc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31230202721191940)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31230326366191941)
,p_db_column_name=>'DETALLES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P164_SEQ_ID_DETALLES'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31230401525191942)
,p_db_column_name=>'EDITAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P164_SEQ_ID_EDITAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(31230542384191943)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P164_SEQ_ID_ELIMINAR'',#P_ID#);'
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32202235702653603)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32206681894653647)
,p_db_column_name=>'VALOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Valor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32206766187653648)
,p_db_column_name=>'PONDERACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ponderacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35157563047580229)
,p_db_column_name=>'TOTAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31875955829349383)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318760'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_AGRUPACION:COD_DOCUMENTO:DESCRIPCION:PONDERACION:VALOR:OBSERVACION:APXWS_CC_001:DETALLES:EDITAR:ELIMINAR'
,p_sum_columns_on_break=>'VALOR:TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31226535308191903)
,p_plug_name=>'INFORMACION_FECHAS'
,p_parent_plug_id=>wwv_flow_imp.id(30050658442197234)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31228572926191923)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(30050658442197234)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31231151619191949)
,p_plug_name=>'AGREGAR/MODIFICAR'
,p_parent_plug_id=>wwv_flow_imp.id(30050658442197234)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31227474992191912)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(31226535308191903)
,p_button_name=>'P164_BOTON_POBLAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Poblar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31227531687191913)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(31226535308191903)
,p_button_name=>'P164_BOTON_CALIFICAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Calificar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31032556969731041)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_button_name=>'P164_BOTON_INFORME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Informe'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32203163952653612)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_button_name=>'P164_BOTON_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32203831826653619)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_button_name=>'P164_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33475353261764208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30050456527197232)
,p_button_name=>'P164_BOTON_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(37916322582921602)
,p_branch_name=>'BR_LLAMAR_180'
,p_branch_action=>'f?p=&APP_ID.:180:&SESSION.::&DEBUG.::P180_COD_CLIENTE:&P164_COD_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31032556969731041)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30494996435384137)
,p_name=>'P164_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30494717537384135)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CLIENTE||'' - ''||NOMBRE D, ',
'	   COD_CLIENTE R',
'  FROM CC_CLIENTES, ',
'       PERSONAS ',
' WHERE CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA ',
' ORDER BY NOMBRE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495010968384138)
,p_name=>'P164_FECHA_ELABORACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30494717537384135)
,p_prompt=>'Fecha Elaboracion'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(30495265124384140)
,p_name=>'P164_ACTIVO_TOTALES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495341016384141)
,p_name=>'P164_INGRESOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495487536384142)
,p_name=>'P164_PASIVO_TOTALES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495599546384143)
,p_name=>'P164_EGRESOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495660715384144)
,p_name=>'P164_PATRIMONIO_NETO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495768276384145)
,p_name=>'P164_SALDOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30495905979384147)
,p_name=>'P164_TEXTO_COMPRAS_HASTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_prompt=>'Compras hasta la fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30496003939384148)
,p_name=>'P164_DIAS_CREDITO_GS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
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
 p_id=>wwv_flow_imp.id(30496158352384149)
,p_name=>'P164_TEXT_DIA_CREDITO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_prompt=>'Dias de Credito a ser Otorgado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30496283505384150)
,p_name=>'P164_ROTACION_GS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30806313499914207)
,p_name=>'P164_ACTUALIZADO_POR_CR_EDI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
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
 p_id=>wwv_flow_imp.id(30806461583914208)
,p_name=>'P164_FEC_ACTUALIZACION_CR_EDI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Fecha Actualizacion'
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
 p_id=>wwv_flow_imp.id(31028558811731001)
,p_name=>'P164_COMPRAS_GS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31028628482731002)
,p_name=>'P164_TEXTO_ROTACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_prompt=>'Rotacion de Cuenta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31028751367731003)
,p_name=>'P164_NECESIDAD_CREDITO_GS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31028890904731004)
,p_name=>'P164_TEXTO_NECESIDAD_CRED'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_prompt=>'Necesidad de Credito'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31028954630731005)
,p_name=>'P164_COMPRAS_US'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31029019234731006)
,p_name=>'P164_NECESIDAD_CREDITO_US'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31029344242731009)
,p_name=>'P164_TEXTO_BLANK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31029471765731010)
,p_name=>'P164_TEXTO_COMPRAS_GS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_prompt=>'Guaranies'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31029522313731011)
,p_name=>'P164_TEXTO_COMPRAS_US'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_prompt=>'Dolares'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31029814064731014)
,p_name=>'P164_BLANK_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31029976143731015)
,p_name=>'P164_TEXTO_GUARAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_prompt=>'Guaranies'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030039138731016)
,p_name=>'P164_TEXTO_DOLAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_prompt=>'Dolares'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030115540731017)
,p_name=>'P164_TEXTO_PROPUESTA_COM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_prompt=>'Propuesta Comercial'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030283274731018)
,p_name=>'P164_PROPUESTA_GS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030309543731019)
,p_name=>'P164_PROPUESTA_US'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31030487166731020)
,p_name=>'P164_TEXTO_INGRESO_EST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_prompt=>'Ingreso Estimado los 6 ultimos meses'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030540833731021)
,p_name=>'P164_INGRESO_ESTIMADO_GS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030604973731022)
,p_name=>'P164_TEXTO_GARANTIA_REAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_prompt=>'Garantia Real'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(31030723957731023)
,p_name=>'P164_GARANTIA_GS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030871141731024)
,p_name=>'P164_TEXTO_CODEU'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_prompt=>'Codeudoria'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31030900494731025)
,p_name=>'P164_CODEUDORIA_GS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31031020199731026)
,p_name=>'P164_CODEUDORIA_US'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31031100177731027)
,p_name=>'P164_INGRESO_ESTIMADO_US'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31031262140731028)
,p_name=>'P164_GARANTIA_US'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31031464955731030)
,p_name=>'P164_CATEGORIA_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31031354767731029)
,p_prompt=>'Categoria'
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
 p_id=>wwv_flow_imp.id(31031624605731032)
,p_name=>'P164_BLANK_3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31031736758731033)
,p_name=>'P164_TEXTO_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_prompt=>'Guaranies'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31031886094731034)
,p_name=>'P164_TEXTO_US'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_prompt=>'Dolares'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31031978083731035)
,p_name=>'P164_TEXTO_LINEA_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_prompt=>'Linea Financiera segun Ingresos'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31032032540731036)
,p_name=>'P164_LINEA_FINANCIERA_GS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31032178440731037)
,p_name=>'P164_LINEA_FINANCIERA_US'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31032265970731038)
,p_name=>'P164_TEXTO_LINEA_PATRI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_prompt=>'Linea segun Patrimonio Neto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31032307886731039)
,p_name=>'P164_LINEA_PATRIMONIO_GS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31032418022731040)
,p_name=>'P164_LINEA_PATRIMONIO_US'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31031518194731031)
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(31032814154731044)
,p_name=>'P164_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31032791073731043)
,p_prompt=>'Resumen Cliente'
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
 p_id=>wwv_flow_imp.id(31032921299731045)
,p_name=>'P164_OBSERVACION_REFERENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31032791073731043)
,p_prompt=>'Referencias e Informconf'
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
 p_id=>wwv_flow_imp.id(31227091238191908)
,p_name=>'P164_ALTA_POR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31226535308191903)
,p_prompt=>'Alta Por'
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
 p_id=>wwv_flow_imp.id(31227101269191909)
,p_name=>'P164_FEC_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31226535308191903)
,p_prompt=>'Fec Alta'
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
 p_id=>wwv_flow_imp.id(31227221508191910)
,p_name=>'P164_ACTUALIZADO_POR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31226535308191903)
,p_prompt=>'Actualizado Por'
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
 p_id=>wwv_flow_imp.id(31227390261191911)
,p_name=>'P164_FEC_ACTUALIZACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31226535308191903)
,p_prompt=>'Fecha Actualizacion'
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
 p_id=>wwv_flow_imp.id(31228799479191925)
,p_name=>'P164_SEQ_ID_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31228572926191923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31228831965191926)
,p_name=>'P164_SEQ_ID_DETALLES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31228572926191923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31228930043191927)
,p_name=>'P164_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31228572926191923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32202343952653604)
,p_name=>'P164_COD_AGRUPACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Cod Agrupacion'
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
 p_id=>wwv_flow_imp.id(32202454415653605)
,p_name=>'P164_COD_DOCUMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Cod Doc'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_DOCUMENTO || '' - '' || DESCRIPCION D, COD_DOCUMENTO R',
'FROM CC_DOCUMENTOS_CALIFICACION',
'WHERE COD_AGRUPACION = :P164_COD_AGRUPACION;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P164_COD_AGRUPACION'
,p_ajax_items_to_submit=>'P164_COD_AGRUPACION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32202536035653606)
,p_name=>'P164_VALOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Valor'
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
 p_id=>wwv_flow_imp.id(32202746869653608)
,p_name=>'P164_PONDERACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Ponderacion'
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
 p_id=>wwv_flow_imp.id(32202832592653609)
,p_name=>'P164_OBSERVACION_CREAR_EDITAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(32202986914653610)
,p_name=>'P164_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31231151619191949)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(32206957715653650)
,p_name=>'P164_ALTA_POR_EN_CLIE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32206864763653649)
,p_prompt=>'Alta Por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33474676595764201)
,p_name=>'P164_FEC_ALTA_EN_CLIE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32206864763653649)
,p_prompt=>'Fec Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33474716821764202)
,p_name=>'P164_ACTUALIZADO_POR_EN_CLIE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(32206864763653649)
,p_prompt=>'Actualizado Por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33474883180764203)
,p_name=>'P164_FEC_ACTUALIZACION_EN_CLIE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(32206864763653649)
,p_prompt=>'Fecha Actualizacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33475050305764205)
,p_name=>'P164_OBSERVACION_ANALISIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31032791073731043)
,p_prompt=>'Referencias e Informconf'
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
 p_id=>wwv_flow_imp.id(33476172517764216)
,p_name=>'P164_SEQ_ID_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33476089222764215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35157651822580230)
,p_name=>'P164_TOT_TOTAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31228572926191923)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  SUM(n001) ',
'    INTO :P164_TOT_TOTAL',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CALIF_COMP'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39146888136800011)
,p_name=>'P164_ALERT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31228572926191923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39382743132974334)
,p_name=>'P164_ACTIVO_TOTALES_MOSTRAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_prompt=>'Activos Totales'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(39382889194974335)
,p_name=>'P164_INGRESOS_MOSTRAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_prompt=>'Ingresos'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(39382998390974336)
,p_name=>'P164_PASIVO_TOTALES_MOSTRAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_prompt=>'Pasivos Totales'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(39383088057974337)
,p_name=>'P164_EGRESOS_MOSTRAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_prompt=>'Egresos'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(39383106745974338)
,p_name=>'P164_PATRIMONIO_NETO_MOSTRAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_prompt=>'Patrimonio Neto'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(39383269580974339)
,p_name=>'P164_SALDOS_MOSTRAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(30495179650384139)
,p_prompt=>'Saldo'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(42372819037157810)
,p_name=>'P164_COMPRAS_GS_MOSTRAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42372999717157811)
,p_name=>'P164_NECESIDAD_CRED_GS_MOSTRAR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(30495858984384146)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42373608823157818)
,p_name=>'P164_PROPUESTA_GS_MOSTRAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
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
 p_id=>wwv_flow_imp.id(42373703619157819)
,p_name=>'P164_INGRESO_ESTIM_GS_MOSTRAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
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
 p_id=>wwv_flow_imp.id(42373835570157820)
,p_name=>'P164_GARANTIA_GS_MOSTRAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
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
 p_id=>wwv_flow_imp.id(42373997477157821)
,p_name=>'P164_CODEUDORIA_GS_MOSTRAR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(31029704553731013)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31229114623191929)
,p_name=>'DA_CARGAR_FECHAS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_SEQ_ID_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31229233897191930)
,p_event_id=>wwv_flow_imp.id(31229114623191929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'            c007,',
'            d001,',
'            c008,',
'            d002',
'    INTO',
'            :P164_ALTA_POR,',
'            :P164_FEC_ALTA,',
'            :P164_ACTUALIZADO_POR,',
'            :P164_FEC_ACTUALIZACION',
'    FROM',
'            APEX_COLLECTIONS',
'    WHERE',
'            COLLECTION_NAME = ''CALIF_COMP''',
'    AND',
'            SEQ_ID = :P164_SEQ_ID_DETALLES;',
'',
'    ',
'',
'EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_SEQ_ID_DETALLES'
,p_attribute_03=>'P164_ALTA_POR,P164_FEC_ALTA,P164_ACTUALIZADO_POR,P164_FEC_ACTUALIZACION,P164_ALTA_POR_EN_CLIE,P164_FEC_ALTA_EN_CLIE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31230732969191945)
,p_name=>'DA_ELIMINAR_MIEMBRO_CALIF'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32202192926653602)
,p_event_id=>wwv_flow_imp.id(31230732969191945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31230837787191946)
,p_event_id=>wwv_flow_imp.id(31230732969191945)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCALIFC.pr_borrar_miem_col_calif_comp(:P164_SEQ_ID_ELIMINAR);',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33477567258764230)
,p_event_id=>wwv_flow_imp.id(31230732969191945)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_ALTA_POR,P164_FEC_ALTA,P164_ACTUALIZADO_POR,P164_FEC_ACTUALIZACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31230911577191947)
,p_event_id=>wwv_flow_imp.id(31230732969191945)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31226498244191902)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31231200288191950)
,p_name=>'DA_ABRIR_REGION_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32203000353653611)
,p_event_id=>wwv_flow_imp.id(31231200288191950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT      ',
'            c001,              ',
'            c002,            ',
'            c003,              ',
'            c004,              ',
'            c005,              ',
'            c006,              ',
'            c007,              ',
'            d001                                                     ',
'    INTO',
'            :P164_COD_AGRUPACION,',
'            :P164_COD_DOCUMENTO,',
'            :P164_DESCRIPCION,',
'            :P164_VALOR,',
'            :P164_PONDERACION,',
'            :P164_OBSERVACION_CREAR_EDITAR,',
'            :P164_ALTA_POR,',
'            :P164_FEC_ALTA         ',
'    FROM',
'            APEX_COLLECTIONS',
'    WHERE',
'            COLLECTION_NAME = ''CALIF_COMP''',
'    AND',
'            SEQ_ID = :P164_SEQ_ID_EDITAR;',
'',
'    :P164_ACTUALIZADO_POR_CR_EDI := :APP_USER;',
'    :P164_FEC_ACTUALIZACION_CR_EDI := sysdate;',
'',
'EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_SEQ_ID_EDITAR,P164_COD_DOCUMENTO'
,p_attribute_03=>'P164_COD_AGRUPACION,P164_COD_DOCUMENTO,P164_DESCRIPCION,P164_VALOR,P164_PONDERACION,P164_OBSERVACION_CREAR_EDITAR,P164_ALTA_POR,P164_FEC_ALTA,P164_ACTUALIZADO_POR_CR_EDI,P164_FEC_ACTUALIZACION_CR_EDI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32204507704653626)
,p_event_id=>wwv_flow_imp.id(31231200288191950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(32203831826653619)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32202072904653601)
,p_event_id=>wwv_flow_imp.id(31231200288191950)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31231151619191949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32203213727653613)
,p_name=>'DA_CERRAR_REGION_CREAR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32203163952653612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32203340593653614)
,p_event_id=>wwv_flow_imp.id(32203213727653613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31231151619191949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32203618058653617)
,p_name=>'DA_CAMBIAR_VALOR_DESCRIPCION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_COD_DOCUMENTO'
,p_condition_element=>'P164_COD_DOCUMENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32203769401653618)
,p_event_id=>wwv_flow_imp.id(32203618058653617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT  descripcion, VALOR, PONDERACION INTO :P164_DESCRIPCION, :P164_VALOR, :P164_PONDERACION',
'FROM CC_DOCUMENTOS_CALIFICACION',
'WHERE COD_DOCUMENTO = :P164_COD_DOCUMENTO;',
'--AND COD_AGRUPACION = :P164_COD_AGRUPACION;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_COD_DOCUMENTO'
,p_attribute_03=>'P164_DESCRIPCION,P164_VALOR,P164_PONDERACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32204060320653621)
,p_name=>'DA_OCULTAR_BOTONES_ED_CR'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32204257048653623)
,p_event_id=>wwv_flow_imp.id(32204060320653621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(32203831826653619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32204680461653627)
,p_name=>'DA_EDITAR_MIEMBRO_COL'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32203831826653619)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(32204781854653628)
,p_event_id=>wwv_flow_imp.id(32204680461653627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF :P164_COD_DOCUMENTO IS NULL THEN',
'    :P164_ALERT := 1;',
'',
'ELSE ',
'    :P164_ALERT := 0;',
'    CCCALIFC.pr_modif_miem_col_calif_comp(  :P164_SEQ_ID_EDITAR,',
'                                            :P164_COD_AGRUPACION,',
'                                            :P164_COD_DOCUMENTO,',
'                                            :P164_DESCRIPCION,',
'                                            :P164_VALOR,',
'                                            :P164_PONDERACION,',
'                                            :P164_OBSERVACION_CREAR_EDITAR,',
'                                            :P164_ALTA_POR,',
'                                            :P164_FEC_ALTA,',
'                                            PI_ACTUALIZADO_POR => :APP_USER,',
'                                            PI_FEC_ACTUALIZACION => sysdate);                                             ',
'END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_SEQ_ID_EDITAR,P164_COD_AGRUPACION,P164_COD_DOCUMENTO,  P164_DESCRIPCION,  P164_VALOR,  P164_PONDERACION,  P164_OBSERVACION_CREAR_EDITAR,  P164_ALTA_POR,  P164_FEC_ALTA,  P164_ACTUALIZADO_POR,  P164_FEC_ACTUALIZACION,P164_ALERT'
,p_attribute_03=>'P164_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39146907911800012)
,p_event_id=>wwv_flow_imp.id(32204680461653627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentran vacios.'
,p_attribute_02=>'Comprobar campos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P164_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32204895706653629)
,p_event_id=>wwv_flow_imp.id(32204680461653627)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31226498244191902)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P164_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32204931436653630)
,p_event_id=>wwv_flow_imp.id(32204680461653627)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31231151619191949)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P164_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33475113531764206)
,p_name=>'DA_CARGAR_FECHAS_INIT'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33475260754764207)
,p_event_id=>wwv_flow_imp.id(33475113531764206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'            c007,',
'            d001,',
'            c008,',
'            d002',
'    INTO',
'            :P164_ALTA_POR,',
'            :P164_FEC_ALTA,',
'            :P164_ACTUALIZADO_POR,',
'            :P164_FEC_ACTUALIZACION',
'    FROM',
'            APEX_COLLECTIONS',
'    WHERE',
'            COLLECTION_NAME = ''CALIF_COMP'';',
'    ',
'',
'    ',
'',
'EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
'',
'',
''))
,p_attribute_03=>'P164_ALTA_POR, P164_FEC_ALTA, P164_ACTUALIZADO_POR, P164_FEC_ACTUALIZACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33475437371764209)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33475353261764208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33475620792764211)
,p_event_id=>wwv_flow_imp.id(33475437371764209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00BFDesea guardar los datos?'),
''))
,p_attribute_02=>unistr('\00BFDesea guardar los datos?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42374466084157826)
,p_event_id=>wwv_flow_imp.id(33475437371764209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'',
':P164_ACTIVO_TOTALES :=  REPLACE(REPLACE(:P164_ACTIVO_TOTALES_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_PASIVO_TOTALES := REPLACE(REPLACE(:P164_PASIVO_TOTALES_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_PATRIMONIO_NETO := REPLACE(REPLACE(:P164_PATRIMONIO_NETO_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_INGRESOS := REPLACE(REPLACE(:P164_INGRESOS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_EGRESOS := REPLACE(REPLACE(:P164_EGRESOS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_SALDOS := REPLACE(REPLACE(:P164_SALDOS_MOSTRAR, '',00'',''''), ''.'','''');',
'',
':P164_COMPRAS_GS := REPLACE(REPLACE(:P164_COMPRAS_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_COMPRAS_US := REPLACE(REPLACE(:P164_COMPRAS_US, '',00'',''''), ''.'','''');',
'',
':P164_NECESIDAD_CREDITO_GS := REPLACE(REPLACE(:P164_NECESIDAD_CRED_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_NECESIDAD_CREDITO_US := REPLACE(REPLACE(:P164_NECESIDAD_CREDITO_US, '',00'',''''), ''.'','''');',
'',
':P164_PROPUESTA_GS :=  REPLACE(REPLACE(:P164_PROPUESTA_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_INGRESO_ESTIMADO_GS := REPLACE(REPLACE(:P164_INGRESO_ESTIM_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_GARANTIA_GS := REPLACE(REPLACE(:P164_GARANTIA_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_CODEUDORIA_GS := REPLACE(REPLACE(:P164_CODEUDORIA_GS_MOSTRAR, '',00'',''''), ''.'','''');',
'',
':P164_PROPUESTA_US := REPLACE(REPLACE(:P164_PROPUESTA_US, '',00'',''''), ''.'','''');',
':P164_INGRESO_ESTIMADO_US := REPLACE(REPLACE(:P164_INGRESO_ESTIMADO_US, '',00'',''''), ''.'','''');',
':P164_GARANTIA_US := REPLACE(REPLACE(:P164_GARANTIA_US, '',00'',''''), ''.'','''');',
':P164_CODEUDORIA_US := REPLACE(REPLACE(:P164_CODEUDORIA_US, '',00'',''''), ''.'','''');',
'',
':P164_LINEA_FINANCIERA_GS := REPLACE(REPLACE(:P164_LINEA_FINANCIERA_GS, '',00'',''''), ''.'','''');',
':P164_LINEA_PATRIMONIO_GS := REPLACE(REPLACE(:P164_LINEA_PATRIMONIO_GS, '',00'',''''), ''.'','''');',
':P164_LINEA_FINANCIERA_US := REPLACE(REPLACE(:P164_LINEA_FINANCIERA_US, '',00'',''''), ''.'','''');',
':P164_LINEA_PATRIMONIO_US := REPLACE(REPLACE(:P164_LINEA_PATRIMONIO_US, '',00'',''''), ''.'','''');',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P164_ACTIVO_TOTALES,P164_PASIVO_TOTALES,P164_PATRIMONIO_NETO, P164_INGRESOS,P164_EGRESOS,P164_SALDOS,P164_COMPRAS_GS,P164_COMPRAS_US,P164_NECESIDAD_CREDITO_GS,P164_NECESIDAD_CREDITO_US,P164_PROPUESTA_GS,P164_INGRESO_ESTIMADO_GS,P164_GARANTIA_GS,P164_'
||'CODEUDORIA_GS,P164_PROPUESTA_US,P164_INGRESO_ESTIMADO_US,P164_GARANTIA_US,P164_CODEUDORIA_US,P164_PROPUESTA_GS_MOSTRAR,P164_COMPRAS_GS_MOSTRAR,P164_INGRESO_ESTIM_GS_MOSTRAR,P164_ACTIVO_TOTALES_MOSTRAR,P164_INGRESOS_MOSTRAR,P164_PASIVO_TOTALES_MOSTRAR'
||',P164_EGRESOS_MOSTRAR,P164_GARANTIA_GS_MOSTRAR,P164_PATRIMONIO_NETO_MOSTRAR,P164_SALDOS_MOSTRAR,P164_NECESIDAD_CRED_GS_MOSTRAR,P164_CODEUDORIA_GS_MOSTRAR,P164_LINEA_FINANCIERA_GS,P164_LINEA_PATRIMONIO_GS,P164_LINEA_FINANCIERA_US,P164_LINEA_PATRIMONIO'
||'_US'
,p_attribute_03=>'P164_ACTIVO_TOTALES,P164_PASIVO_TOTALES,P164_PATRIMONIO_NETO, P164_INGRESOS,P164_EGRESOS,P164_SALDOS,P164_COMPRAS_GS,P164_COMPRAS_US,P164_NECESIDAD_CREDITO_GS,P164_NECESIDAD_CREDITO_US,P164_PROPUESTA_GS,P164_INGRESO_ESTIMADO_GS,P164_GARANTIA_GS,P164_'
||'CODEUDORIA_GS,P164_PROPUESTA_US,P164_INGRESO_ESTIMADO_US,P164_GARANTIA_US,P164_CODEUDORIA_US,P164_PROPUESTA_GS_MOSTRAR,P164_COMPRAS_GS_MOSTRAR,P164_INGRESO_ESTIM_GS_MOSTRAR,P164_ACTIVO_TOTALES_MOSTRAR,P164_INGRESOS_MOSTRAR,P164_PASIVO_TOTALES_MOSTRAR'
||',P164_EGRESOS_MOSTRAR,P164_GARANTIA_GS_MOSTRAR,P164_PATRIMONIO_NETO_MOSTRAR,P164_SALDOS_MOSTRAR,P164_NECESIDAD_CRED_GS_MOSTRAR,P164_CODEUDORIA_GS_MOSTRAR,P164_LINEA_FINANCIERA_GS,P164_LINEA_PATRIMONIO_GS,P164_LINEA_FINANCIERA_US,P164_LINEA_PATRIMONIO'
||'_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33475913067764214)
,p_event_id=>wwv_flow_imp.id(33475437371764209)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'CCCALIFC.pr_modif_miem_col_clie_calif(            ',
'                                            :P164_SEQ_ID_CLIENTE,',
'                                            :P164_FECHA_ELABORACION,',
'                                            :P164_ACTIVO_TOTALES,',
'                                            :P164_PASIVO_TOTALES,',
'                                            :P164_PATRIMONIO_NETO,',
'                                            :P164_INGRESOS,',
'                                            :P164_EGRESOS,',
'                                            :P164_SALDOS,',
'                                            :P164_COMPRAS_GS,',
'                                            :P164_COMPRAS_US,',
'                                            :P164_DIAS_CREDITO_GS,',
'                                            :P164_ROTACION_GS,',
'                                            :P164_NECESIDAD_CREDITO_GS,',
'                                            :P164_NECESIDAD_CREDITO_US,',
'                                            :P164_PROPUESTA_GS,',
'                                            :P164_PROPUESTA_US,',
'                                            :P164_INGRESO_ESTIMADO_GS,',
'                                            :P164_INGRESO_ESTIMADO_US,',
'                                            :P164_GARANTIA_GS,',
'                                            :P164_GARANTIA_US,',
'                                            :P164_CODEUDORIA_GS,',
'                                            :P164_CODEUDORIA_US,',
'                                            :P164_CATEGORIA_CLIENTE,',
'                                            :P164_LINEA_FINANCIERA_GS,',
'                                            :P164_LINEA_FINANCIERA_US,',
'                                            :P164_LINEA_PATRIMONIO_GS,',
'                                            :P164_LINEA_PATRIMONIO_US,',
'                                            :P164_OBSERVACION,',
'                                            :P164_OBSERVACION_REFERENCIA,',
'                                            :P164_OBSERVACION_ANALISIS,',
'                                            :P164_ALTA_POR_EN_CLIE,',
'                                            :P164_FEC_ALTA_EN_CLIE,',
'                                            PI_ACTUALIZADO_POR => :APP_USER, ',
'                                            PI_FEC_ACTUALIZACION => sysdate);',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P164_SEQ_ID_CLIENTE,P164_FECHA_ELABORACION,P164_ACTIVO_TOTALES,P164_PASIVO_TOTALES,P164_PATRIMONIO_NETO,P164_INGRESOS,P164_EGRESOS,P164_SALDOS,P164_COMPRAS_GS,P164_COMPRAS_US,P164_DIAS_CREDITO_GS,P164_ROTACION_GS,P164_NECESIDAD_CREDITO_GS,P164_NECESI'
||'DAD_CREDITO_US,P164_PROPUESTA_GS,P164_PROPUESTA_US,P164_INGRESO_ESTIMADO_GS,P164_INGRESO_ESTIMADO_US,P164_GARANTIA_GS,P164_GARANTIA_US,P164_CODEUDORIA_GS,P164_CODEUDORIA_US,P164_CATEGORIA_CLIENTE,P164_LINEA_FINANCIERA_GS,P164_LINEA_FINANCIERA_US,P164'
||'_LINEA_PATRIMONIO_GS,P164_LINEA_PATRIMONIO_US,P164_OBSERVACION,P164_OBSERVACION_REFERENCIA,P164_OBSERVACION_ANALISIS,P164_ALTA_POR_EN_CLIE,P164_FEC_ALTA_EN_CLIE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33476209546764217)
,p_event_id=>wwv_flow_imp.id(33475437371764209)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33476693937764221)
,p_name=>'DA_CONVERTIR_PROPUESTA_GS_US'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_PROPUESTA_GS_MOSTRAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33476739507764222)
,p_event_id=>wwv_flow_imp.id(33476693937764221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        :P164_PROPUESTA_US := CCCALIFC.fc_calcular_monto_us(:P164_PROPUESTA_GS_MOSTRAR);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_PROPUESTA_GS_MOSTRAR'
,p_attribute_03=>'P164_PROPUESTA_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33476816043764223)
,p_name=>'DA_CONVERTIR_INGRESO_GS_US'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_INGRESO_ESTIM_GS_MOSTRAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33476900827764224)
,p_event_id=>wwv_flow_imp.id(33476816043764223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P164_INGRESO_ESTIMADO_US := CCCALIFC.fc_calcular_monto_us(:P164_INGRESO_ESTIM_GS_MOSTRAR);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_INGRESO_ESTIM_GS_MOSTRAR'
,p_attribute_03=>'P164_INGRESO_ESTIMADO_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33477046581764225)
,p_name=>'DA_CONVERTIR_GARANTIA_GS_US'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_GARANTIA_GS_MOSTRAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33477129592764226)
,p_event_id=>wwv_flow_imp.id(33477046581764225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        :P164_GARANTIA_US := CCCALIFC.fc_calcular_monto_us(:P164_GARANTIA_GS_MOSTRAR);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_GARANTIA_GS_MOSTRAR'
,p_attribute_03=>'P164_GARANTIA_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33477243794764227)
,p_name=>'DA_CONVERTIR_CODEUDORA_GS_US'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_CODEUDORIA_GS_MOSTRAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33477383315764228)
,p_event_id=>wwv_flow_imp.id(33477243794764227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        :P164_CODEUDORIA_US := CCCALIFC.fc_calcular_monto_us(:P164_CODEUDORIA_GS_MOSTRAR);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_CODEUDORIA_GS_MOSTRAR'
,p_attribute_03=>'P164_CODEUDORIA_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33477700046764232)
,p_name=>'DA_POBLAR_CAMPOS'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31227474992191912)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33478199075764236)
,p_event_id=>wwv_flow_imp.id(33477700046764232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea poblar los campos?')
,p_attribute_02=>unistr('\00BFDesea poblar los campos?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33477871109764233)
,p_event_id=>wwv_flow_imp.id(33477700046764232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCALIFC.pr_poblar_campos(:P164_COD_CLIENTE, :APP_USER);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_attribute_02=>'P164_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33477978253764234)
,p_event_id=>wwv_flow_imp.id(33477700046764232)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31226498244191902)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35460988233564316)
,p_event_id=>wwv_flow_imp.id(33477700046764232)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_ALTA_POR,P164_FEC_ALTA,P164_ACTUALIZADO_POR,P164_FEC_ACTUALIZACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33478201428764237)
,p_name=>'DA_CALIFICAR_CLIENTE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31227531687191913)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35233662388247128)
,p_event_id=>wwv_flow_imp.id(33478201428764237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea calificar al cliente?')
,p_attribute_02=>unistr('\00BFDesea calificar al cliente?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33478358247764238)
,p_event_id=>wwv_flow_imp.id(33478201428764237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUM (round(c004 * c005/100,2)) into :P164_TOT_TOTAL',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''CALIF_COMP'';',
'',
'--:P164_TOT_TOTAL := 150;',
'',
'IF :P164_TOT_TOTAL>=90 THEN',
'',
'    :P164_CATEGORIA_CLIENTE := ''A'';',
'',
'ELSIF :P164_TOT_TOTAL>=75 THEN',
'	',
'    :P164_CATEGORIA_CLIENTE := ''B'';',
'	',
'ELSIF :P164_TOT_TOTAL>=50 THEN',
'	',
'	:P164_CATEGORIA_CLIENTE := ''C'';',
'    ',
'ELSE	',
'	:P164_CATEGORIA_CLIENTE := ''D'';',
'END IF;'))
,p_attribute_02=>'P164_TOT_TOTAL'
,p_attribute_03=>'P164_CATEGORIA_CLIENTE,P164_TOT_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33478427795764239)
,p_event_id=>wwv_flow_imp.id(33478201428764237)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'--:P164_CATEGORIA_CLIENTE :=''A'';',
'',
'IF 	:P164_CATEGORIA_CLIENTE =''A'' THEN',
'        ',
'            :P164_LINEA_FINANCIERA_GS := :P164_INGRESO_ESTIMADO_GS*30/100;        ',
'END IF;',
' ',
'IF 	:P164_CATEGORIA_CLIENTE =''B'' THEN',
'        :P164_LINEA_FINANCIERA_GS := :P164_INGRESO_ESTIMADO_GS*20/100;',
'        ',
'END IF;',
' ',
'IF 	:P164_CATEGORIA_CLIENTE =''C'' THEN',
'        :P164_LINEA_FINANCIERA_GS := :P164_INGRESO_ESTIMADO_GS*10/100;      ',
'END IF;',
'  ',
'IF 	:P164_CATEGORIA_CLIENTE =''D'' THEN',
'        :P164_LINEA_FINANCIERA_GS := :P164_INGRESO_ESTIMADO_GS*5/100;',
'END IF;',
'',
'',
':P164_LINEA_FINANCIERA_US :=  CCCALIFC.fc_calcular_monto_us(:P164_LINEA_FINANCIERA_GS);',
'',
':P164_LINEA_PATRIMONIO_GS := :P164_PATRIMONIO_NETO*7/100;',
'',
':P164_LINEA_PATRIMONIO_US := CCCALIFC.fc_calcular_monto_us(:P164_LINEA_PATRIMONIO_GS);',
'',
':P164_ACTUALIZADO_POR_EN_CLIE := :APP_USER;',
':P164_FEC_ACTUALIZACION_EN_CLIE := sysdate;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P164_INGRESO_ESTIMADO_GS,P164_LINEA_PATRIMONIO_GS,P164_LINEA_PATRIMONIO_US'
,p_attribute_03=>'P164_LINEA_FINANCIERA_GS,P164_LINEA_FINANCIERA_US,P164_LINEA_PATRIMONIO_GS,P164_LINEA_PATRIMONIO_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42374556358157827)
,p_event_id=>wwv_flow_imp.id(33478201428764237)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'',
':P164_ACTIVO_TOTALES :=  REPLACE(REPLACE(:P164_ACTIVO_TOTALES_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_PASIVO_TOTALES := REPLACE(REPLACE(:P164_PASIVO_TOTALES_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_PATRIMONIO_NETO := REPLACE(REPLACE(:P164_PATRIMONIO_NETO_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_INGRESOS := REPLACE(REPLACE(:P164_INGRESOS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_EGRESOS := REPLACE(REPLACE(:P164_EGRESOS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_SALDOS := REPLACE(REPLACE(:P164_SALDOS_MOSTRAR, '',00'',''''), ''.'','''');',
'',
':P164_COMPRAS_GS := REPLACE(REPLACE(:P164_COMPRAS_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_COMPRAS_US := REPLACE(REPLACE(:P164_COMPRAS_US, '',00'',''''), ''.'','''');',
'',
':P164_NECESIDAD_CREDITO_GS := REPLACE(REPLACE(:P164_NECESIDAD_CRED_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_NECESIDAD_CREDITO_US := REPLACE(REPLACE(:P164_NECESIDAD_CREDITO_US, '',00'',''''), ''.'','''');',
'',
':P164_PROPUESTA_GS :=  REPLACE(REPLACE(:P164_PROPUESTA_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_INGRESO_ESTIMADO_GS := REPLACE(REPLACE(:P164_INGRESO_ESTIM_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_GARANTIA_GS := REPLACE(REPLACE(:P164_GARANTIA_GS_MOSTRAR, '',00'',''''), ''.'','''');',
':P164_CODEUDORIA_GS := REPLACE(REPLACE(:P164_CODEUDORIA_GS_MOSTRAR, '',00'',''''), ''.'','''');',
'',
':P164_PROPUESTA_US := REPLACE(REPLACE(:P164_PROPUESTA_US, '',00'',''''), ''.'','''');',
':P164_INGRESO_ESTIMADO_US := REPLACE(REPLACE(:P164_INGRESO_ESTIMADO_US, '',00'',''''), ''.'','''');',
':P164_GARANTIA_US := REPLACE(REPLACE(:P164_GARANTIA_US, '',00'',''''), ''.'','''');',
':P164_CODEUDORIA_US := REPLACE(REPLACE(:P164_CODEUDORIA_US, '',00'',''''), ''.'','''');',
'',
':P164_LINEA_FINANCIERA_GS := REPLACE(REPLACE(:P164_LINEA_FINANCIERA_GS, '',00'',''''), ''.'','''');',
':P164_LINEA_PATRIMONIO_GS := REPLACE(REPLACE(:P164_LINEA_PATRIMONIO_GS, '',00'',''''), ''.'','''');',
':P164_LINEA_FINANCIERA_US := REPLACE(REPLACE(:P164_LINEA_FINANCIERA_US, '',00'',''''), ''.'','''');',
':P164_LINEA_PATRIMONIO_US := REPLACE(REPLACE(:P164_LINEA_PATRIMONIO_US, '',00'',''''), ''.'','''');',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P164_ACTIVO_TOTALES,P164_PASIVO_TOTALES,P164_PATRIMONIO_NETO, P164_INGRESOS,P164_EGRESOS,P164_SALDOS,P164_COMPRAS_GS,P164_COMPRAS_US,P164_NECESIDAD_CREDITO_GS,P164_NECESIDAD_CREDITO_US,P164_PROPUESTA_GS,P164_INGRESO_ESTIMADO_GS,P164_GARANTIA_GS,P164_'
||'CODEUDORIA_GS,P164_PROPUESTA_US,P164_INGRESO_ESTIMADO_US,P164_GARANTIA_US,P164_CODEUDORIA_US,P164_PROPUESTA_GS_MOSTRAR,P164_COMPRAS_GS_MOSTRAR,P164_INGRESO_ESTIM_GS_MOSTRAR,P164_ACTIVO_TOTALES_MOSTRAR,P164_INGRESOS_MOSTRAR,P164_PASIVO_TOTALES_MOSTRAR'
||',P164_EGRESOS_MOSTRAR,P164_GARANTIA_GS_MOSTRAR,P164_PATRIMONIO_NETO_MOSTRAR,P164_SALDOS_MOSTRAR,P164_NECESIDAD_CRED_GS_MOSTRAR,P164_CODEUDORIA_GS_MOSTRAR,P164_LINEA_FINANCIERA_GS,P164_LINEA_PATRIMONIO_GS,P164_LINEA_FINANCIERA_US,P164_LINEA_PATRIMONIO'
||'_US'
,p_attribute_03=>'P164_ACTIVO_TOTALES,P164_PASIVO_TOTALES,P164_PATRIMONIO_NETO, P164_INGRESOS,P164_EGRESOS,P164_SALDOS,P164_COMPRAS_GS,P164_COMPRAS_US,P164_NECESIDAD_CREDITO_GS,P164_NECESIDAD_CREDITO_US,P164_PROPUESTA_GS,P164_INGRESO_ESTIMADO_GS,P164_GARANTIA_GS,P164_'
||'CODEUDORIA_GS,P164_PROPUESTA_US,P164_INGRESO_ESTIMADO_US,P164_GARANTIA_US,P164_CODEUDORIA_US,P164_PROPUESTA_GS_MOSTRAR,P164_COMPRAS_GS_MOSTRAR,P164_INGRESO_ESTIM_GS_MOSTRAR,P164_ACTIVO_TOTALES_MOSTRAR,P164_INGRESOS_MOSTRAR,P164_PASIVO_TOTALES_MOSTRAR'
||',P164_EGRESOS_MOSTRAR,P164_GARANTIA_GS_MOSTRAR,P164_PATRIMONIO_NETO_MOSTRAR,P164_SALDOS_MOSTRAR,P164_NECESIDAD_CRED_GS_MOSTRAR,P164_CODEUDORIA_GS_MOSTRAR,P164_LINEA_FINANCIERA_GS,P164_LINEA_PATRIMONIO_GS,P164_LINEA_FINANCIERA_US,P164_LINEA_PATRIMONIO'
||'_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39379781900974304)
,p_event_id=>wwv_flow_imp.id(33478201428764237)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCALIFC.pr_modif_miem_col_clie_calif(            ',
'                                            :P164_SEQ_ID_CLIENTE,',
'                                            :P164_FECHA_ELABORACION,',
'                                            :P164_ACTIVO_TOTALES,',
'                                            :P164_PASIVO_TOTALES,',
'                                            :P164_PATRIMONIO_NETO,',
'                                            :P164_INGRESOS,',
'                                            :P164_EGRESOS,',
'                                            :P164_SALDOS,',
'                                            :P164_COMPRAS_GS,',
'                                            :P164_COMPRAS_US,',
'                                            :P164_DIAS_CREDITO_GS,',
'                                            :P164_ROTACION_GS,',
'                                            :P164_NECESIDAD_CREDITO_GS,',
'                                            :P164_NECESIDAD_CREDITO_US,',
'                                            :P164_PROPUESTA_GS,',
'                                            :P164_PROPUESTA_US,',
'                                            :P164_INGRESO_ESTIMADO_GS,',
'                                            :P164_INGRESO_ESTIMADO_US,',
'                                            :P164_GARANTIA_GS,',
'                                            :P164_GARANTIA_US,',
'                                            :P164_CODEUDORIA_GS,',
'                                            :P164_CODEUDORIA_US,',
'                                            :P164_CATEGORIA_CLIENTE,',
'                                            :P164_LINEA_FINANCIERA_GS,',
'                                            :P164_LINEA_FINANCIERA_US,',
'                                            :P164_LINEA_PATRIMONIO_GS,',
'                                            :P164_LINEA_PATRIMONIO_US,',
'                                            :P164_OBSERVACION,',
'                                            :P164_OBSERVACION_REFERENCIA,',
'                                            :P164_OBSERVACION_ANALISIS,',
'                                            :P164_ALTA_POR_EN_CLIE,',
'                                            :P164_FEC_ALTA_EN_CLIE,',
'                                            PI_ACTUALIZADO_POR => :APP_USER, ',
'                                            PI_FEC_ACTUALIZACION => sysdate);',
'',
'    CCCALIFC.pr_confirmar_accion_cliente (:P164_COD_CLIENTE, :P164_SEQ_ID_CLIENTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P164_COD_CLIENTE,P164_SEQ_ID_CLIENTE,P164_SEQ_ID_CLIENTE,P164_FECHA_ELABORACION,P164_ACTIVO_TOTALES, P164_PASIVO_TOTALES,P164_PATRIMONIO_NETO,P164_INGRESOS,P164_EGRESOS,P164_SALDOS,P164_COMPRAS_GS,P164_COMPRAS_US,P164_DIAS_CREDITO_GS,P164_ROTACION_GS'
||',P164_NECESIDAD_CREDITO_GS,P164_NECESIDAD_CREDITO_US,P164_PROPUESTA_GS,P164_PROPUESTA_US,P164_INGRESO_ESTIMADO_GS,P164_INGRESO_ESTIMADO_US,P164_GARANTIA_GS,P164_GARANTIA_US,P164_CODEUDORIA_GS,P164_CODEUDORIA_US,P164_CATEGORIA_CLIENTE,P164_LINEA_FINAN'
||'CIERA_GS,P164_LINEA_FINANCIERA_US,P164_LINEA_PATRIMONIO_GS,P164_LINEA_PATRIMONIO_US,P164_OBSERVACION,P164_OBSERVACION_REFERENCIA,P164_OBSERVACION_ANALISIS,P164_ALTA_POR_EN_CLIE,P164_FEC_ALTA_EN_CLIE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35459629796564303)
,p_name=>'DA_COLOCAR_LINEA_PATRIMONIO_GS'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_LINEA_PATRIMONIO_GS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35459779343564304)
,p_event_id=>wwv_flow_imp.id(35459629796564303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'END;',
'',
'',
''))
,p_attribute_02=>'P164_LINEA_PATRIMONIO_GS'
,p_attribute_03=>'P164_LINEA_PATRIMONIO_GS,P164_LINEA_PATRIMONIO_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35459977919564306)
,p_name=>'DA_FOCUS_INGRESO_GS'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_PROPUESTA_US'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35460005973564307)
,p_event_id=>wwv_flow_imp.id(35459977919564306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_INGRESO_ESTIM_GS_MOSTRAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39146649448800009)
,p_name=>'DA_OCULTAR_FECHAS_CALIFICACION'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39146723259800010)
,p_event_id=>wwv_flow_imp.id(39146649448800009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_ALTA_POR,P164_FEC_ALTA,P164_ACTUALIZADO_POR,P164_FEC_ACTUALIZACION'
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
 p_id=>wwv_flow_imp.id(39379847992974305)
,p_name=>'DA_FOCUS_GARANTIA_GS'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_INGRESO_ESTIMADO_US'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39380044631974307)
,p_event_id=>wwv_flow_imp.id(39379847992974305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_GARANTIA_GS_MOSTRAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39380321703974310)
,p_name=>'DA_FOCUS_OBSERVACION'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_CODEUDORIA_US'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39380468612974311)
,p_event_id=>wwv_flow_imp.id(39380321703974310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42373059496157812)
,p_name=>'DA_FOCUS_COMPRAS_US'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_COMPRAS_US'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42373199358157813)
,p_event_id=>wwv_flow_imp.id(42373059496157812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_DIAS_CREDITO_GS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42373451670157816)
,p_name=>'DA_FOCUS_NEC_CRED_US'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_NECESIDAD_CREDITO_US'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42373524050157817)
,p_event_id=>wwv_flow_imp.id(42373451670157816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_DIAS_CREDITO_GS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42374286752157824)
,p_name=>'DA_FOCUS_CODEUDORA'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_GARANTIA_US'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42374352477157825)
,p_event_id=>wwv_flow_imp.id(42374286752157824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_CODEUDORIA_GS_MOSTRAR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30050703040197235)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P_COD_MODULO := ''CC'';',
'--:P164_COD_CLIENTE := ''889'';',
'',
'CCCALIFC.pr_crear_col_clie_calif(:P164_COD_CLIENTE);',
'',
'CCCALIFC.pr_crear_col_calif_comp(:P164_COD_CLIENTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31033007085731046)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS_CLIENTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        SELECT ',
'                seq_id,',
'                d001, ',
'                c001,',
'                c002,',
'                c003,',
'                c004,',
'                c005,',
'                c006,',
'                c007,',
'                c008,',
'                c009,',
'                c010,',
'                c011,',
'                c012,',
'                c013,',
'                c014,',
'                c015,',
'                c016,',
'                c017,',
'                c018,',
'                c019,',
'                c020,',
'                c021,',
'                c022,',
'                c023,',
'                c024,',
'                c025,',
'                c026,',
'                c027,',
'                c028,',
'                c029,',
'                c030,',
'                c031,',
'                c032   ',
'',
'        INTO',
'                :P164_SEQ_ID_CLIENTE, ',
'                :P164_FECHA_ELABORACION,',
'                :P164_ACTIVO_TOTALES,',
'                :P164_PASIVO_TOTALES,',
'                :P164_PATRIMONIO_NETO,',
'                :P164_INGRESOS,',
'                :P164_EGRESOS,',
'                :P164_SALDOS,',
'                :P164_COMPRAS_GS,',
'                :P164_COMPRAS_US,',
'                :P164_DIAS_CREDITO_GS,',
'                :P164_ROTACION_GS,',
'                :P164_NECESIDAD_CREDITO_GS,',
'                :P164_NECESIDAD_CREDITO_US,',
'                :P164_PROPUESTA_GS,',
'                :P164_PROPUESTA_US,',
'                :P164_INGRESO_ESTIMADO_GS,',
'                :P164_INGRESO_ESTIMADO_US,',
'                :P164_GARANTIA_GS,',
'                :P164_GARANTIA_US,',
'                :P164_CODEUDORIA_GS,',
'                :P164_CODEUDORIA_US,',
'                :P164_CATEGORIA_CLIENTE,',
'                :P164_LINEA_FINANCIERA_GS,',
'                :P164_LINEA_FINANCIERA_US,',
'                :P164_LINEA_PATRIMONIO_GS,',
'                :P164_LINEA_PATRIMONIO_US,',
'                :P164_OBSERVACION,',
'                :P164_OBSERVACION_REFERENCIA,',
'                :P164_OBSERVACION_ANALISIS,',
'                :P164_ALTA_POR_EN_CLIE,',
'                :P164_FEC_ALTA_EN_CLIE,',
'                :P164_ACTUALIZADO_POR_EN_CLIE,',
'                :P164_FEC_ACTUALIZACION_EN_CLIE',
'                ',
'',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''CLIENTE_CALIF'';',
'',
'        ',
'        :P164_ACTIVO_TOTALES_MOSTRAR := TO_CHAR(:P164_ACTIVO_TOTALES, ''999G999G999G999G999D00'');',
'        :P164_PASIVO_TOTALES_MOSTRAR := TO_CHAR(:P164_PASIVO_TOTALES, ''999G999G999G999G999D00'');',
'        :P164_PATRIMONIO_NETO_MOSTRAR := TO_CHAR(:P164_PATRIMONIO_NETO, ''999G999G999G999G999D00'');',
'        :P164_INGRESOS_MOSTRAR := TO_CHAR(:P164_INGRESOS, ''999G999G999G999G999D00'');',
'        :P164_EGRESOS_MOSTRAR := TO_CHAR(:P164_EGRESOS, ''999G999G999G999G999D00'');',
'        :P164_SALDOS_MOSTRAR := TO_CHAR(:P164_SALDOS, ''999G999G999G999G999D00'');',
'',
'',
'        :P164_COMPRAS_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_COMPRAS_GS), ''999G999G999G999G999D00'');',
'        :P164_COMPRAS_GS_MOSTRAR := TO_CHAR(:P164_COMPRAS_GS, ''999G999G999G999G999D00'');',
'',
'',
'        :P164_NECESIDAD_CREDITO_GS := :P164_COMPRAS_GS * :P164_ROTACION_GS;',
'        :P164_NECESIDAD_CRED_GS_MOSTRAR := TO_CHAR(:P164_NECESIDAD_CREDITO_GS, ''999G999G999G999G999D00'');',
'        :P164_NECESIDAD_CREDITO_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_NECESIDAD_CREDITO_GS), ''999G999G999G999G999D00'');',
'',
'',
'        :P164_PROPUESTA_GS_MOSTRAR := TO_CHAR(:P164_PROPUESTA_GS, ''999G999G999G999G999D00'');',
'        :P164_INGRESO_ESTIM_GS_MOSTRAR := TO_CHAR(:P164_INGRESO_ESTIMADO_GS, ''999G999G999G999G999D00'');',
'        :P164_GARANTIA_GS_MOSTRAR := TO_CHAR(:P164_GARANTIA_GS, ''999G999G999G999G999D00'');',
'        :P164_CODEUDORIA_GS_MOSTRAR := TO_CHAR(:P164_CODEUDORIA_GS, ''999G999G999G999G999D00'');',
'        :P164_PROPUESTA_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_PROPUESTA_GS), ''999G999G999G999G999D00'');',
'        :P164_INGRESO_ESTIMADO_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_INGRESO_ESTIMADO_GS), ''999G999G999G999G999D00'');',
'        :P164_GARANTIA_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_GARANTIA_GS), ''999G999G999G999G999D00'');',
'        :P164_CODEUDORIA_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_CODEUDORIA_GS), ''999G999G999G999G999D00'');',
'',
'        :P164_LINEA_FINANCIERA_GS := TO_CHAR(:P164_LINEA_FINANCIERA_GS, ''999G999G999G999G999D00'');',
'        :P164_LINEA_PATRIMONIO_GS := TO_CHAR(:P164_LINEA_PATRIMONIO_GS, ''999G999G999G999G999D00'');',
'        --:P164_LINEA_FINANCIERA_GS := ''1500'';',
'        --:P164_LINEA_PATRIMONIO_GS := ''2000'';',
'        :P164_LINEA_FINANCIERA_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_LINEA_FINANCIERA_GS), ''999G999G999G999G999D00'');',
'        :P164_LINEA_PATRIMONIO_US := TO_CHAR(CCCALIFC.fc_calcular_monto_us(:P164_LINEA_PATRIMONIO_GS), ''999G999G999G999G999D00'');',
'',
'',
'',
'                                                 ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33477448014764229)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DA_GUARDAR_CAMBIOS_CLIENTE_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'CCCALIFC.pr_confirmar_accion_cliente (:P164_COD_CLIENTE, :P164_SEQ_ID_CLIENTE);',
'CCCALIFC.pr_confirmar_accion_calif (:P164_COD_CLIENTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ups... ocurri\00F3 un error inesperado.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los datos se guardaron exitosamente!')
);
wwv_flow_imp.component_end;
end;
/
