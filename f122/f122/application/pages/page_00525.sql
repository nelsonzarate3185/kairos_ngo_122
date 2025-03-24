prompt --application/pages/page_00525
begin
--   Manifest
--     PAGE: 00525
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
 p_id=>525
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cronograma Auditoria - COCROAUD'
,p_alias=>'COCROAUD'
,p_step_title=>'Cronograma Auditoria - COCROAUD'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #ffed00 !important;',
'   border-color: red !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label{',
' /* background-color:  #003a85;*/',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
' .tabla_color  th.t-Report-colHead{',
'  background-color: #003a85; ',
'  color: yellow  !important;',
'  border-color: cadetblue;',
'}',
'td[headers="SER_REP_SOL"], #SER_REP_SOL , td[headers="NRO_REP_SOL"], #NRO_REP_SOL, #SEQ_ID , td[headers="SEQ_ID"]{',
'        display: none;',
'    }',
' ',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea , .apex-item-display-only{',
'   background-color: white !important;',
'   border-width: 0.5px;',
'   border-color: darkblue !important;   ',
'   color: darkblue!important;   ',
'}',
'#P63_GARANTIA_LABEL, #P63_IND_RECLAMO_LABEL, .u-radio{ color: darkblue  !important;',
'}',
'#REG_AUD, #Directorio{',
'   background-color: #487ab8 !important;}',
'   ',
'   '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20241101113215'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156683590777798633)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157701700389482820)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157702398941482826)
,p_plug_name=>'BOTONES'
,p_region_css_classes=>'CSS_CLASS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'CSS_CLASS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157753366362104713)
,p_plug_name=>'FV_HOJA_RUTA_VENDEDOR'
,p_region_name=>'REG_AUD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157755069997104730)
,p_plug_name=>'FV_HOJA_RUTA_VENDEDOR_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157755131490104731)
,p_plug_name=>'IZQ'
,p_region_name=>'REG_OT_IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(157755069997104730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157755796816104737)
,p_plug_name=>'Directorio'
,p_region_name=>'Directorio'
,p_parent_plug_id=>wwv_flow_imp.id(157755131490104731)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157755241670104732)
,p_plug_name=>'Auditor Asignado'
,p_parent_plug_id=>wwv_flow_imp.id(157755069997104730)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157756252142104742)
,p_plug_name=>'Datos del proceso'
,p_parent_plug_id=>wwv_flow_imp.id(157755241670104732)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157954746276173207)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157958682673173246)
,p_plug_name=>'COCROAUD'
,p_region_css_classes=>'js-dialog-size1500x850'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157958728112173247)
,p_plug_name=>'REPORTE COCROAUD'
,p_parent_plug_id=>wwv_flow_imp.id(157958682673173246)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empresa,',
'       to_char(fecha_inicio, ''DD/MM/RRRR'') fecha_inicio,       ',
'       TO_CHAR(a.fecha_fin, ''DD/MM/RRRR'') fecha_fin,',
'       a.CODIGO_AREA,',
'       ar.descripcion area,',
'       co.cod_control,',
'       co.descripcion control,',
'       a.riesgo,',
'       a.tipo_control,',
'       a.referencia_cruzada,',
'       a.comentario,',
'       a.comentario_final,',
'       TO_CHAR(a.fecha_inicio_real, ''DD/MM/RRRR'') fecha_inicio_real,',
'       TO_CHAR(a.fecha_fin_real, ''DD/MM/RRRR'') FECHA_FINAL_REAL,',
'       NVL(au.descripcion, ''NO ASIGNADO'') auditor_asignado,',
'       nvl(au1.descripcion, ''NO ASIGNADO'') auditor_realizado,',
'       nvl((au2.descripcion), ''NO ASIGNADO'') auditor_supervicion,',
'       TO_CHAR(a.fecha_supervicion_inicial, ''DD/MM/RRRR'') fecha_supervicion_inicial,',
'       TO_CHAR(a.fecha_supervicion_final, ''DD/MM/RRRR'') fecha_supervicion_final,',
'       TO_CHAR(a.fecha_alta, ''DD/MM/RRRR'') fecha_alta_tarea,',
'       a.cod_usuario CODIGO_USUARIO,',
'       a.estado,',
'       --DOCUMENTACION_REQUERIDA,',
'       id_registro,',
'       1 cantidad,',
'       a.fecha_envio_informe,',
'       a.ind_planificado planificado,',
'       a.fecha_respuesta_area,       ',
'       (select au.descripcion',
'          from co_auditor au',
'         where a.cod_empresa = au.cod_empresa',
'           and a.cod_auditor_asignado = au.cod_auditor) auditor_asginado,',
'       (select au.descripcion',
'          from co_auditor au',
'         where a.cod_empresa = au.cod_empresa',
'           and a.cod_auditor_realizado = au.cod_auditor) auditor_realizo,       ',
'       (select au.descripcion',
'          from co_auditor au',
'         where a.cod_empresa = au.cod_empresa',
'           and a.cod_auditor_enviado = au.cod_auditor) auditor_envio_informe, ',
'        a.documentacion_requerida',
'  from CO_CRONOGRAMA_AUDITORIA a,',
'       co_areas                ar,',
'       co_controles            co,',
'       co_auditor              au,',
'       co_auditor              au1,',
'       co_auditor              au2',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and a.cod_empresa = ar.cod_empresa',
'   and a.codigo_area = ar.cod_area',
'   and a.cod_empresa = co.cod_empresa',
'   and a.cod_control = co.cod_control',
'   and a.cod_empresa = au.cod_empresa(+)',
'   and a.cod_auditor_asignado = au.cod_auditor(+)',
'   and a.cod_empresa = au1.cod_empresa(+)',
'   and a.cod_auditor_realizado = au1.cod_auditor(+)',
'   and a.cod_empresa = au2.cod_empresa(+)',
'   and a.cod_supervisor = au2.cod_auditor(+)',
'   AND (fecha_inicio >= TO_DATE(:P525_FECHA_INICIO, ''DD/MM/YYYY'') OR TO_DATE(:P525_FECHA_INICIO, ''DD/MM/YYYY'') is null)',
'   AND (fecha_inicio <= TO_DATE(:P525_FECHA_FIN, ''DD/MM/YYYY'') or TO_DATE(:P525_FECHA_FIN, ''DD/MM/YYYY'') is null)',
'   AND (a.empresa = :P525_EMPRESA or :P525_EMPRESA is null)',
'   AND (a.cod_auditor_asignado = :P525_COD_AUDITOR or',
'       :P525_COD_AUDITOR is null)',
'   AND (a.cod_auditor_realizado = :P525_COD_AUDITOR_REALIZADO or',
'       :P525_COD_AUDITOR_REALIZADO is null)',
'   AND (a.cod_auditor_enviado = :P525_COD_AUDITOR_ENVIADO or',
'       :P525_COD_AUDITOR_ENVIADO is null)',
'   AND :P525_IND_REPORT_COCROAUD = ''1''',
'',
' order by fecha_inicio, id_registro asc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P525_FECHA_INICIO,P525_FECHA_FIN,P525_EMPRESA,P525_COD_AUDITOR,P525_COD_AUDITOR_REALIZADO,P525_COD_AUDITOR_ENVIADO,P525_IND_REPORT_COCROAUD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE COCROAUD'
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
 p_id=>wwv_flow_imp.id(157958913353173249)
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
,p_internal_uid=>157958913353173249
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157959053395173250)
,p_db_column_name=>'EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159593519379479001)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159593654773479002)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Fin'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159593719935479003)
,p_db_column_name=>'CODIGO_AREA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Area'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159593856344479004)
,p_db_column_name=>'AREA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159593993923479005)
,p_db_column_name=>'COD_CONTROL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594079609479006)
,p_db_column_name=>'CONTROL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594184525479007)
,p_db_column_name=>'RIESGO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Riesgo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594290530479008)
,p_db_column_name=>'TIPO_CONTROL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594320954479009)
,p_db_column_name=>'REFERENCIA_CRUZADA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Referencia Cruzada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594464763479010)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594518301479011)
,p_db_column_name=>'COMENTARIO_FINAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Comentario Final'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594677174479012)
,p_db_column_name=>'FECHA_INICIO_REAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Inicio Real'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594704390479013)
,p_db_column_name=>'FECHA_FINAL_REAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Final Real'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594827568479014)
,p_db_column_name=>'AUDITOR_ASIGNADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Auditor Asignado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159594968694479015)
,p_db_column_name=>'AUDITOR_REALIZADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Auditor Realizado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595011350479016)
,p_db_column_name=>'AUDITOR_SUPERVICION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Auditor Supervicion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595183927479017)
,p_db_column_name=>'FECHA_SUPERVICION_INICIAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fecha Supervicion Inicial'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595229318479018)
,p_db_column_name=>'FECHA_SUPERVICION_FINAL'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fecha Supervicion Final'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595371986479019)
,p_db_column_name=>'FECHA_ALTA_TAREA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Alta Tarea'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595492700479020)
,p_db_column_name=>'CODIGO_USUARIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Codigo Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595589994479021)
,p_db_column_name=>'ESTADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595627873479022)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595784891479023)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595814888479024)
,p_db_column_name=>'FECHA_ENVIO_INFORME'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fecha Envio Informe'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159595997011479025)
,p_db_column_name=>'PLANIFICADO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Planificado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159596036228479026)
,p_db_column_name=>'FECHA_RESPUESTA_AREA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fecha Respuesta Area'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159596187387479027)
,p_db_column_name=>'AUDITOR_ASGINADO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Auditor Asginado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159596235477479028)
,p_db_column_name=>'AUDITOR_REALIZO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Auditor Realizo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159596327689479029)
,p_db_column_name=>'AUDITOR_ENVIO_INFORME'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Auditor Envio Informe'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159596468076479030)
,p_db_column_name=>'DOCUMENTACION_REQUERIDA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Documentacion Requerida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(159613869931410986)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1596139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPRESA:FECHA_INICIO:FECHA_FIN:CODIGO_AREA:AREA:COD_CONTROL:CONTROL:RIESGO:TIPO_CONTROL:REFERENCIA_CRUZADA:COMENTARIO:COMENTARIO_FINAL:FECHA_INICIO_REAL:FECHA_FINAL_REAL:AUDITOR_ASIGNADO:AUDITOR_REALIZADO:AUDITOR_SUPERVICION:FECHA_SUPERVICION_INICIAL'
||':FECHA_SUPERVICION_FINAL:FECHA_ALTA_TAREA:CODIGO_USUARIO:ESTADO:ID_REGISTRO:CANTIDAD:FECHA_ENVIO_INFORME:PLANIFICADO:FECHA_RESPUESTA_AREA:AUDITOR_ASGINADO:AUDITOR_REALIZO:AUDITOR_ENVIO_INFORME:DOCUMENTACION_REQUERIDA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159596549796479031)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204127591304227716)
,p_plug_name=>'Agregar Informe'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159597106892479037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(157958682673173246)
,p_button_name=>'BTN_CERRAR_COCROAUD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204128508667227726)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_button_name=>'BT_CERRAR_I'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204128487632227725)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_button_name=>'BT_GUARDAR_I'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157753703880104717)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(157702398941482826)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Control'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:527:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-left:20px;width:135px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157753666124104716)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(157702398941482826)
,p_button_name=>'BTN_ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Control'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-9'
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style="margin-left:20px;width:135px;"'
,p_security_scheme=>wwv_flow_imp.id(197610112326084282)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161536933113493208)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(157702398941482826)
,p_button_name=>'BTN_VER_Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:527:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157958408577173244)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(157702398941482826)
,p_button_name=>'BTN_VER_REP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157753597350104715)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(157702398941482826)
,p_button_name=>'BTN_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157753449110104714)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(157702398941482826)
,p_button_name=>'BTN_CREAR_EJERCICIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Control'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style="margin-left:20px;width:135px;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156683659630798634)
,p_name=>'P525_TEXTO_MES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156683729719798635)
,p_name=>'P525_NUMERO_MES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156683808960798636)
,p_name=>'P525_TEXTO_ANIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156683901214798637)
,p_name=>'P525_HORA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684065953798638)
,p_name=>'P525_PUEDE_BORRAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684186295798639)
,p_name=>'P525_CAMBIA_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684211126798640)
,p_name=>'P525_VER_NGO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684388238798641)
,p_name=>'P525_VER_CPH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684484662798642)
,p_name=>'P525_VER_TF'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684562853798643)
,p_name=>'P525_MODIFICAR_AUDITOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684698010798644)
,p_name=>'P525_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156684967388798647)
,p_name=>'P525_COD_FORMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157701895716482821)
,p_name=>'P525_P_ROW_ID_EJERCICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157701700389482820)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157753830281104718)
,p_name=>'P525_EMPRESA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NGO;NGO,CPH;CPH,TF;TF,GANADERA;GANADERA,BH;BH'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157753920513104719)
,p_name=>'P525_FECHA_INICIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157754096180104720)
,p_name=>'P525_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157754105661104721)
,p_name=>'P525_CODIGO_AREA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>unistr('C\00F3digo \00C1rea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_aREA || '' - '' || DESCRIPCION D, ',
'       COD_aREA R ',
'FROM CO_AREAS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(157754236333104722)
,p_name=>'P525_COD_CONTROL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>unistr('C\00F3digo Control')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CONTROL || '' - '' || DESCRIPCION D, ',
'       COD_CONTROL R  ',
'FROM CO_controles',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157754311288104723)
,p_name=>'P525_TIPO_CONTROL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Tipo Control'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CRITICO;CRITICO,NO CRITICO;NO_CRITICO'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157754478476104724)
,p_name=>'P525_RIESGO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Riesgo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BAJO;BAJO,MEDIO;MEDIO,ALTO;ALTO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157754539426104725)
,p_name=>'P525_REFERENCIA_CRUZADA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Ref. Cruzada'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:F1;F1,C1;C1,RH1;RH1,CO2;CO2,CO3;CO3'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157754773696104727)
,p_name=>'P525_COD_AUDITOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Auditor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_AUDITOR || '' - '' || DESCRIPCION D, ',
'       COD_AUDITOR R',
'FROM CO_auditor',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'AND activo = ''S'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157754873187104728)
,p_name=>'P525_ESTADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;PENDIENTE,EN PROCESO;EN PROCESO,INFORME BORRADOR;INFORME_BORRADOR,BORRADOR DEVUELTO;BORRADOR_DEVUELTO,ENVIADO AL AREA;ENVIADO_AREA,FINALIZADO;FINALIZADO,ANULADO;ANULADO'
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
 p_id=>wwv_flow_imp.id(157754904761104729)
