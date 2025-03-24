prompt --application/pages/page_00437
begin
--   Manifest
--     PAGE: 00437
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
 p_id=>437
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cabecera de Gestion de Visitas - CAGESVIS'
,p_alias=>'CABECERA-DE-GESTION-DE-VISITAS-CAGESVIS'
,p_step_title=>'Cabecera de Gestion de Visitas - CAGESVIS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'#FICHA1{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'',
'.display_only, .apex-item-display-only',
'{',
'    font-weight: bold !important;',
'    border-style: solid !important;',
'    background-color: white  !important;',
'',
'}',
'',
'.a-IRR-header  a , #checktext , .a-IRR-headerLink{color: darkblue; }',
'.a-IRR-header , .a-IRR-headerLink{   background-color: #FFFB7D; ',
'                                    background-image: #FFFB7D; ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240918155704'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128515081129228223)
,p_plug_name=>unistr('Lista de Gesti\00F3n de Visitas')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CA.NRO_MOVIMIENTO,',
'       CA.FEC_AGENDADA,',
'       CA.HORA_AGENDADA,',
'       CA.COD_TECNICO,',
'       (select nvl(p.nombre,p.nomb_fantasia)',
'          from vt_tecnicos v, personas p ',
'         where v.cod_empresa = CA.COD_EMPRESA',
'           and v.cod_persona = p.cod_persona',
'           and v.cod_tecnico = CA.COD_TECNICO) NOMBRE_TECNICO,',
'       CA.COD_CLIENTE,',
'       (select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'          from cc_clientes c, ',
'               personas p, ',
'               ident_personas i',
'         where c.cod_empresa = CA.COD_EMPRESA',
'           and c.cod_persona = p.cod_persona',
'           and c.estado <> ''B''',
'           and c.estado <> ''I''',
'           and i.cod_persona(+) = p.cod_persona',
'           and i.cod_ident(+)=''CI''',
'           and c.cod_cliente = CA.COD_CLIENTE) NOMBRE_CLIENTE,',
'       (CAGESVIS.OBTENER_DESC_REALIZADO(prealizado => CA.REALIZADO)) REALIZADO,',
'       NULL EDITAR',
'  FROM CA_GESTIONES_VISITAS CA',
' WHERE CA.COD_EMPRESA = :P_COD_EMPRESA',
' ORDER BY NRO_MOVIMIENTO DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Cabecera de Gesti\00F3n de Visitas - CAGESVIS')
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
 p_id=>wwv_flow_imp.id(128515159314228224)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>128515159314228224
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128515284401228225)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro. Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128515352830228226)
,p_db_column_name=>'FEC_AGENDADA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Agendada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128515460958228227)
,p_db_column_name=>'HORA_AGENDADA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Hora Agendada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128515549973228228)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Tecnico'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128515638851228229)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128515742386228230)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:434:&SESSION.::&DEBUG.:434:P434_NRO_MOVIMIENTO,P434_V_CONTROL:#NRO_MOVIMIENTO#,1'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128517779719228250)
,p_db_column_name=>'NOMBRE_TECNICO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tecnico'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129088421779898101)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129088519959898102)
,p_db_column_name=>'REALIZADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Realizado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(128610575786731429)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1286106'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_MOVIMIENTO:NOMBRE_CLIENTE:NOMBRE_TECNICO:FEC_AGENDADA:HORA_AGENDADA:REALIZADO:EDITAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128515816689228231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128515081129228223)
,p_button_name=>'BTAGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:434:&SESSION.::&DEBUG.:434:P434_V_CONTROL:0'
,p_button_css_classes=>'u-color-43-text u-color-21-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp.component_end;
end;
/
