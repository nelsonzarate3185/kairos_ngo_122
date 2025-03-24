prompt --application/pages/page_00596
begin
--   Manifest
--     PAGE: 00596
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
 p_id=>596
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento Visitas Agendadas- CAGEVIPR'
,p_alias=>'CAGEVIPR'
,p_step_title=>'Seguimiento Visitas Agendadas- CAGEVIPR'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'a {',
'    color: black;',
'}',
'*/',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus, .oj-inputdatetime-input-container:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only , .oj-inputdatetime-input-container{',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM, #FILTROS{    ',
'  background-color: #678dbb  !important;',
'}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #487ab8 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #487ab8 !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #487ab8 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240919084341'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104819600044095920)
,p_plug_name=>'Seguimiento Visitas Agendadas'
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104819363715095917)
,p_plug_name=>'CABECERA'
,p_region_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(104819600044095920)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104819440422095918)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(104819600044095920)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>970
,p_plug_grid_column_css_classes=>'u-color-1-border'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       NRO_MOVIMIENTO,',
'       FEC_AGENDA,',
'       COD_USUARIO,',
'       FEC_VISITA,',
'       TO_CHAR(FEC_VISITA,''DAY'') DIA,',
'       to_char(HORA_VISITA,''HH24:MI'')HORA_VISITA,',
'       COD_CLIENTE,',
'       SUCURSAL,',
'       CLIENTE_FINAL,',
'       NRO_TELEF,',
'       DIRECCION,',
'       COORDENADAS,',
'       COD_ARTICULO,',
'       COD_PROMOTOR,',
'       (select ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) )',
'      from  personas p',
'      where p.cod_persona = v.cod_promotor) nom_promotor,',
'       OBSERVACION,',
'       ',
'       (decode(estado,''P'',''PENDIENTE'',''F'',''FINALIZADO'',''C'',''CANCELADO'',''A'',''AGENDADO'',''ERROR''))ESTADO,',
'       MOTIVO,',
'       COD_SUCURSAL,',
'       ID_VISITA_SF,',
'       NULL DATOS,',
'       NULL CREAR,',
'       NULL EDITAR,',
'       ROWID',
'  from CA_VISITA_PROMOTOR v',
'  where cod_empresa = :P_cod_empresa ',
'',
'/* ',
'AND ( ',
'       (:P596_VISUAL=''D'' and trunc(fec_visita)=trunc(sysdate)) or',
'       (:P596_VISUAL=''M'' and TO_CHAR(fec_visita,''MM'')=TO_CHAR(sysdate,''MM'')) or   ',
'       (:P596_VISUAL=''S'' and TO_CHAR(fec_visita,''WW'')=TO_CHAR(sysdate,''WW'')) or ',
'       (:P596_VISUAL=''T'') ',
' )',
'*/',
'and (ESTADO=:P596_ESTADO OR :P596_ESTADO IS NULL OR :P596_ESTADO=''T'')--OR :P596_ESTADO=''T'')',
'',
'AND (to_date(FEC_VISITA, ''dd/mm/yyyy'') >= to_date(:P596_FECHA_INI, ''dd/mm/yyyy'') OR to_date(:P596_FECHA_INI, ''dd/mm/yyyy'') IS NULL )',
'AND (to_date(FEC_VISITA, ''dd/mm/yyyy'') <= to_date(:P596_FECHA_FIN, ''dd/mm/yyyy'') OR to_date(:P596_FECHA_FIN, ''dd/mm/yyyy'') IS NULL )',
'',
'AND (COD_CLIENTE = :P596_CLIENTE OR :P596_CLIENTE IS NULL)',
'',
'',
'',
'and (MOTIVO=:P596_MOTIVO OR :P596_MOTIVO IS NULL)',
'',
'  order by FEC_VISITA desc '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P596_VISUAL,P596_ESTADO,P596_FECHA_FIN,P596_FECHA_INI,P596_CLIENTE,P596_MOTIVO,P_COD_EMPRESA'
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
 p_id=>wwv_flow_imp.id(104822577272095949)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>104822577272095949
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104822684437095950)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625016110447001)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625195123447002)
,p_db_column_name=>'FEC_AGENDA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Agenda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625200233447003)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625352056447004)
,p_db_column_name=>'FEC_VISITA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625561896447006)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625645994447007)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625773288447008)
,p_db_column_name=>'CLIENTE_FINAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625805089447009)
,p_db_column_name=>'NRO_TELEF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Telef'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199625931252447010)
,p_db_column_name=>'DIRECCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626051562447011)
,p_db_column_name=>'COORDENADAS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Coordenadas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626191605447012)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626283817447013)
,p_db_column_name=>'COD_PROMOTOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>' &nbsp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626316858447014)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626474732447015)
,p_db_column_name=>'ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626595294447016)
,p_db_column_name=>'MOTIVO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626656037447017)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199626795486447018)
,p_db_column_name=>'ID_VISITA_SF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Id Visita Sf'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105592006644074642)
,p_db_column_name=>'CREAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Crear'
,p_column_link=>'javascript:$s(''P596_CREAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-plus-square"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105592111274074643)
,p_db_column_name=>'EDITAR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:329:&SESSION.::&DEBUG.:RP,329:P329_P_NRO_MOVIMIENTO,P329_ACCION_CONSULTA:#NRO_MOVIMIENTO#,1'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105592254417074644)
,p_db_column_name=>'ROWID'
,p_display_order=>220
,p_column_identifier=>'V'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105592301171074645)
,p_db_column_name=>'NOM_PROMOTOR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105592595093074647)
,p_db_column_name=>'DIA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Dia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(200083992663660231)
,p_db_column_name=>'DATOS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P596_DATOS'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832975707189065722)
,p_db_column_name=>'HORA_VISITA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(199636507110446021)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1996366'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:FEC_VISITA:DIA:CLIENTE_FINAL:COD_PROMOTOR:NOM_PROMOTOR:ESTADO:DATOS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104819503248095919)
,p_plug_name=>'DATOS'
,p_region_name=>'PARAM'
,p_parent_plug_id=>wwv_flow_imp.id(104819600044095920)
,p_region_css_classes=>'u-color-17-border '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-sm:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>980
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104819708864095921)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200081972523660211)
,p_plug_name=>'CAVISPRO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(200084594308660237)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_button_name=>'BT_CREAR_VISITA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Visita'
,p_button_redirect_url=>'f?p=&APP_ID.:329:&SESSION.::&DEBUG.:329:P329_ACCION_CONSULTA:3'
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(199628430210447035)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(200083606422660228)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-rotate-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104819829405095922)
,p_name=>'P596_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104819910458095923)
,p_name=>'P596_NOM_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820043019095924)
,p_name=>'P596_COD_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820193857095925)
,p_name=>'P596_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE_CAGEVIPR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nom, c.cod_cliente ',
'		  from cc_clientes c, personas p',
'		 where c.cod_empresa = :P_cod_empresa',
'		   and c.cod_persona = p.cod_persona		',
'		   AND p.nombre NOT LIKE ''%NO USAR%''',
'		   AND NVL(C.ESTADO,''A'')=''A''	'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820297746095926)
,p_name=>'P596_DERECHOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820311934095927)
,p_name=>'P596_NOM_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820487998095928)
,p_name=>'P596_COD_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820521986095929)
,p_name=>'P596_VISUAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820650727095930)
,p_name=>'P596_LOGO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820797433095931)
,p_name=>'P596_NRO_ORDEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820877697095932)
,p_name=>'P596_COD_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104820910474095933)
,p_name=>'P596_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104821074834095934)
,p_name=>'P596_COD_EMPRESA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104821114625095935)
,p_name=>'P596_COD_USUARIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104821272685095936)
,p_name=>'P596_COD_PROMOTOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROMOTOR_CAGEVIPR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_persona, nvl(p.nombre,p.nomb_fantasia)Promotor',
'    from vt_asignacion_promotora a,',
'         rh_empleados e,',
'         personas p',
'    where a.cod_empresa=:P_cod_empresa',
'    and   nvl(a.estado,''S'')=''S''',
'    and   a.cod_empleado=e.cod_empleado',
'    and   e.cod_persona=p.cod_persona',
'',
'union all',
'select  ''269932'',''SILVIO DAVID ALFONSO BAREIRO'' from dual',
'    order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(104821318241095937)
,p_name=>'P596_MOTIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:WHIRLPOOL SET UP;WHIRLPOOL SET UP,ENSE\00D1ANZA DE USO;ENSE\00D1ANZA DE USO,PROYECTOS/CLIMATIZACION;PROYECT/CLIMAT,PUESTA EN MARCHA;PUESTA_EN_MARCHA')
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(104821483459095938)
,p_name=>'P596_NOM_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104821519029095939)
,p_name=>'P596_NOM_SUCURSAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104821608119095940)
,p_name=>'P596_COD_IDIOMA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104821700116095941)
,p_name=>'P596_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(104821836427095942)
,p_name=>'P596_NOM_PROMOTOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Nombre Promotor'
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
 p_id=>wwv_flow_imp.id(104821936354095943)