,p_name=>'P525_IND_PLANIFICADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_prompt=>'Planificado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157755328173104733)
,p_name=>'P525_DOC_REQUERIDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157755131490104731)
,p_prompt=>'Observaciones Generales'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157755449962104734)
,p_name=>'P525_COMENTARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157755131490104731)
,p_prompt=>'Hallazgos Relevantes'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157755586153104735)
,p_name=>'P525_COMENTARIO_FINAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(157755131490104731)
,p_prompt=>unistr('Plan de Acci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157755687677104736)
,p_name=>'P525_DIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157755131490104731)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157755870639104738)
,p_name=>'P525_FECHA_ENVIO_DIREC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157755796816104737)
,p_prompt=>unistr('Fecha Env\00EDo Directorio')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(157755978559104739)
,p_name=>'P525_CODIGO_INFORME_DIREC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157755796816104737)
,p_prompt=>unistr('C\00F3digo Informe')
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
 p_id=>wwv_flow_imp.id(157756001274104740)
,p_name=>'P525_RUTA_INFORME_DIREC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157755796816104737)
,p_prompt=>'Ruta Informe'
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
 p_id=>wwv_flow_imp.id(157756197886104741)
,p_name=>'P525_FECHA_RESPUESTA_DIREC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(157755796816104737)
,p_prompt=>'Fecha Respuesta Directorio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157756656799104746)
,p_name=>'P525_COD_AUDITOR_REALIZADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Cod Auditor Realizado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_AUDITOR || '' - '' || DESCRIPCION D, ',
'       COD_AUDITOR R',
'FROM CO_auditor',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'AND activo = ''S'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(157756797197104747)
,p_name=>'P525_COD_SUPERVISOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Cod Supervisor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_AUDITOR || '' - '' || DESCRIPCION D, ',
'       COD_AUDITOR R',
'FROM CO_auditor',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'AND activo = ''S'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157756897900104748)
,p_name=>'P525_FECHA_INICIO_REAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Fecha Inicio Real'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(157756907119104749)
,p_name=>'P525_FECHA_FIN_REAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Fecha Fin Real'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157757064012104750)
,p_name=>'P525_FECHA_SUP_INICIAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>unistr('Fecha Supervisi\00F3n Inicial Real')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(157954182159173201)
,p_name=>'P525_FECHA_SUP_FINAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>unistr('Fecha Supervisi\00F3n Final Real')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157954258356173202)
,p_name=>'P525_COD_AUDITOR_ENVIADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Cod Auditor Enviado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_AUDITOR || '' - '' || DESCRIPCION D, ',
'       COD_AUDITOR R',
'FROM CO_auditor',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'AND activo = ''S'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(157954342000173203)
,p_name=>'P525_FECHA_ENVIO_INFORME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Fecha Envio Informe'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(157954507000173205)
,p_name=>'P525_FECHA_RESPUESTA_AREA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Fecha Respuesta Area'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(157954613729173206)
,p_name=>'P525_ID_REGISTRO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(157756252142104742)
,p_prompt=>'Id Registro'
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
 p_id=>wwv_flow_imp.id(157954817902173208)
