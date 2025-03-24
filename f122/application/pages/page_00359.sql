prompt --application/pages/page_00359
begin
--   Manifest
--     PAGE: 00359
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
 p_id=>359
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Autorizaci\00F3n de permisos - RHAUTPER')
,p_alias=>'RHAUTPER'
,p_step_title=>unistr('Autorizaci\00F3n de permisos - RHAUTPER')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , .a-IRR-headerLabel{color:yellow; }',
'.a-IRR-header , .a-IRR-headerLabel{    background: #003a85!important;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250217223351'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99768573072877227)
,p_plug_name=>'B_PERMISOS_PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99768962108877231)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99769465946877236)
,p_plug_name=>'B_PERMISOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'        seq_id SEQ_ID_PERMISO,',
'        n001 NRO_MOVIMIENTO,',
'        c001 COD_EMPLEADO,',
'        c002 IND_TIPO,',
'        c003 COD_MOTIVO,',
'        d001 FEC_INICIAL,',
'        d002 FEC_FINAL,',
'        n002 CANT_DIAS,',
'        TO_CHAR(d003, ''HH24:MI'') HORA_INICIAL,',
'        TO_CHAR(d004, ''HH24:MI'') HORA_FINAL,  ',
'        --d003 HORA_INICIAL,',
'        --d004 HORA_FINAL,',
'        n003 CANT_HORAS,',
'        c004 OBSERVACION,',
'        c005 IND_DESCUENTO,',
'        c006 REL_AUTORIZACION,',
'        c007 REL_RECHAZO,',
'        c008 ESTADO,',
'        APEX_ITEM.CHECKBOX (p_idx         => 1,',
'                            p_value       => c009,',
'                            p_attributes  => (case c009',
'                                                 when ''S'' then ''checked ''',
'                                             else ''N''',
'                                                 end ) ||''disabled"'' ) as IND_EXC_ALMUERZO,',
'        --c009 IND_EXC_ALMUERZO,',
'        c010 PERIODO,',
'        c011 COD_USR_INS,',
'        c012 FEC_HOR_INS,',
'        c013 COD_USR_UPD,',
'        c014 FEC_HOR_UPD,',
'        c015 COD_USUARIO,',
'        c020 ROW_ID,',
'        NULL DETALLES,',
'        NULL RECHAZAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''RH_MOV_PERMISOS''',
'and (nvl(c008,''P'') NOT IN  (''R'',''N'',''A''))',
'ORDER BY SEQ_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_PERMISOS'
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
 p_id=>wwv_flow_imp.id(99769902774877241)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Sin Datos'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>99769902774877241
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770027857877242)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770143258877243)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(100839336615272773)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770298316877244)
,p_db_column_name=>'IND_TIPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Ausentismo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(100855520346451831)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770384115877245)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(100871036692702203)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770443859877246)
,p_db_column_name=>'FEC_INICIAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770525217877247)
,p_db_column_name=>'FEC_FINAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99770627968877248)
,p_db_column_name=>'CANT_DIAS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cant Dias'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100780932511494401)
,p_db_column_name=>'CANT_HORAS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cant Horas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781053902494402)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Observacion del Ausentismo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781106057494403)
,p_db_column_name=>'IND_DESCUENTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ind Descuento'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(100857313860464625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781216822494404)
,p_db_column_name=>'REL_AUTORIZACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Rel Autorizacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781325643494405)
,p_db_column_name=>'REL_RECHAZO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Rel Rechazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781463547494406)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781631226494408)
,p_db_column_name=>'PERIODO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781770910494409)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781827339494410)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100781971798494411)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100782077339494412)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100782109270494413)
,p_db_column_name=>'ROW_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100782320127494415)
,p_db_column_name=>'RECHAZAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Rechazar'
,p_column_link=>'javascript:$s(''P359_SEQ_ID_RECHAZAR'',''#SEQ_ID_PERMISO#'');'
,p_column_linktext=>'<span class="fa fa-ban" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100782491849494416)
,p_db_column_name=>'DETALLES'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Seleccione el Ausentismo'
,p_column_link=>'javascript:$s(''P359_SEQ_ID_DETALLES'',''#SEQ_ID_PERMISO#'');'
,p_column_linktext=>'<span class="fa fa-check" aria-hidden="true" title="Seleccionar"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100783183401494423)
,p_db_column_name=>'SEQ_ID_PERMISO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Seq Id Permiso'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100784235882494434)
,p_db_column_name=>'IND_EXC_ALMUERZO'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Indicar  Excluye Almuerzo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101168509675670808)
,p_db_column_name=>'HORA_INICIAL'
,p_display_order=>270
,p_column_identifier=>'AC'
,p_column_label=>'Hora Inicial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101168611052670809)
,p_db_column_name=>'HORA_FINAL'
,p_display_order=>280
,p_column_identifier=>'AD'
,p_column_label=>'Hora Final'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(375409917591491620)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>290
,p_column_identifier=>'AE'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(100793589579503145)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1007936'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DETALLES:NRO_MOVIMIENTO:COD_EMPLEADO:IND_TIPO:COD_MOTIVO:OBSERVACION:FEC_INICIAL:FEC_FINAL:HORA_INICIAL:HORA_FINAL:CANT_HORAS:CANT_DIAS:IND_DESCUENTO:IND_EXC_ALMUERZO:RECHAZAR:'
,p_sort_column_1=>'FEC_FINAL'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FEC_INICIAL'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'NRO_MOVIMIENTO'
,p_sort_direction_3=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100782641248494418)
,p_plug_name=>'B_PERMISOS_BOTONES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100784631683494438)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(100782641248494418)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100784935310494441)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(100782641248494418)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>7
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100782969842494421)
,p_plug_name=>'SEQ_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100785117100494443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(100784935310494441)
,p_button_name=>'BTN_NIVEL2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobador Compensaciones NGO'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100782739727494419)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(100784631683494438)
,p_button_name=>'BTN_NIVEL1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobador Superior Directo'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99768652010877228)
,p_name=>'P359_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99768573072877227)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99768711605877229)
,p_name=>'P359_COD_EMPLEADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99768573072877227)
,p_prompt=>'Solicitante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_RHAUTPER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT em.cod_empleado || '' - '' || ltrim(pe.nombre) D, ',
'       em.cod_empleado R',
'  from rh_empleados em,',
'       personas pe',
' where em.cod_empresa = :P_COD_EMPRESA',
'   and em.cod_persona = pe.cod_persona ',
'   and nvl(em.activo, ''N'') = ''S''',
'   /*and (nvl(:P_359_IND_VISUALIZA_TODO, ''N'') = ''S'' ',
'        OR (em.cod_empresa, em.cod_empleado) IN (select e.cod_empresa, e.cod_empleado',
'                                                 from rh_empleados e',
'                                                where e.cod_empresa = em.cod_empresa',
'                                                  and e.cod_empleado= em.cod_empleado',
'                                                  and e.cod_persona in (select u.cod_persona',
'                                                                          from usuarios u',
'                                                                          where u.cod_persona = e.cod_persona',
'                                                                           and u.cod_usuario = :P_COD_USUARIO)))',
' order by pe.nombre asc*/      '))
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
 p_id=>wwv_flow_imp.id(99768801050877230)
