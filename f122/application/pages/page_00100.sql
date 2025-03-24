prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Vendedores'
,p_alias=>'CARGA-DE-VENDEDORES'
,p_step_title=>'Carga de Vendedores'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221223170246'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17518695001162793)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17520315435169910)
,p_plug_name=>'Carga de Vendedores'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15197958448872536)
,p_plug_name=>'FV_VENDEDORES'
,p_parent_plug_id=>wwv_flow_imp.id(17520315435169910)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SEQ_ID,',
'       c001 COD_VENDEDOR,',
'       c002 COD_PERSONA, ',
'       c003 COD_EMPLEADO, ',
'       c004 ESTADO,',
'       c005 COD_ZONA,',
'       c006 COD_GRUPO,',
'       c007 ES_DE_CALLE,',
'       c008 COD_VENDEDOR_ANTERIOR,',
'       c009 DESCRIPCION,',
'       c010 COD_VENDEDOR_GRU,',
'       c011 TIT_COMISION,',
'       c012 COD_TIPO_GRUPO,',
'       c013 COD_VENDEDOR_COMP1,',
'       c014 COD_VENDEDOR_COMP2,',
'       c015 IND_COMPARTIDO,',
'       c016 COD_SUPERVISOR,',
'       c017 SECTOR_DERIVAR,',
'       c018 HABILITADO_CANAL_VERDE,',
'       c019 ZONA_VENDEDOR,',
'       c020 FECHA_ALTA,',
'       c021 COD_USUARIO_ALTA,',
'       c022 ROW_ID,',
'       c023 CONTROL,',
'       c024 NOMBRE_VENDEDOR,',
'       c025 NOMB_ZONA,',
'       c026 NOMB_CAT_VENDEDOR,',
'       c027 DESC_COD_TIPO_GRUP,',
'       c028 NOMB_SUPERVISOR,',
'       c029 NOMB_VENDEDOR_GRU,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  from APEX_COLLECTIONS',
' where COLLECTION_NAME = ''COLEC_FV_VENDEDORES''',
'   and (c023 = ''U'' or c023 = ''I'' or c023 is NULL)',
' order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FV_VENDEDORES'
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
 p_id=>wwv_flow_imp.id(15198094960872537)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>15198094960872537
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15198309749872540)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo de Persona')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17520177249169908)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932251152277828)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>220
,p_column_identifier=>'AV'
,p_column_label=>'Cod. Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932393636277829)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>230
,p_column_identifier=>'AW'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932447138277830)
,p_db_column_name=>'ESTADO'
,p_display_order=>240
,p_column_identifier=>'AX'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932520960277831)
,p_db_column_name=>'COD_ZONA'
,p_display_order=>250
,p_column_identifier=>'AY'
,p_column_label=>'Cod. Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932695109277832)
,p_db_column_name=>'COD_GRUPO'
,p_display_order=>260
,p_column_identifier=>'AZ'
,p_column_label=>'Cod. Grupo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932752424277833)
,p_db_column_name=>'ES_DE_CALLE'
,p_display_order=>270
,p_column_identifier=>'BA'
,p_column_label=>'Es De Calle'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932817473277834)
,p_db_column_name=>'COD_VENDEDOR_ANTERIOR'
,p_display_order=>280
,p_column_identifier=>'BB'
,p_column_label=>'Cod Vendedor Anterior'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30932991386277835)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>290
,p_column_identifier=>'BC'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933023110277836)
,p_db_column_name=>'COD_VENDEDOR_GRU'
,p_display_order=>300
,p_column_identifier=>'BD'
,p_column_label=>'Cod. Vendedor Gru'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933119162277837)
,p_db_column_name=>'TIT_COMISION'
,p_display_order=>310
,p_column_identifier=>'BE'
,p_column_label=>unistr('Tit. Comisi\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933200884277838)
,p_db_column_name=>'COD_TIPO_GRUPO'
,p_display_order=>320
,p_column_identifier=>'BF'
,p_column_label=>'Cod. Tipo Grupo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933330519277839)
,p_db_column_name=>'COD_VENDEDOR_COMP1'
,p_display_order=>330
,p_column_identifier=>'BG'
,p_column_label=>'Cod Vendedor Comp1'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933468400277840)
,p_db_column_name=>'COD_VENDEDOR_COMP2'
,p_display_order=>340
,p_column_identifier=>'BH'
,p_column_label=>'Cod Vendedor Comp2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933596132277841)
,p_db_column_name=>'IND_COMPARTIDO'
,p_display_order=>350
,p_column_identifier=>'BI'
,p_column_label=>'Ind Compartido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933675973277842)
,p_db_column_name=>'COD_SUPERVISOR'
,p_display_order=>360
,p_column_identifier=>'BJ'
,p_column_label=>'Cod. Supervisor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933793735277843)
,p_db_column_name=>'SECTOR_DERIVAR'
,p_display_order=>370
,p_column_identifier=>'BK'
,p_column_label=>'Sector Derivar'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933832443277844)
,p_db_column_name=>'HABILITADO_CANAL_VERDE'
,p_display_order=>380
,p_column_identifier=>'BL'
,p_column_label=>'Habilitado Canal Verde'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30933907426277845)
,p_db_column_name=>'ZONA_VENDEDOR'
,p_display_order=>390
,p_column_identifier=>'BM'
,p_column_label=>'Zona Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30934020971277846)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>400
,p_column_identifier=>'BN'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30934182336277847)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>410
,p_column_identifier=>'BO'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30934230283277848)
,p_db_column_name=>'ROW_ID'
,p_display_order=>420
,p_column_identifier=>'BP'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30934309705277849)
,p_db_column_name=>'CONTROL'
,p_display_order=>430
,p_column_identifier=>'BQ'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30934465442277850)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>440
,p_column_identifier=>'BR'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368236439215801)
,p_db_column_name=>'NOMB_ZONA'
,p_display_order=>450
,p_column_identifier=>'BS'
,p_column_label=>'Nombre Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368364976215802)
,p_db_column_name=>'NOMB_CAT_VENDEDOR'
,p_display_order=>460
,p_column_identifier=>'BT'
,p_column_label=>'Nomb Cat Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368459419215803)
,p_db_column_name=>'DESC_COD_TIPO_GRUP'
,p_display_order=>470
,p_column_identifier=>'BU'
,p_column_label=>'Desc. Cod. Tipo Grup'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368512741215804)
,p_db_column_name=>'NOMB_SUPERVISOR'
,p_display_order=>480
,p_column_identifier=>'BV'
,p_column_label=>'Nombre Supervisor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368631213215805)
,p_db_column_name=>'NOMB_VENDEDOR_GRU'
,p_display_order=>490
,p_column_identifier=>'BW'
,p_column_label=>'Nombre Vendedor Gru'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368751206215806)
,p_db_column_name=>'EDITAR'
,p_display_order=>500
,p_column_identifier=>'BX'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P100_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33368804930215807)
,p_db_column_name=>'BORRAR'
,p_display_order=>510
,p_column_identifier=>'BY'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P100_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17544532269628719)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'175446'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_VENDEDOR:COD_PERSONA:NOMBRE_VENDEDOR:DESCRIPCION:COD_VENDEDOR_GRU:NOMB_VENDEDOR_GRU:ESTADO:TIT_COMISION:ZONA_VENDEDOR:COD_ZONA:NOMB_ZONA:COD_GRUPO:COD_TIPO_GRUPO:DESC_COD_TIPO_GRUP:COD_SUPERVISOR:NOMB_SUPERVISOR:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22168301843082401)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22168664207082404)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_button_name=>'BTGUARDAR_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17521416737169921)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(17520315435169910)
,p_button_name=>'BTAGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'COPY'
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
 p_id=>wwv_flow_imp.id(17521572061169922)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(17520315435169910)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17522763434169934)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(17520315435169910)