,p_name=>'P525_FECHA_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157954746276173207)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(157954945704173209)
,p_name=>'P525_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157954746276173207)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(157955097957173210)
,p_name=>'P525_COD_EJERCICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157753366362104713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157957918846173239)
,p_name=>'P525_INDICADOR_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159596659871479032)
,p_name=>'P525_IND_REPORT_COCROAUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159596549796479031)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204127605217227717)
,p_name=>'P525_I_COD_AUDITOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'Auditor'
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
 p_id=>wwv_flow_imp.id(204127704334227718)
,p_name=>'P525_I_DESC_AUDITOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(204127822653227719)
,p_name=>'P525_I_COD_SUPERVIRSOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'Supervirsor'
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
 p_id=>wwv_flow_imp.id(204127910295227720)
,p_name=>'P525_I_DESC_SUPERVISOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(204128013939227721)
,p_name=>'P525_I_COMENTARIO_AUDITOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'Comentario Auditor'
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
 p_id=>wwv_flow_imp.id(204128116631227722)
,p_name=>'P525_I_COMENTARIO_SUPERVISOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'Comentario Supervisor'
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
 p_id=>wwv_flow_imp.id(204128214431227723)
,p_name=>'P525_I_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>' Cod Usuario'
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
 p_id=>wwv_flow_imp.id(204128310573227724)
