prompt --application/pages/page_00494
begin
--   Manifest
--     PAGE: 00494
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
 p_id=>494
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Linea de Productos para Servicio Tecnico - STLIPRST'
,p_alias=>'STLIPRST'
,p_step_title=>'Linea de Productos para Servicio Tecnico - STLIPRST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240702101906'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146907109406183310)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147070171550832350)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147210669492436521)
,p_plug_name=>'Linea de Productos para Servicio Tecnico'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146908533639183324)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(147210669492436521)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.COD_ARTICULO,',
'       c.DESCRIPCION,',
'       c.COD_LINEA,',
'       (SELECT DESCRIPCION',
'        FROM st_linea_ST s',
'        WHERE COD_EMPRESA=:P_COD_EMPRESA AND c.cod_linea=s.cod_linea)DESC_LINEA,',
'       c.COD_ART_CORTO,',
'       c.COD_LINEA_ST,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'  from ST_ARTICULOS c',
'  WHERE cod_empresa=''1'' and cod_rubro=''PR'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(146908966137183328)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>146908966137183328
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146909044077183329)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146909193081183330)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Descripcion Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146909724435183336)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod. Linea'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147049060460832339)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Cod. Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147055272322832301)
,p_db_column_name=>'COD_LINEA_ST'
,p_display_order=>1230
,p_column_identifier=>'DS'
,p_column_label=>'Cod Linea ST'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147068213948832331)
,p_db_column_name=>'DESC_LINEA'
,p_display_order=>2530
,p_column_identifier=>'IU'
,p_column_label=>'Linea ST'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147068494156832333)
,p_db_column_name=>'EDITAR'
,p_display_order=>2540
,p_column_identifier=>'IV'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P494_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147068527125832334)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>2550
,p_column_identifier=>'IW'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P494_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147068665510832335)
,p_db_column_name=>'ROWID'
,p_display_order=>2560
,p_column_identifier=>'IX'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(147149847162820418)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1471499'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ARTICULO:COD_ART_CORTO:DESCRIPCION:COD_LINEA_ST:DESC_LINEA:ELIMINAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147209324889436508)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(147070171550832350)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147209262639436507)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(147070171550832350)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147069618238832345)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(146908533639183324)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907229483183311)
,p_name=>'P494_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907377981183312)
,p_name=>'P494_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907472255183313)
,p_name=>'P494_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907596161183314)
,p_name=>'P494_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907641337183315)
,p_name=>'P494_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907761477183316)
,p_name=>'P494_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907830778183317)
,p_name=>'P494_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146907917605183318)
,p_name=>'P494_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146908088748183319)
,p_name=>'P494_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146908106734183320)
,p_name=>'P494_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146908263089183321)
,p_name=>'P494_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146908304651183322)
,p_name=>'P494_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147068722391832336)
,p_name=>'P494_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146908533639183324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147068857846832337)
,p_name=>'P494_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146908533639183324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147068953921832338)
,p_name=>'P494_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146908533639183324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147208673533436501)
,p_name=>'P494_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147070171550832350)
,p_prompt=>'Cod  Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_ STLIPRST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion, a.cod_articulo, a.cod_art_corto',
'from st_articulos a',
'where a.cod_empresa= :P_cod_empresa',
'and a.cod_rubro=''PR'''))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(147208784559436502)
,p_name=>'P494_COD_LINEA_ST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(147070171550832350)
,p_prompt=>'Linea STA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COD_LINEA_SET_STLIPRST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_LINEA',
'FROM st_linea_ST',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'ORDER BY 1;'))
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
 p_id=>wwv_flow_imp.id(147208896240436503)
,p_name=>'P494_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147070171550832350)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147209405071436509)
,p_name=>'P494_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147070171550832350)
,p_prompt=>'Articulo'
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
 p_id=>wwv_flow_imp.id(147209591564436510)