,p_button_name=>'BTEDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17522856531169935)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(17520315435169910)
,p_button_name=>'BTELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17520486140169911)
,p_name=>'P100_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>unistr('C\00F3digo de Vendedor')
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
 p_id=>wwv_flow_imp.id(17520505453169912)
,p_name=>'P100_COD_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_FVVENDED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ltrim(rtrim(nvl(nombre, nomb_fantasia))) D,',
'       cod_persona R',
'  FROM personas',
' ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17520669487169913)
,p_name=>'P100_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(17520700949169914)
,p_name=>'P100_VEND_AGRUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>'Agrupacion Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUPERVISOR_VENDEDOR_FVVENDED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, ',
'       v.cod_vendedor ',
'  from fv_vendedores v, ',
'       personas p ',
' where v.cod_empresa = :P_COD_EMPRESA ',
'   and v.cod_persona = p.cod_persona ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17520875693169915)
,p_name=>'P100_TIT_COM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>unistr('T\00EDtulo de Comisi\00F3n')
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
 p_id=>wwv_flow_imp.id(17520901808169916)
,p_name=>'P100_ZONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONAS_FVVENDED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion D, ',
'         cod_zona R',
'    from zonas_geograficas',
'order by descripcion;',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17521039024169917)
,p_name=>'P100_GRUPO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>'Grupo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRUPOS_FVVENDED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_grupo_comision ',
'  from fv_grupos_comision ',
' where cod_empresa = :P_COD_EMPRESA ',
'order by 1',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17521147750169918)
,p_name=>'P100_ESTADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_item_default=>'''N'''
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17521245412169919)
,p_name=>'P100_CAT_VEND'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>unistr('Categor\00EDa  Vendedor')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CAT_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_tipo_grupo||'' - '' ||descripcion D, ',
'       cod_tipo_grupo R ',
'  FROM FV_CATEGORIAS_VENDEDORES',
' WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17521335392169920)
,p_name=>'P100_SUPERVISOR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUPERVISOR_VENDEDOR_FVVENDED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, ',
'       v.cod_vendedor ',
'  from fv_vendedores v, ',
'       personas p ',
' where v.cod_empresa = :P_COD_EMPRESA ',
'   and v.cod_persona = p.cod_persona ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17521915506169926)
,p_name=>'P100_DELETE_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15197958448872536)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17522016642169927)
,p_name=>'P100_EDIT_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15197958448872536)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18333680172230343)
,p_name=>'P100_ZONA_VEND'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22168301843082401)
,p_prompt=>'Zona de Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43198760038889716)
,p_name=>'P100_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17520315435169910)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18333205437230339)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22168664207082404)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18333367950230340)
,p_event_id=>wwv_flow_imp.id(18333205437230339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P100_COD_VENDEDOR,P100_COD_PERSONA,P100_DESCRIPCION,P100_VEND_AGRUP,P100_TIT_COM,P100_ZONA,P100_GRUPO,P100_CAT_VEND,P100_SUPERVISOR,P100_ESTADO,P100_ZONA_VEND'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18333486317230341)
,p_event_id=>wwv_flow_imp.id(18333205437230339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVVENDED.ADD_COL(pcod_vendedor   => :P100_COD_VENDEDOR, ',
'                     pcod_persona    => :P100_COD_PERSONA,',
'                     pdescripcion    => :P100_DESCRIPCION, ',
'                     pvend_agrup     => :P100_VEND_AGRUP, ',
'                     pcod_empresa    => :P_COD_EMPRESA, ',
'                     ptit_com        => :P100_TIT_COM,',
'                     pzona           => :P100_ZONA,',
'                     pgrupo_com      => :P100_GRUPO,',
'                     pcat_vend       => :P100_CAT_VEND,',
'                     pcod_supervisor => :P100_SUPERVISOR,',
'                     pestado         => :P100_ESTADO,',
'                     pcod_usuario    => :P_COD_USUARIO,',
'                     pzona_vend      => :P100_ZONA_VEND);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PAG.100 DA_AGREGAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P100_COD_VENDEDOR,P100_COD_PERSONA,P100_DESCRIPCION,P100_VEND_AGRUP,P100_TIT_COM,P100_ZONA,P100_GRUPO,P100_CAT_VEND,P100_SUPERVISOR,P100_ESTADO,P100_ZONA_VEND'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P100_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20110358604427408)
,p_event_id=>wwv_flow_imp.id(18333205437230339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVVENDED.EDIT_COL(pseq_id         => :P100_EDIT_DATA,',
'                      pcod_vendedor   => :P100_COD_VENDEDOR, ',
'                      pcod_persona    => :P100_COD_PERSONA,',
'                      pdescripcion    => :P100_DESCRIPCION, ',
'                      pvend_agrup     => :P100_VEND_AGRUP, ',
'                      pcod_empresa    => :P_COD_EMPRESA, ',
'                      ptit_com        => :P100_TIT_COM,',
'                      pzona           => :P100_ZONA,',
'                      pgrupo_com      => :P100_GRUPO,',
'                      pcat_vend       => :P100_CAT_VEND,',
'                      pcod_supervisor => :P100_SUPERVISOR,',
'                      pestado         => :P100_ESTADO,',
'                      pcod_usuario    => :P_COD_USUARIO,',
'                      pzona_vend      => :P100_ZONA_VEND);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PAG.100 DA_AGREGAR.EDITAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P100_COD_VENDEDOR,P100_COD_PERSONA,P100_EDIT_DATA,P100_DESCRIPCION,P100_VEND_AGRUP,P100_TIT_COM,P100_ZONA,P100_GRUPO,P100_CAT_VEND,P100_ZONA_VEND,P100_SUPERVISOR,P100_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P100_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22168701475082405)
,p_event_id=>wwv_flow_imp.id(18333205437230339)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22168301843082401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18333573903230342)
,p_event_id=>wwv_flow_imp.id(18333205437230339)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15197958448872536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20109906690427404)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20110058614427405)
,p_event_id=>wwv_flow_imp.id(20109906690427404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P100_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20110140350427406)
,p_event_id=>wwv_flow_imp.id(20109906690427404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVVENDED.CARGAR_DATOS_EDIT(pedit_data      => :P100_EDIT_DATA,',
'                               pcod_vendedor   => :P100_COD_VENDEDOR, ',
'                               pcod_persona    => :P100_COD_PERSONA,',
'                               pdescripcion    => :P100_DESCRIPCION, ',
'                               pvend_agrup     => :P100_VEND_AGRUP, ',
'                               ptit_com        => :P100_TIT_COM,',
'                               pzona           => :P100_ZONA,',
'                               pgrupo_com      => :P100_GRUPO,',
'                               pcat_vend       => :P100_CAT_VEND,',
'                               pcod_supervisor => :P100_SUPERVISOR,',
'                               pestado         => :P100_ESTADO,',
'                               pzona_vend      => :P100_ZONA_VEND);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT PAG. 100 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P100_EDIT_DATA'
,p_attribute_03=>'P100_COD_VENDEDOR,P100_COD_PERSONA,P100_DESCRIPCION,P100_VEND_AGRUP,P100_TIT_COM,P100_ZONA,P100_GRUPO,P100_CAT_VEND,P100_ZONA_VEND,P100_ESTADO,P100_SUPERVISOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P100_EDIT_DATA'
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
 p_id=>wwv_flow_imp.id(22168845881082406)
,p_event_id=>wwv_flow_imp.id(20109906690427404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22168301843082401)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20110797825427412)
,p_name=>'DA_PR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17522763434169934)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20110830849427413)
,p_event_id=>wwv_flow_imp.id(20110797825427412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVVENDED.GUARDAR_EDICION;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_EDITAR PAG 100 ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20110906071427414)
,p_event_id=>wwv_flow_imp.id(20110797825427412)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15197958448872536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20111094838427415)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20111153035427416)
,p_event_id=>wwv_flow_imp.id(20111094838427415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P100_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20111297302427417)
,p_event_id=>wwv_flow_imp.id(20111094838427415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVVENDED.DELETE_COL(pseq_id => :P100_DELETE_DATA, ',
'                        p_col   => ''COLEC_FV_VENDEDORES'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 100 DELETE COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P100_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20111371805427418)
,p_event_id=>wwv_flow_imp.id(20111094838427415)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15197958448872536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20111420751427419)
,p_name=>'DA_PR_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17522856531169935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20111545849427420)
,p_event_id=>wwv_flow_imp.id(20111420751427419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVVENDED.ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_ELIMINAR PAG 100 ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20111668000427421)
,p_event_id=>wwv_flow_imp.id(20111420751427419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15197958448872536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22168434817082402)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17521416737169921)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18333893604230345)
,p_event_id=>wwv_flow_imp.id(22168434817082402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_COD_VENDEDOR,P100_COD_PERSONA,P100_DESCRIPCION,P100_VEND_AGRUP,P100_TIT_COM,P100_ZONA,P100_GRUPO,P100_CAT_VEND,P100_ZONA_VEND,P100_SUPERVISOR,P100_ESTADO,P100_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22168502710082403)
,p_event_id=>wwv_flow_imp.id(22168434817082402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22168301843082401)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17520263486169909)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_FV_VENDEDORES'');',
':P100_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'BEGIN',
'',
'    FVVENDED.CARGAR_COLEC_FV_VEND(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18334038072230347)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVVENDED.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG. 100 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17521572061169922)
);
wwv_flow_imp.component_end;
end;
/