,p_name=>'P596_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:PENDIENTE;P,FINALIZADO;F,CANCELADO;C,AGENDADO;A,TODOS;T'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(104822039731095944)
,p_name=>'P596_FECHA_FIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(104822293897095946)
,p_name=>'P596_FECHA_INI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(104819363715095917)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(105592661709074648)
,p_name=>'P596_CREAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104819440422095918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105592741305074649)
,p_name=>'P596_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104819440422095918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199626808168447019)
,p_name=>'P596_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199627072383447021)
,p_name=>'P596_NOM_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>'Nombre Distribuidor'
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
 p_id=>wwv_flow_imp.id(199627115924447022)
,p_name=>'P596_MOTIVO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199627273183447023)
,p_name=>'P596_COD_USUARIO_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>'Cod Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199627308532447024)
,p_name=>'P596_COD_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>'Producto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199627430896447025)
,p_name=>'P596_DESC_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>unistr('Descripci\00F3n Producto')
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
 p_id=>wwv_flow_imp.id(199627526638447026)
,p_name=>'P596_DIRECCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199627698351447027)
,p_name=>'P596_OBSERVACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104819503248095919)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200081668780660208)
,p_name=>'P596_NRO_MOVIMIENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104819440422095918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200081746701660209)
,p_name=>'P596_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104819440422095918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200084042166660232)
,p_name=>'P596_DATOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104819440422095918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201059713849163718)
,p_name=>'P596_ACTUALIZAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(104819708864095921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200081199217660203)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_CREAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(200082318449660215)
,p_event_id=>wwv_flow_imp.id(200081199217660203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    BEGIN',
'            SELECT NRO_MOVIMIENTO',
'            INTO   :P596_NRO_MOVIMIENTO',
'            FROM   CA_VISITA_PROMOTOR',
'            WHERE   ROWID = :P596_CREAR;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                :P596_NRO_MOVIMIENTO:=NULL;',
'        END;',
'END;'))
,p_attribute_02=>'P596_CREAR'
,p_attribute_03=>'P596_NRO_MOVIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200081805409660210)
,p_event_id=>wwv_flow_imp.id(200081199217660203)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200081972523660211)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200082168957660213)
,p_name=>'DA_CAVISPRO'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(200081972523660211)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200082486744660216)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200082664592660218)
,p_event_id=>wwv_flow_imp.id(200082486744660216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    BEGIN',
'            SELECT NRO_MOVIMIENTO',
'            INTO   :P596_NRO_MOVIMIENTO',
'            FROM   CA_VISITA_PROMOTOR',
'            WHERE   ROWID = :P596_EDITAR;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                :P596_NRO_MOVIMIENTO:=NULL;',
'        END;',
'END;'))
,p_attribute_02=>'P596_EDITAR'
,p_attribute_03=>'P596_NRO_MOVIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200082762262660219)
,p_event_id=>wwv_flow_imp.id(200082486744660216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 329,',
'                            p_items  => ''P329_P_NRO_MOVIMIENTO'',',
'                            p_values => (''''||:P596_NRO_MOVIMIENTO||'''')) f_url_1',
'    INTO :P596_URL',
'     FROM DUAL;',
''))
,p_attribute_02=>'P596_NRO_MOVIMIENTO'
,p_attribute_03=>'P596_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200082815030660220)
,p_event_id=>wwv_flow_imp.id(200082486744660216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P596_URL").getValue();',
'',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200082904272660221)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(199628430210447035)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200083020640660222)
,p_event_id=>wwv_flow_imp.id(200082904272660221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P596_VISUAL,P596_ESTADO,P596_FECHA_FIN,P596_FECHA_INI,P596_CLIENTE,P596_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200083147697660223)
,p_event_id=>wwv_flow_imp.id(200082904272660221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104819440422095918)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200083261499660224)
,p_name=>'DA_CLIENTE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200083377671660225)
,p_event_id=>wwv_flow_imp.id(200083261499660224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P596_CLIENTE IS NOT NULL THEN',
'		BEGIN',
'		select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'		INTO :P596_NOMBRE',
'		  from cc_clientes c, personas p',
'		 where c.cod_empresa = :P_cod_empresa',
'		   AND c.cod_cliente = :P596_CLIENTE',
'		   and c.cod_persona = p.cod_persona',
'		 ;',
'		EXCEPTION			',
'			WHEN OTHERS THEN',
'				:P596_NOMBRE:=	NULL;',
'		END;',
'END IF;'))
,p_attribute_02=>'P596_CLIENTE'
,p_attribute_03=>'P596_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200083429633660226)
,p_name=>'DA_PROMOTOR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_COD_PROMOTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200083567144660227)
,p_event_id=>wwv_flow_imp.id(200083429633660226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P596_cod_promotor is not null then',
'begin',
'   select ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) )',
'      into :P596_nom_promotor',
'      from  personas ',
'      where cod_persona = :P596_cod_promotor',
'         ;',
'exception ',
'  when others then',
'     :P596_nom_promotor := null ; ',
'end ;',
'end if;'))
,p_attribute_02=>'P596_COD_PROMOTOR'
,p_attribute_03=>'P596_NOM_PROMOTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200083796166660229)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(200083606422660228)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200083825971660230)
,p_event_id=>wwv_flow_imp.id(200083796166660229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P596_CLIENTE:=NULL;',
':P596_NOMBRE:=NULL;',
':P596_COD_PROMOTOR:=NULL;',
':P596_NOM_PROMOTOR:=NULL;',
':P596_MOTIVO:=NULL;',
':P596_ESTADO:=NULL;',
':P596_FECHA_INI:=NULL;',
':P596_FECHA_FIN:=NULL;'))
,p_attribute_03=>'P596_CLIENTE,P596_NOMBRE,P596_COD_PROMOTOR,P596_NOM_PROMOTOR,P596_MOTIVO,P596_ESTADO,P596_FECHA_INI,P596_FECHA_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(200084209740660234)
,p_name=>'DA_DATOS'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_DATOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(200084448822660236)
,p_event_id=>wwv_flow_imp.id(200084209740660234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    BEGIN',
'            SELECT COD_CLIENTE,MOTIVO,COD_ARTICULO,DIRECCION,OBSERVACION,COD_USUARIO',
'            INTO   :P596_COD_CLIENTE,:P596_MOTIVO_AUX,:P596_COD_ARTICULO,:P596_DIRECCION,:P596_OBSERVACION,:P596_COD_USUARIO_AUX',
'            FROM   CA_VISITA_PROMOTOR',
'            WHERE   ROWID = :P596_DATOS;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                :P596_NRO_MOVIMIENTO:=NULL;',
'        END;',
'END;',
'',
''))
,p_attribute_02=>'P596_DATOS'
,p_attribute_03=>'P596_COD_CLIENTE,P596_MOTIVO_AUX,P596_COD_ARTICULO,P596_DIRECCION,P596_OBSERVACION,P596_COD_USUARIO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(199628864236447039)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199628957068447040)
,p_event_id=>wwv_flow_imp.id(199628864236447039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P596_COD_CLIENTE IS NOT NULL THEN',
'        BEGIN',
'        select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'        INTO :P596_NOM_CLIENTE',
'          from cc_clientes c, personas p',
'         where c.cod_empresa = :P_cod_empresa',
'           AND c.cod_cliente = :P596_COD_CLIENTE',
'           and c.cod_persona = p.cod_persona',
'         ;',
'        EXCEPTION            ',
'            WHEN OTHERS THEN',
'                :P596_NOM_CLIENTE:=    NULL;',
'        END;',
'END IF;'))
,p_attribute_02=>'P596_COD_CLIENTE'
,p_attribute_03=>'P596_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(199629032253447041)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199629133557447042)
,p_event_id=>wwv_flow_imp.id(199629032253447041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P596_cod_articulo IS NOT NULL then',
'     BEGIN',
'     select a.DESCRIPCION',
'       into :P596_DESC_ARTICULO',
'       from st_articulos a',
'      where a.cod_empresa = :P_cod_empresa ',
'        and a.cod_articulo = :P596_cod_articulo;',
'     exception',
'         when others then ',
'         null;',
'        end;',
'end if;    '))
,p_attribute_02=>'P596_COD_ARTICULO'
,p_attribute_03=>'P596_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201059868214163719)
,p_name=>'DA_SET_ACTUALIZAR'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P596_ACTUALIZAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201059912761163720)
,p_event_id=>wwv_flow_imp.id(201059868214163719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P596_ACTUALIZAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201060077584163721)
,p_event_id=>wwv_flow_imp.id(201059868214163719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P329_URL").getValue();',
'',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(199628576085447036)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P596_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
'',
':P596_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
'',
':P596_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
'',
':P596_COD_MODULO := NVL(:P_COD_MODULO,''CA'') ;',
'',
':p596_ESTADO:=''T'';  ',
':p596_VISUAL:=''S'';      ',
':p596_NOMBRE:=''TODOS''; ',
':p596_NOM_PROMOTOR:=''TODOS''; '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