,p_name=>'P525_I_FEC_ALTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(204127591304227716)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(891489022401281906)
,p_name=>'P525_VER_BH'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(156683590777798633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157956893978173228)
,p_validation_name=>'VL_COD_AREA'
,p_validation_sequence=>10
,p_validation=>'P525_CODIGO_AREA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo de \00E1rea no puede ser nulo.')
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157957088717173230)
,p_validation_name=>'VL_COD_CONTROL'
,p_validation_sequence=>20
,p_validation=>'P525_COD_CONTROL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo de control no puede ser nulo.')
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157957407172173234)
,p_validation_name=>'VL_FECHA_INI'
,p_validation_sequence=>30
,p_validation=>'P525_FECHA_INICIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha inicial no puede ser nula.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157957516717173235)
,p_validation_name=>'VL_FECHA_FIN'
,p_validation_sequence=>40
,p_validation=>'P525_FECHA_FIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha final no puede ser nula.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157957298364173232)
,p_validation_name=>'VL_FECHAS'
,p_validation_sequence=>50
,p_validation=>'TO_DATE(:P525_FECHA_INICIO, ''DD/MM/YYYY'') <= TO_DATE(:P525_FECHA_FIN, ''DD/MM/YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'La fecha inicial no puede ser mayor a la fecha final..'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157957695506173236)
,p_validation_name=>'VL_FECHAS_REAL'
,p_validation_sequence=>60
,p_validation=>'TO_DATE(:P525_FECHA_INICIO_REAL, ''DD/MM/YYYY'') <= TO_DATE(:P525_FECHA_FIN_REAL, ''DD/MM/YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'La fecha inicial real no puede ser mayor a la fecha final real.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(157957706162173237)
,p_validation_name=>'VL_FECHAS_SUPERVISION'
,p_validation_sequence=>70
,p_validation=>'TO_DATE(:P525_FECHA_SUP_INICIAL, ''DD/MM/YYYY'') <= TO_DATE(:P525_FECHA_SUP_FINAL, ''DD/MM/YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('La fecha de supervisi\00F3n inicial real no puede ser mayor a la fecha de supervisi\00F3n final real.')
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157756361233104743)
,p_name=>'DA_BUSCAR_EJERCICIO'
,p_event_sequence=>10
,p_condition_element=>'P525_P_ROW_ID_EJERCICIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157756481952104744)
,p_event_id=>wwv_flow_imp.id(157756361233104743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  cod_ejercicio,',
'            empresa,',
'            fecha_inicio,',
'            fecha_fin,',
'            codigo_area,',
'            cod_control,',
'            cod_auditor_asignado,',
'            tipo_control,',
'            riesgo,',
'            referencia_cruzada,',
'            estado,',
'            ind_planificado,',
'            documentacion_requerida,',
'            comentario,',
'            comentario_final,',
'            fecha_envio_directorio,',
'            codigo_informe_directorio,',
'            ruta_informe_directorio,',
'            fecha_respuesta_directorio,',
'            cod_auditor_realizado,',
'            cod_supervisor,',
'            fecha_inicio_real,',
'            fecha_fin_real,',
'            fecha_supervicion_inicial,',
'            fecha_supervicion_final,',
'            cod_auditor_enviado,',
'            id_registro,',
'            fecha_envio_informe,',
'            fecha_respuesta_area,',
'            fecha_alta,',
'            cod_usuario ',
'                 ',
'    INTO    :P525_COD_EJERCICIO,',
'            :P525_EMPRESA,',
'            :P525_FECHA_INICIO,',
'            :P525_FECHA_FIN,',
'            :P525_CODIGO_AREA,',
'            :P525_COD_CONTROL,',
'            :P525_COD_AUDITOR,',
'            :P525_TIPO_CONTROL,',
'            :P525_RIESGO,',
'            :P525_REFERENCIA_CRUZADA,',
'            :P525_ESTADO,',
'            :P525_IND_PLANIFICADO,',
'            :P525_DOC_REQUERIDA,',
'            :P525_COMENTARIO,',
'            :P525_COMENTARIO_FINAL,',
'            :P525_FECHA_ENVIO_DIREC,',
'            :P525_CODIGO_INFORME_DIREC,',
'            :P525_RUTA_INFORME_DIREC,',
'            :P525_FECHA_RESPUESTA_DIREC,',
'            :P525_COD_AUDITOR_REALIZADO,',
'            :P525_COD_SUPERVISOR,',
'            :P525_FECHA_INICIO_REAL,',
'            :P525_FECHA_FIN_REAL,',
'            :P525_FECHA_SUP_INICIAL,',
'            :P525_FECHA_SUP_FINAL,',
'            :P525_COD_AUDITOR_ENVIADO,',
'            :P525_ID_REGISTRO,',
'            :P525_FECHA_ENVIO_INFORME,',
'            :P525_FECHA_RESPUESTA_AREA,',
'            :P525_FECHA_ALTA,',
'            :P525_COD_USUARIO',
'',
'    FROM    co_cronograma_auditoria',
'    WHERE ROWID = :P525_P_ROW_ID_EJERCICIO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P525_P_ROW_ID_EJERCICIO'
,p_attribute_03=>'P525_COD_EJERCICIO,P525_EMPRESA,P525_FECHA_INICIO,P525_FECHA_FIN,P525_CODIGO_AREA,P525_COD_CONTROL,P525_COD_AUDITOR,P525_TIPO_CONTROL,P525_RIESGO,P525_REFERENCIA_CRUZADA,P525_ESTADO,P525_IND_PLANIFICADO,P525_DOC_REQUERIDA,P525_COMENTARIO,P525_COMENTA'
||'RIO_FINAL,P525_FECHA_ENVIO_DIREC,P525_CODIGO_INFORME_DIREC,P525_RUTA_INFORME_DIREC,P525_FECHA_RESPUESTA_DIREC,P525_COD_AUDITOR_REALIZADO,P525_COD_SUPERVISOR,P525_FECHA_INICIO_REAL,P525_FECHA_FIN_REAL,P525_FECHA_SUP_INICIAL,P525_FECHA_SUP_FINAL,P525_C'
||'OD_AUDITOR_ENVIADO,P525_ID_REGISTRO,P525_FECHA_ENVIO_INFORME,P525_FECHA_RESPUESTA_AREA,P525_FECHA_ALTA,P525_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157958330992173243)
,p_event_id=>wwv_flow_imp.id(157756361233104743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P525_INDICADOR_ESTADO := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P525_INDICADOR_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157955367848173213)
,p_name=>'DA_HABILITAR_ELIMINAR'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157955476937173214)
,p_event_id=>wwv_flow_imp.id(157955367848173213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(157753666124104716)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P525_P_ROW_ID_EJERCICIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157955563696173215)
,p_event_id=>wwv_flow_imp.id(157955367848173213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(157753666124104716)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P525_P_ROW_ID_EJERCICIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157955616663173216)
,p_name=>'DA_ELIMINAR_EJERCICIO'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157753666124104716)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157955870121173218)
,p_event_id=>wwv_flow_imp.id(157955616663173216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157955704096173217)
,p_event_id=>wwv_flow_imp.id(157955616663173216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE co_cronograma_auditoria',
'    WHERE ROWID = :P525_P_ROW_ID_EJERCICIO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P525_P_ROW_ID_EJERCICIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157955912125173219)
,p_event_id=>wwv_flow_imp.id(157955616663173216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157956173536173221)
,p_name=>'DA_GUARDAR_EJERCICIO'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157753597350104715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(650046632049536522)
,p_event_id=>wwv_flow_imp.id(157956173536173221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P525_FECHA_INICIO,P525_FECHA_FIN,P525_COD_AUDITOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157956295676173222)
,p_event_id=>wwv_flow_imp.id(157956173536173221)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157956520367173225)
,p_name=>'DA_CREAR_EJERCICIO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157753449110104714)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157956663248173226)
,p_event_id=>wwv_flow_imp.id(157956520367173225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P525_P_ROW_ID_EJERCICIO := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P525_P_ROW_ID_EJERCICIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157956714677173227)
,p_event_id=>wwv_flow_imp.id(157956520367173225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157958060971173240)
,p_name=>'DA_CAMBIO_ESTADO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P525_ESTADO'
,p_condition_element=>'P525_P_ROW_ID_EJERCICIO'
,p_triggering_condition_type=>'NOT_NULL'
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
 p_id=>wwv_flow_imp.id(157958169354173241)