,p_name=>'P359_COD_MOTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99768573072877227)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS_RHAUTPER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo || '' - '' || descripcion D, ',
'       cod_motivo R, ',
'       decode(deducir, ''S'', ''DESCUENTA'', ''NO DESCUENTA'', null) descuenta, ',
'       nvl(deducir, ''N'') descuenta2',
'  from rh_motivos',
' where cod_empresa = :P_COD_EMPRESA',
'   --and ind_tipo = :P356_ind_tipo',
' order by descripcion',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(99769050959877232)
,p_name=>'P359_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99769122704877233)
,p_name=>'P359_IND_AUTORIZA_MOV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99769280867877234)
,p_name=>'P359_IND_VISUALIZA_TODO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99769315948877235)
,p_name=>'P359_COD_MOT_VACACIONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99769781625877239)
,p_name=>'P359_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99769882247877240)
,p_name=>'P359_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100782576046494417)
,p_name=>'P359_REL_AUTORIZACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(99768573072877227)
,p_prompt=>unistr('Relat. Autorizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(100783036100494422)
,p_name=>'P359_SEQ_ID_DETALLES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100782969842494421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100783550369494427)
,p_name=>'P359_SEQ_ID_RECHAZAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(100782969842494421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100783823706494430)
,p_name=>'P359_REL_RECHAZO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100783990189494431)
,p_name=>'P359_MENSAJE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100784039762494432)
,p_name=>'P359_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100784537350494437)
,p_name=>'P359_USUARIO_N1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100784631683494438)
,p_prompt=>'Usuario Aprobador Nivel 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100785084334494442)
,p_name=>'P359_USUARIO_N2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100784935310494441)
,p_prompt=>'Usuario Aprobador Nivel 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190137253785814027)
,p_name=>'P359_DESCONTAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99768573072877227)
,p_prompt=>'Descontar Si / No?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NO;N,SI;S'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(375410272224491623)
,p_name=>'P359_IND_AUT_NIVEL1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(375410357765491624)
,p_name=>'P359_IND_AUT_NIVEL2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99768962108877231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100783287800494424)
,p_name=>'DA_MOSTRAR_DET_PERMISO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P359_SEQ_ID_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100783370430494425)
,p_event_id=>wwv_flow_imp.id(100783287800494424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  ',
'',
'          c004 OBSERVACION,',
'          c001 COD_EMPLEADO,',
'          c003 COD_MOTIVO,',
'          c006 REL_AUTORIZACION,',
'          case',
'           when c003 = ''12'' then',
'            c005',
'           else null',
'          end as ind_descuento',
'',
'    INTO :P359_OBSERVACION, :P359_COD_EMPLEADO, :P359_COD_MOTIVO, :P359_REL_AUTORIZACION, :P359_DESCONTAR',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''RH_MOV_PERMISOS''',
'    AND SEQ_ID = :P359_SEQ_ID_DETALLES;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P359_SEQ_ID_DETALLES'
,p_attribute_03=>'P359_OBSERVACION,P359_COD_EMPLEADO,P359_COD_MOTIVO,P359_REL_AUTORIZACION,P359_DESCONTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100783634439494428)
,p_name=>'DA_RECHAZAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P359_SEQ_ID_RECHAZAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100783715422494429)
,p_event_id=>wwv_flow_imp.id(100783634439494428)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_REL_AUTORIZACION VARCHAR2(100);',
'',
'BEGIN',
'',
'    --APEX_DEBUG.ERROR(:P359_SEQ_ID_RECHAZAR);',
'    SELECT c007, c006',
'    INTO :P359_REL_RECHAZO, V_REL_AUTORIZACION',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''RH_MOV_PERMISOS''',
'    AND SEQ_ID = :P359_SEQ_ID_RECHAZAR;',
'',
'    --APEX_DEBUG.ERROR(:P359_REL_RECHAZO);',
'    --APEX_DEBUG.ERROR(V_REL_AUTORIZACION);',
'',
'    IF :P359_REL_RECHAZO IS NOT NULL THEN',
unistr('        :P359_MENSAJE := ''El movimiento ya fue rechazado. '';--, 1,''Autorizaci\00F3n de permisos'';'),
'        :P359_USUARIO_N1 := NULL;',
'        :P359_USUARIO_N2 := NULL;',
'    ELSE',
'		:P359_REL_RECHAZO := ''*''||:APP_USER /*:P359_COD_USUARIO*/||''*''||to_char(sysdate, ''dd/mm/yyyy hh24:mi:ss'')||''*'' ; ',
'		--:P359_REL_RECHAZO := ''test'';',
'        :P359_ESTADO := ''R'';',
'        ',
'',
'        RHAUTPER.PR_ACTUALIZAR_PLANILLA (SEQ_ID_MODIFICAR => :P359_SEQ_ID_RECHAZAR,',
'                                         PI_REL_RECHAZO => :P359_REL_RECHAZO,',
'                                         PI_ESTADO => :P359_ESTADO); ',
'		',
'        RHAUTPER.PR_VER_USUARIOS (PI_REL_AUTORIZACION => V_REL_AUTORIZACION,',
'                                  PI_USUARIO_N1 => :P359_USUARIO_N1,',
'                                  PI_USUARIO_N2 => :P359_USUARIO_N2);',
'',
'        :P359_MENSAJE := ''Rechazo del movimiento registrado.'';',
'		',
'		--configurar;',
'',
'END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P359_SEQ_ID_RECHAZAR,P359_REL_RECHAZO,APP_USER,P359_COD_USUARIO'
,p_attribute_03=>'P359_MENSAJE ,P359_REL_RECHAZO,P359_ESTADO,P359_USUARIO_N1,P359_USUARIO_N2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100784323084494435)
,p_event_id=>wwv_flow_imp.id(100783634439494428)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P359_MENSAJE.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014300294120312)
,p_event_id=>wwv_flow_imp.id(100783634439494428)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RHAUTPER.PR_CREAR_COL_MOV_PERM (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_COD_USUARIO => :P359_COD_USUARIO,',
'                                    PI_COD_FORMA => :P359_COD_FORMA,',
'                                    PI_IND_VISUALIZA_TODO => :P359_IND_VISUALIZA_TODO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P359_COD_USUARIO,P359_COD_FORMA,P359_IND_VISUALIZA_TODO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101167833419670801)
,p_event_id=>wwv_flow_imp.id(100783634439494428)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99769465946877236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014558213120314)
,p_event_id=>wwv_flow_imp.id(100783634439494428)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  ',
'',
'          null OBSERVACION,',
'          null COD_EMPLEADO,',
'          null COD_MOTIVO,',
'          null REL_AUTORIZACION,',
'          null ind_descuento',
'',
'    INTO :P359_OBSERVACION, :P359_COD_EMPLEADO, :P359_COD_MOTIVO, :P359_REL_AUTORIZACION, :P359_DESCONTAR',
'',
'    FROM dual;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P359_SEQ_ID_DETALLES'
,p_attribute_03=>'P359_OBSERVACION,P359_COD_EMPLEADO,P359_COD_MOTIVO,P359_REL_AUTORIZACION,P359_DESCONTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014426228120313)
,p_event_id=>wwv_flow_imp.id(100783634439494428)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99768573072877227)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100785606218494448)
,p_name=>'DA_NIVEL1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(100782739727494419)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100785730112494449)
,p_event_id=>wwv_flow_imp.id(100785606218494448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_REL_AUTORIZACION VARCHAR2(100);',
'    V_IND_TIPO         VARCHAR2(10);',
'    V_IND_DESCUENTO    VARCHAR2(10);',
'    V_ROW_ID           VARCHAR2(50);',
'    V_UPDATE_FLAG      BOOLEAN := FALSE;',
'BEGIN',
'',
'    IF :P359_SEQ_ID_DETALLES IS NULL AND :P359_SEQ_ID_RECHAZAR IS NULL THEN',
unistr('        :P359_MENSAJE := ''Debe seleccionar un registro de una planilla. (BOT\00D3N DETALLES)'';'),
'    ELSE',
'        :P359_MENSAJE := NULL;',
'        SELECT c006, c002, c005, c020',
'          INTO V_REL_AUTORIZACION, V_IND_TIPO, V_IND_DESCUENTO, V_ROW_ID ',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''RH_MOV_PERMISOS''',
'           AND SEQ_ID = :P359_SEQ_ID_DETALLES;',
'        ',
unistr('        -- Si V_REL_AUTORIZACION no contiene ''*1*'', es decir, a\00FAn no se ha autorizado.'),
'        IF NVL(INSTR(V_REL_AUTORIZACION, ''*1*'', 1, 1), 0) = 0 THEN',
'            -- Tipo PERMISO',
'            IF V_IND_TIPO = ''P'' THEN',
'                IF :P359_DESCONTAR IS NULL THEN',
'                    :P359_MENSAJE := ''Antes de Autorizar el permiso, debe indicar si el PERMISO sera con Descuento o sin Descuento.'';',
'                ELSE',
'                    V_REL_AUTORIZACION := V_REL_AUTORIZACION || ''*'' || ''1'' || ''*'' || :APP_USER || ''*'' || TO_CHAR(SYSDATE, ''dd/mm/yyyy hh24:mi:ss'') || ''*'';',
unistr('                    :P359_MENSAJE       := ''Autorizaci\00F3n realizada'';'),
'                    V_UPDATE_FLAG      := TRUE;',
'                END IF;',
'            ELSE',
'                V_REL_AUTORIZACION := V_REL_AUTORIZACION || ''*'' || ''1'' || ''*'' || :APP_USER || ''*'' || TO_CHAR(SYSDATE, ''dd/mm/yyyy hh24:mi:ss'') || ''*'';',
unistr('                :P359_MENSAJE       := ''Autorizaci\00F3n realizada'';'),
'                V_UPDATE_FLAG      := TRUE;',
'            END IF;',
'        ELSE',
'            :P359_MENSAJE := ''El movimiento ya se encuentra autorizado por el Aprobador Superior Directo de Nivel 1'';',
'        END IF;',
'        ',
unistr('        -- El UPDATE se ejecuta \00FAnicamente si el movimiento no estaba autorizado'),
'        IF V_UPDATE_FLAG THEN',
'            UPDATE RH_MOV_PERMISOS',
'               SET REL_AUTORIZACION = V_REL_AUTORIZACION,',
'                   IND_DESCUENTO    = :P359_DESCONTAR',
'             WHERE ROWID = V_ROW_ID;',
'        END IF;',
'        ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P359_SEQ_ID_DETALLES,P359_SEQ_ID_RECHAZAR'
,p_attribute_03=>'P359_MENSAJE,P359_USUARIO_N1,P359_USUARIO_N2'
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
 p_id=>wwv_flow_imp.id(100785881681494450)
,p_event_id=>wwv_flow_imp.id(100785606218494448)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P359_MENSAJE.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260843201498980906)
,p_event_id=>wwv_flow_imp.id(100785606218494448)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin ',
'BEGIN',
'',
'    RHAUTPER.PR_CREAR_COL_MOV_PERM (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_COD_USUARIO => :P359_COD_USUARIO,',
'                                    PI_COD_FORMA => :P359_COD_FORMA,',
'                                    PI_IND_VISUALIZA_TODO => :P359_IND_VISUALIZA_TODO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'BEGIN',
'     :P359_OBSERVACION :=null; ',
'     :P359_COD_EMPLEADO:=null;',
'     :P359_COD_MOTIVO:=null; ',
'     :P359_REL_AUTORIZACION :=null;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'end;'))
,p_attribute_03=>'P359_OBSERVACION, P359_COD_EMPLEADO, P359_COD_MOTIVO, P359_REL_AUTORIZACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101167911071670802)
,p_event_id=>wwv_flow_imp.id(100785606218494448)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99769465946877236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014640578120315)
,p_event_id=>wwv_flow_imp.id(100785606218494448)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  ',
'',
'          null OBSERVACION,',
'          null COD_EMPLEADO,',
'          null COD_MOTIVO,',
'          null REL_AUTORIZACION,',
'          null ind_descuento',
'',
'    INTO :P359_OBSERVACION, :P359_COD_EMPLEADO, :P359_COD_MOTIVO, :P359_REL_AUTORIZACION, :P359_DESCONTAR',
'',
'    FROM dual;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P359_SEQ_ID_DETALLES'
,p_attribute_03=>'P359_OBSERVACION,P359_COD_EMPLEADO,P359_COD_MOTIVO,P359_REL_AUTORIZACION,P359_DESCONTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260843480939980908)
,p_event_id=>wwv_flow_imp.id(100785606218494448)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99768573072877227)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101168067544670803)
,p_name=>'DA_NIVEL2'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(100785117100494443)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101168135480670804)
,p_event_id=>wwv_flow_imp.id(101168067544670803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_REL_AUTORIZACION VARCHAR2(100);',
'    V_IND_TIPO VARCHAR2(10);',
'    V_IND_DESCUENTO VARCHAR2(10);',
'    V_ROW_ID VARCHAR2(50);',
'    V_ESTADO VARCHAR2(10);',
'BEGIN',
'',
'    IF :P359_SEQ_ID_DETALLES IS NULL AND :P359_SEQ_ID_RECHAZAR IS NULL THEN',
unistr('        :P359_MENSAJE := ''Debe seleccionar un registro de una planilla. (BOT\00D3N DETALLES)'';'),
'    ',
'    ELSE',
'        :P359_MENSAJE := NULL;',
'        SELECT c006, c002, c005, c020',
'        INTO V_REL_AUTORIZACION, V_IND_TIPO, V_IND_DESCUENTO, V_ROW_ID ',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''RH_MOV_PERMISOS''',
'        AND /*SEQ_ID = :P359_SEQ_ID_RECHAZAR OR*/ SEQ_ID = :P359_SEQ_ID_DETALLES;    ',
'',
'        IF nvl(instr(V_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 THEN',
unistr('            :P359_MENSAJE := ''No puede autorizar el segundo nivel sin autorizar previamente el primer nivel. '' || 1 || '' Autorizaci\00F3n de permisos'';'),
'        ELSE',
'		    IF nvl(instr(V_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 THEN',
'				--Tipo PERMISO',
'				IF V_IND_TIPO IN (''P'') THEN',
unistr('					  IF V_IND_DESCUENTO IS NULL THEN --Por seguridad, se supone que al llegar a este nivel ya debe estar definido si se aplicar\00E1 o no descuento'),
unistr('					  		:P359_MENSAJE := ''No puede autorizar el movimiento sin indicar si el PERMISO es con descuento o sin descuento. '' || 2 || '' Autorizaci\00F3n de permisos'';'),
'					  ELSE',
'							V_REL_AUTORIZACION := V_REL_AUTORIZACION||''*''||''2''||''*''||:APP_USER||''*''||to_char(sysdate, ''dd/mm/yyyy hh24:mi:ss'')||''*'' ; ',
'							V_ESTADO := ''A'';',
'',
'                            UPDATE RH_MOV_PERMISOS',
'                            SET  REL_AUTORIZACION  = V_REL_AUTORIZACION,',
'                                 ESTADO = V_ESTADO              ',
'                            WHERE ROWID = V_ROW_ID;',
unistr('                            :P359_MENSAJE := ''Autorizaci\00F3n realizada.'';	'),
'                            						',
'					  END IF;',
'				--Tipo VACACIONES / LICENCIAS Y/O BENEFICIOS / REPOSO',
'				ELSIF V_IND_TIPO in (''V'', ''L'', ''R'') THEN',
'				    V_REL_AUTORIZACION := V_REL_AUTORIZACION||''*''||''2''||''*''||:APP_USER||''*''||to_char(sysdate, ''dd/mm/yyyy hh24:mi:ss'')||''*'' ; ',
'					V_ESTADO := ''A'';',
'                    UPDATE RH_MOV_PERMISOS',
'                    SET  REL_AUTORIZACION  = V_REL_AUTORIZACION,',
'                         ESTADO = V_ESTADO              ',
'                    WHERE ROWID = V_ROW_ID;',
'',
unistr('                    :P359_MENSAJE := ''Autorizaci\00F3n realizada.'';'),
'		        END IF;',
'		    ',
'    		ELSIF nvl(instr(V_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) > 0 THEN',
unistr('    		    :P359_MENSAJE := ''El movimiento ya fue aprobado en el segundo nivel nivel. '' || 1 || '' Autorizaci\00F3n de permisos'';'),
'    		END IF;',
'		',
' ',
'       /* RHAUTPER.PR_VER_USUARIOS (PI_REL_AUTORIZACION => V_REL_AUTORIZACION,',
'                                  PI_USUARIO_N1 => :P359_USUARIO_N1,',
'                                  PI_USUARIO_N2 => :P359_USUARIO_N2);*/',
'      END IF;',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        raise_application_error(-20001,sqlerrm);',
'END;',
'',
''))
,p_attribute_02=>'P359_SEQ_ID_DETALLES,P359_SEQ_ID_RECHAZAR'
,p_attribute_03=>'P359_MENSAJE,P359_USUARIO_N1,P359_USUARIO_N2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101168296849670805)
,p_event_id=>wwv_flow_imp.id(101168067544670803)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P359_MENSAJE.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260843311739980907)
,p_event_id=>wwv_flow_imp.id(101168067544670803)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'BEGIN',
'',
'    RHAUTPER.PR_CREAR_COL_MOV_PERM (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_COD_USUARIO => :P359_COD_USUARIO,',
'                                    PI_COD_FORMA => :P359_COD_FORMA,',
'                                    PI_IND_VISUALIZA_TODO => :P359_IND_VISUALIZA_TODO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'BEGIN',
'     :P359_OBSERVACION :=null; ',
'     :P359_COD_EMPLEADO:=null;',
'     :P359_COD_MOTIVO:=null; ',
'     :P359_REL_AUTORIZACION :=null;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'end;'))
,p_attribute_02=>'P359_SEQ_ID_DETALLES,P359_SEQ_ID_RECHAZAR'
,p_attribute_03=>'P359_MENSAJE,P359_USUARIO_N1,P359_USUARIO_N2,P359_OBSERVACION, P359_COD_EMPLEADO, P359_COD_MOTIVO, P359_REL_AUTORIZACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101168343461670806)
,p_event_id=>wwv_flow_imp.id(101168067544670803)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99769465946877236)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014762523120316)
,p_event_id=>wwv_flow_imp.id(101168067544670803)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  ',
'',
'          null OBSERVACION,',
'          null COD_EMPLEADO,',
'          null COD_MOTIVO,',
'          null REL_AUTORIZACION,',
'          null ind_descuento',
'',
'    INTO :P359_OBSERVACION, :P359_COD_EMPLEADO, :P359_COD_MOTIVO, :P359_REL_AUTORIZACION, :P359_DESCONTAR',
'',
'    FROM dual;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P359_SEQ_ID_DETALLES'
,p_attribute_03=>'P359_OBSERVACION,P359_COD_EMPLEADO,P359_COD_MOTIVO,P359_REL_AUTORIZACION,P359_DESCONTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260843564404980909)
,p_event_id=>wwv_flow_imp.id(101168067544670803)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99768573072877227)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P359_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101171936388670842)
,p_name=>'DA_HABILITAR_PERMISOS_NIVEL1'
,p_event_sequence=>60
,p_condition_element=>'P359_IND_AUT_NIVEL1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101172091036670843)
,p_event_id=>wwv_flow_imp.id(101171936388670842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(100782739727494419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101172305528670846)
,p_event_id=>wwv_flow_imp.id(101171936388670842)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(100782739727494419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(375410447921491625)
,p_name=>'DA_HABILITAR_PERMISOS_NIVEL2'
,p_event_sequence=>70
,p_condition_element=>'P359_IND_AUT_NIVEL2'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(375410714285491628)
,p_event_id=>wwv_flow_imp.id(375410447921491625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(100785117100494443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(375410845503491629)
,p_event_id=>wwv_flow_imp.id(375410447921491625)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(100785117100494443)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101172419824670847)
,p_name=>'DA_HABILITAR_REPORTE'
,p_event_sequence=>80
,p_condition_element=>'P359_IND_VISUALIZA_TODO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101172558563670848)
,p_event_id=>wwv_flow_imp.id(101172419824670847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99769465946877236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102997014111213207)
,p_event_id=>wwv_flow_imp.id(101172419824670847)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(100782641248494418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102996631893213203)
,p_event_id=>wwv_flow_imp.id(101172419824670847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99768573072877227)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102996960052213206)
,p_event_id=>wwv_flow_imp.id(101172419824670847)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99768573072877227)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102996789959213204)
,p_event_id=>wwv_flow_imp.id(101172419824670847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(100782641248494418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102996828974213205)
,p_event_id=>wwv_flow_imp.id(101172419824670847)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99769465946877236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(375410079310491621)
,p_name=>'New'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(375410125706491622)
,p_event_id=>wwv_flow_imp.id(375410079310491621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P359_COD_EMPLEADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260843024915980904)
,p_name=>'DA_DESCUENTA'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P359_DESCONTAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260843103526980905)
,p_event_id=>wwv_flow_imp.id(260843024915980904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P359_DESCONTAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100783490158494426)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99769643488877238)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P359_COD_MODULO := ''RH'';',
'    :P359_COD_USUARIO := :P_COD_USUARIO;',
'    :P359_COD_FORMA := ''RHAUTPER'';',
'',
'   -- :P359_COD_USUARIO := ''OBOGADO'';',
'',
'    --Usuarios de gente que autorizan  ',
'    :P359_IND_AUTORIZA_MOV := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                             :P359_COD_FORMA,',
'											 :P359_COD_USUARIO,											 ',
'											 ''IND_AUT_PERMISOS'');',
'',
'    --Usuarios habilitados a visualizar todos los movimientos',
'    :P359_IND_VISUALIZA_TODO  := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                                :P359_COD_FORMA,',
'    											:P359_COD_USUARIO,	 ',
'											    ''IND_VISUALIZA_TODO'');',
'',
'   :P359_IND_AUT_NIVEL1  := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                                :P359_COD_FORMA,',
'    											:P359_COD_USUARIO,	 ',
'											    ''IND_AUT_NIVEL1'');',
'     :P359_IND_AUT_NIVEL2  := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                                :P359_COD_FORMA,',
'    											:P359_COD_USUARIO,	 ',
'											    ''IND_AUT_NIVEL2'');      ',
'                                                                                     ',
'    :P359_COD_MOT_VACACIONES := BS_BUSCA_PARAMETRO (''RH'', ''RH_MOTNOV_VAC'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100782222283494414)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RHAUTPER.PR_CREAR_COL_MOV_PERM (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_COD_USUARIO => :P359_COD_USUARIO,',
'                                    PI_COD_FORMA => :P359_COD_FORMA,',
'                                    PI_IND_VISUALIZA_TODO => :P359_IND_VISUALIZA_TODO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