,p_name=>'P494_ERR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(146908533639183324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147210950094436524)
,p_name=>'P494_COD_RUBRO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(146907109406183310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147069042295832339)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P494_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147069175405832340)
,p_event_id=>wwv_flow_imp.id(147069042295832339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147069251054832341)
,p_event_id=>wwv_flow_imp.id(147069042295832339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE ST_ARTICULOS',
'    WHERE ROWID = :P494_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        :P494_ERR := ''ERROR: no puede eliminar este registro '';',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P494_ELIMINAR'
,p_attribute_03=>'P494_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147069314729832342)
,p_event_id=>wwv_flow_imp.id(147069042295832339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146908533639183324)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P494_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147069716533832346)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147069618238832345)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147210863905436523)
,p_event_id=>wwv_flow_imp.id(147069716533832346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P494_COD_ARTICULO,P494_COD_ART_CORTO,P494_COD_LINEA_ST,P494_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147069955220832348)
,p_event_id=>wwv_flow_imp.id(147069716533832346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P494_COD_ARTICULO := STLIPRST.FN_COD_ARTICULO;',
'NULL;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147209101574436506)
,p_event_id=>wwv_flow_imp.id(147069716533832346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147070171550832350)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147209666656436511)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147209262639436507)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147209781727436512)
,p_event_id=>wwv_flow_imp.id(147209666656436511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P494_ERR := null;',
':P494_COD_RUBRO := ''PR'';',
'    IF :P494_COD_ARTICULO is not null ',
'    and :P494_DESCRIPCION is not null and :P494_COD_ART_CORTO is not null',
'    and :P494_COD_LINEA_ST is not null and :P494_COD_ART_CORTO is not null then',
'            IF :P494_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO ST_ARTICULOS (',
'                        COD_EMPRESA,',
'                        COD_ARTICULO,',
'                        DESCRIPCION,',
'                        COD_ART_CORTO,',
'                        COD_LINEA_ST,',
'                        COD_RUBRO',
'                ) VALUES (',
'                         :P_COD_EMPRESA,',
'                         :P494_COD_ARTICULO,',
'                         :P494_DESCRIPCION,',
'                         :P494_COD_ART_CORTO,',
'                         :P494_COD_LINEA_ST,',
'                         :P494_COD_RUBRO      ',
'                );',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE ST_ARTICULOS SET',
'              --          COD_EMPRESA=:P494_COD_EMPRESA,',
'              --          COD_ARTICULO =:P494_COD_ARTICULO,',
'                        DESCRIPCION =:P494_DESCRIPCION,',
'                        cod_art_corto =:P494_COD_ART_CORTO,',
'                        COD_LINEA_ST =:P494_COD_LINEA_ST',
'                WHERE ROWID = :P494_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P494_COD_ARTICULO is null then :P494_ERR := ''Por favor: ingrese el campo "COD_ARTICULO" '';',
'            when :P494_COD_ARTICULO is null then :P494_ERR := ''Por favor: ingrese el campo "ART_CORTO" '';',
'            when :P494_DESCRIPCION is null then :P494_ERR := ''Por favor: ingrese el campo "DESCRIPCION"''; ',
'            when :P494_COD_LINEA_ST is null then :P494_ERR := ''Por favor: ingrese el campo "LINEA_ST" '';       ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P494_COD_ARTICULO,P494_DESCRIPCION,P494_COD_ART_CORTO,P494_COD_LINEA_ST,P494_COD_EMPRESA,P494_COD_RUBRO'
,p_attribute_03=>'P494_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147209883095436513)
,p_event_id=>wwv_flow_imp.id(147209666656436511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146908533639183324)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P494_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147209969927436514)
,p_event_id=>wwv_flow_imp.id(147209666656436511)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147070171550832350)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P494_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147210055210436515)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P494_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147210176734436516)
,p_event_id=>wwv_flow_imp.id(147210055210436515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147070171550832350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147210245932436517)
,p_event_id=>wwv_flow_imp.id(147210055210436515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P494_EDITAR is not null then',
'        select COD_ARTICULO,',
'                DESCRIPCION,',
'                COD_ART_CORTO,',
'                COD_LINEA_ST',
'        into :P494_COD_ARTICULO,',
'        :P494_DESCRIPCION,',
'        :P494_COD_ART_CORTO,',
'        :P494_COD_LINEA_ST',
'        from ST_ARTICULOS',
'        where rowid = :P494_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P494_EDITAR'
,p_attribute_03=>'P494_COD_ARTICULO,P494_DESCRIPCION,P494_COD_LINEA_ST,P494_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147210327855436518)
,p_name=>'DA_ERR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P494_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147210555108436520)
,p_event_id=>wwv_flow_imp.id(147210327855436518)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P494_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P494_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339827135217701518)
,p_name=>'da_articulo'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P494_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339827235938701519)
,p_event_id=>wwv_flow_imp.id(339827135217701518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select cod_articulo, descripcion',
'INTO :P494_COD_ARTICULO,:P494_DESCRIPCION from st_articulos where cod_empresa=''1'' and cod_art_corto=:P494_COD_ART_CORTO AND ROWNUM=1;',
'end;'))
,p_attribute_02=>'P494_COD_ART_CORTO'
,p_attribute_03=>'P494_COD_ARTICULO,P494_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147068355061832332)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P494_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P494_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P494_COD_MODULO := NVL(:P_COD_MODULO,''st'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