,p_event_id=>wwv_flow_imp.id(157958060971173240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P525_INDICADOR_ESTADO := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P525_INDICADOR_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159596767193479033)
,p_name=>'DA_ABRIR_COCROAUD'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157958408577173244)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159596939101479035)
,p_event_id=>wwv_flow_imp.id(159596767193479033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P525_IND_REPORT_COCROAUD := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P525_IND_REPORT_COCROAUD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159596802637479034)
,p_event_id=>wwv_flow_imp.id(159596767193479033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157958728112173247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159597069164479036)
,p_event_id=>wwv_flow_imp.id(159596767193479033)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157958682673173246)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159597220089479038)
,p_name=>'DA_CERRAR_COCROAUD'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(159597106892479037)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159597374824479039)
,p_event_id=>wwv_flow_imp.id(159597220089479038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157958682673173246)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204128664699227727)
,p_name=>'da_cerrar_informe'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204128508667227726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204128736409227728)
,p_event_id=>wwv_flow_imp.id(204128664699227727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204127591304227716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204128892625227729)
,p_name=>'da_guardar_informe'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204128487632227725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204129039232227731)
,p_event_id=>wwv_flow_imp.id(204128892625227729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204127591304227716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(650046221817536518)
,p_name=>'da_permiso_cambios'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P525_MODIFICAR_AUDITOR'
,p_condition_element=>'P525_MODIFICAR_AUDITOR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P525_MODIFICAR_AUDITOR'
,p_display_when_cond2=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(650046328610536519)
,p_event_id=>wwv_flow_imp.id(650046221817536518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P525_FECHA_INICIO,P525_FECHA_FIN,P525_COD_AUDITOR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157756512503104745)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P525_P_ROW_ID_EJERCICIO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156684820593798646)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    :P525_COD_MODULO := ''CO'';',
'    :P525_COD_FORMA := ''COCROAUD'';',
'',
'    :P525_TEXTO_MES  := to_char(sysdate,''MONTH'');',
'    :P525_NUMERO_MES := to_char(sysdate,''MM'');',
'    :P525_TEXTO_ANIO := to_char(sysdate,''YYYY'');',
'    :P525_HORA       := to_char(sysdate,''hh24:mi:ss'');',
'',
'    :P525_INDICADOR_ESTADO := ''0'';     ',
'',
'    :P525_PUEDE_BORRAR := busca_permiso (:P_COD_EMPRESA,',
'                                         :P525_COD_FORMA,',
'                                         :P_COD_USUARIO,',
'                                         ''PERMITE_MODIFICAR'');',
'',
'    :P525_CAMBIA_ESTADO := busca_permiso (:P_COD_EMPRESA,',
'                                          :P525_COD_FORMA,',
'                                          :P_COD_USUARIO,',
'                                          ''FINALIZA_AUDITORIA'');',
'',
'    :P525_VER_NGO := busca_permiso (:P_COD_EMPRESA,',
'                                    :P525_COD_FORMA,',
'                                    :P_COD_USUARIO,',
'                                    ''VER_NGO'');',
'',
'    :P525_VER_CPH := busca_permiso (:P_COD_EMPRESA,',
'                                    :P525_COD_FORMA,',
'                                    :P_COD_USUARIO,',
'                                    ''VER_CPH'');',
'',
'    :P525_VER_TF := busca_permiso (:P_COD_EMPRESA,',
'                                   :P525_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''VER_TF'');',
'                                   ',
'    :P525_VER_BH := busca_permiso (:P_COD_EMPRESA,',
'                                   :P525_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''VER_BH'');                                   ',
'',
'    :P525_MODIFICAR_AUDITOR := busca_permiso (:P_COD_EMPRESA,',
'                                              :P525_COD_FORMA,',
'                                              :P_COD_USUARIO,',
'                                              ''MODIFICAR_AUDITOR'');',
'    ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157956450119173224)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_DATOS_INICIALES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     :P525_FECHA_ALTA :=sysdate;',
'     :P525_COD_USUARIO := :APP_USER;',
'     :P525_ESTADO := ''PENDIENTE'';',
'     :P525_TIPO_CONTROL := ''NO_CRITICO'';',
'     :P525_RIESGO :=''BAJO'';',
'     :P525_IND_PLANIFICADO :=''S'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P525_P_ROW_ID_EJERCICIO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157956056995173220)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_EJERCICIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    COCROAUD.PR_GUARDAR_EJERCICIO_BD ( PI_ROW_ID => :P525_P_ROW_ID_EJERCICIO,',
'                                       PI_COD_EJERCICIO => :P525_COD_EJERCICIO,',
'                                       PI_EMPRESA => :P525_EMPRESA,',
'                                       PI_FECHA_INICIO => :P525_FECHA_INICIO,',
'                                       PI_FECHA_FIN => :P525_FECHA_FIN,',
'                                       PI_CODIGO_AREA => :P525_CODIGO_AREA,',
'                                       PI_COD_CONTROL => :P525_COD_CONTROL,',
'                                       PI_COD_AUDITOR => :P525_COD_AUDITOR,',
'                                       PI_TIPO_CONTROL => :P525_TIPO_CONTROL,',
'                                       PI_RIESGO => :P525_RIESGO,',
'                                       PI_REFERENCIA_CRUZADA => :P525_REFERENCIA_CRUZADA,',
'                                       PI_ESTADO => :P525_ESTADO,',
'                                       PI_IND_PLANIFICADO => :P525_IND_PLANIFICADO,',
'                                       PI_DOC_REQUERIDA => :P525_DOC_REQUERIDA,',
'                                       PI_COMENTARIO => :P525_COMENTARIO,',
'                                       PI_COMENTARIO_FINAL => :P525_COMENTARIO_FINAL,',
'                                       PI_FECHA_ENVIO_DIREC => :P525_FECHA_ENVIO_DIREC,',
'                                       PI_CODIGO_INFORME_DIREC => :P525_CODIGO_INFORME_DIREC,',
'                                       PI_RUTA_INFORME_DIREC => :P525_RUTA_INFORME_DIREC,',
'                                       PI_FECHA_RESPUESTA_DIREC => :P525_FECHA_RESPUESTA_DIREC,',
'                                       PI_COD_AUDITOR_REALIZADO => :P525_COD_AUDITOR_REALIZADO,',
'                                       PI_COD_SUPERVISOR => :P525_COD_SUPERVISOR,',
'                                       PI_FECHA_INICIO_REAL => :P525_FECHA_INICIO_REAL,',
'                                       PI_FECHA_FIN_REAL => :P525_FECHA_FIN_REAL,',
'                                       PI_FECHA_SUP_INICIAL => :P525_FECHA_SUP_INICIAL,',
'                                       PI_FECHA_SUP_FINAL => :P525_FECHA_SUP_FINAL,',
'                                       PI_COD_AUDITOR_ENVIADO => :P525_COD_AUDITOR_ENVIADO,',
'                                       PI_ID_REGISTRO => :P525_ID_REGISTRO,',
'                                       PI_FECHA_ENVIO_INFORME => :P525_FECHA_ENVIO_INFORME,',
'                                       PI_FECHA_RESPUESTA_AREA => :P525_FECHA_RESPUESTA_AREA,',
'                                       PI_FECHA_ALTA => :P525_FECHA_ALTA,',
'                                       PI_COD_USUARIO => :P525_COD_USUARIO,',
'                                       PI_INDICADOR_ESTADO => :P525_INDICADOR_ESTADO); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      RAISE_APPLICATION_ERROR(-20000, '' Error al Guardar el registro. ''||sqlerrm);',
'         ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157956394633173223)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_ELIMINAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>unistr('Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Ejercicio borrado.'
);
wwv_flow_imp.component_end;
end;
/
