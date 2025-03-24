prompt --application/pages/page_00720
begin
--   Manifest
--     PAGE: 00720
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
 p_id=>720
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Planilla de Retiro de Productos'
,p_alias=>'PLANILLA-DE-RETIRO-DE-PRODUCTOS'
,p_step_title=>'Planilla de Retiro de Productos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros1(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 46 || key == 44;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250117163058'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271441598456826103)
,p_plug_name=>'Planilla de Retiro de Productos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Planilla de Retiro de Productos'
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
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271441783722826105)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       FEC_RENDICION,',
'       FEC_RENDICION_ORIG,',
'       COD_REPARTIDOR,',
'       COD_VEHICULO,',
'       COD_USUARIO,',
'       ESTADO,',
'       EMAIL,',
'       COMENTARIO,',
'       ORIGEN,',
'       IND_RETIRADO_CLI,',
'       FEC_RETIRADO_CLI,',
'       IND_RECIBIDO_LOG,',
'       FEC_RECIBIDO_LOG,',
'       COD_VENDEDOR,',
'       COD_PAIS,',
'       COD_CIUDAD,',
'       COD_PROVINCIA,',
'       TELEFONO,',
'       DIRECCION,',
'       COD_PROVEEDOR,',
'       COD_ARTICULO,',
'       IND_ENVIADO_CLIENTE,',
'       FEC_ENVIADO_CLIENTE,',
'       SOLUCION,',
'       SER_COMPROBANTE,',
'       NOMBRE_CLIENTE,',
'       GARANTIA,',
'       SERIE,',
'       FACTURA,',
'       FEC_COMPRA,',
'       COD_DISTRIBUIDOR,',
'       TIPO,',
'       COD_CLIENTE,',
'       CORREO_LOGISTICA,',
'       FECHA_HORA,',
'       OBSERVACION,',
'       IND_ANULADO,',
'       FEC_ANULACION,',
'       RUC,',
'       TRANSPORTADORA,',
'       NRO_GUIA,',
'       COSTO_ENVIO,',
'       NRO_OT,',
'       SER_OT,',
'       FECHA_AGENDA,',
'       SER_PLANILLA,',
'       FEC_RETIRADO_TALLER,',
'       IND_RETIRADO_TALLER,',
'       FECHA_CREACION,',
'       COD_USUARIO_CREACION,',
'       TIP_COMPROBANTE,',
'       COD_MOTIVO_ANULA,',
'       COD_MOTIVO_RECHAZO,',
'       IND_RECHAZO,',
'       COMENTARIO_RECHAZO,',
'       ID_VISITA_SF,',
'       IND_RECIBIDO_LOG_CDE,',
'       FEC_RECIBIDO_LOG_CDE,',
'       FEC_RECIBIDO_LOG_OVIEDO,',
'       IND_RECIBIDO_LOG_OVIEDO,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  from RP_RETIRO_CABECERA',
'  where cod_empresa = :p_cod_empresa',
'/*AND (:P720_FECHA_RECIBIDO_DESDE IS NULL AND :P720_FECHA_RECIBIDO_HASTA IS NULL) OR ((FEC_RECIBIDO_LOG >= :P720_FECHA_RECIBIDO_DESDE AND FEC_RECIBIDO_LOG <= :P720_FECHA_RECIBIDO_HASTA) OR',
'    (FEC_RECIBIDO_LOG >= :P720_FECHA_RECIBIDO_DESDE AND :P720_FECHA_RECIBIDO_HASTA IS NULL) OR',
'    (:P720_FECHA_RECIBIDO_DESDE IS NULL AND FEC_RECIBIDO_LOG <= :P720_FECHA_RECIBIDO_HASTA)',
') */',
' /* AND (:P720_FECHA_PLANILLA_DESDE IS NULL AND :P720_FECHA_PLANILLA_HASTA IS NULL) OR ((FEC_PLANILLA >= :P720_FECHA_PLANILLA_DESDE AND FEC_PLANILLA <= :P720_FECHA_PLANILLA_HASTA) OR',
'    (FEC_PLANILLA >= :P720_FECHA_PLANILLA_DESDE AND :P720_FECHA_PLANILLA_HASTA IS NULL) OR',
'    (:P720_FECHA_PLANILLA_DESDE IS NULL AND FEC_PLANILLA <= :P720_FECHA_PLANILLA_HASTA)',
') */',
'',
' AND (',
'        (:P720_FECHA_PLANILLA_DESDE IS NULL AND :P720_FECHA_PLANILLA_HASTA IS NULL)',
'        OR',
'        (',
'          TO_DATE(FEC_PLANILLA, ''DD/MM/YYYY'') BETWEEN TO_DATE(:P720_FECHA_PLANILLA_DESDE, ''DD/MM/YYYY'') AND TO_DATE(:P720_FECHA_PLANILLA_HASTA, ''DD/MM/YYYY'')',
'          OR',
'          (:P720_FECHA_PLANILLA_DESDE IS NULL AND TO_DATE(FEC_PLANILLA, ''DD/MM/YYYY'') <= TO_DATE(:P720_FECHA_PLANILLA_HASTA, ''DD/MM/YYYY''))',
'          OR',
'          (:P720_FECHA_PLANILLA_HASTA IS NULL AND TO_DATE(FEC_PLANILLA, ''DD/MM/YYYY'') >= TO_DATE(:P720_FECHA_PLANILLA_DESDE, ''DD/MM/YYYY''))',
'        )',
'      )',
'--and transportadora=''5''',
'AND (:P720_NRO_PLANILLA IS NULL OR NRO_PLANILLA=:P720_NRO_PLANILLA)',
'--AND (:P720_FEC_PLANILLA IS NULL OR FEC_PLANILLA=:P720_FEC_PLANILLA)',
'AND (:P720_COD_CLIENTE IS NULL OR COD_CLIENTE=:P720_COD_CLIENTE)',
'AND (:P720_DISTRIBUIDOR IS NULL OR COD_DISTRIBUIDOR=:P720_DISTRIBUIDOR)',
'AND (:P720_FECHA_RECIBIDO_DESDE IS NULL AND :P720_FECHA_RECIBIDO_HASTA IS NULL) OR (FEC_RECIBIDO_LOG >= :P720_FECHA_RECIBIDO_DESDE AND FEC_RECIBIDO_LOG <= :P720_FECHA_RECIBIDO_HASTA) OR',
'    (FEC_RECIBIDO_LOG >= :P720_FECHA_RECIBIDO_DESDE AND :P720_FECHA_RECIBIDO_HASTA IS NULL) OR',
'    (:P720_FECHA_RECIBIDO_DESDE IS NULL AND FEC_RECIBIDO_LOG <= :P720_FECHA_RECIBIDO_HASTA)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P720_NRO_PLANILLA,P720_FEC_PLANILLA,P720_COD_CLIENTE,P720_DISTRIBUIDOR,P720_FECHA_PLANILLA_DESDE,P720_FECHA_PLANILLA_HASTA,P720_FECHA_RECIBIDO_DESDE,P720_FECHA_RECIBIDO_HASTA'
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
 p_id=>wwv_flow_imp.id(271441861418826106)
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
,p_internal_uid=>271441861418826106
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271441957868826107)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442058330826108)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442148236826109)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442294288826110)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442374079826111)
,p_db_column_name=>'FEC_RENDICION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442452814826112)
,p_db_column_name=>'FEC_RENDICION_ORIG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Rendicion Orig'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442541353826113)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442674654826114)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442731285826115)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442863857826116)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271442962295826117)
,p_db_column_name=>'EMAIL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443084100826118)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443155031826119)
,p_db_column_name=>'ORIGEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443207521826120)
,p_db_column_name=>'IND_RETIRADO_CLI'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ind Retirado Cli'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443393070826121)
,p_db_column_name=>'FEC_RETIRADO_CLI'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fec Retirado Cli'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443428150826122)
,p_db_column_name=>'IND_RECIBIDO_LOG'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ind Recibido Log'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443556092826123)
,p_db_column_name=>'FEC_RECIBIDO_LOG'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fec Recibido Log'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443646504826124)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443785961826125)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Pais'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443851130826126)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271443966654826127)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Provincia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444008665826128)
,p_db_column_name=>'TELEFONO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444118467826129)
,p_db_column_name=>'DIRECCION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444228238826130)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444354200826131)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444469024826132)
,p_db_column_name=>'IND_ENVIADO_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Ind Enviado Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444512833826133)
,p_db_column_name=>'FEC_ENVIADO_CLIENTE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fec Enviado Cliente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444656898826134)
,p_db_column_name=>'SOLUCION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Solucion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444781859826135)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444861731826136)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271444915985826137)
,p_db_column_name=>'GARANTIA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445043819826138)
,p_db_column_name=>'SERIE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445132143826139)
,p_db_column_name=>'FACTURA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445271180826140)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Fec Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445326640826141)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Distribuidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445413344826142)
,p_db_column_name=>'TIPO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445567125826143)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445687639826144)
,p_db_column_name=>'CORREO_LOGISTICA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Correo Logistica'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445760994826145)
,p_db_column_name=>'FECHA_HORA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Fecha Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445806188826146)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271445900919826147)
,p_db_column_name=>'IND_ANULADO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Ind Anulado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271446073158826148)
,p_db_column_name=>'FEC_ANULACION'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Fec Anulacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271446127330826149)
,p_db_column_name=>'RUC'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271446274912826150)
,p_db_column_name=>'TRANSPORTADORA'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Transportadora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271449999207353801)
,p_db_column_name=>'NRO_GUIA'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Nro Guia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450084607353802)
,p_db_column_name=>'COSTO_ENVIO'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Costo Envio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450160836353803)
,p_db_column_name=>'NRO_OT'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450275332353804)
,p_db_column_name=>'SER_OT'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450349044353805)
,p_db_column_name=>'FECHA_AGENDA'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Fecha Agenda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450469198353806)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450581182353807)
,p_db_column_name=>'FEC_RETIRADO_TALLER'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Fec Retirado Taller'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450656829353808)
,p_db_column_name=>'IND_RETIRADO_TALLER'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Ind Retirado Taller'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450734561353809)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450828286353810)
,p_db_column_name=>'COD_USUARIO_CREACION'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Cod Usuario Creacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271450962370353811)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451053713353812)
,p_db_column_name=>'COD_MOTIVO_ANULA'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Cod Motivo Anula'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451174703353813)
,p_db_column_name=>'COD_MOTIVO_RECHAZO'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Cod Motivo Rechazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451252417353814)
,p_db_column_name=>'IND_RECHAZO'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Ind Rechazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451326253353815)
,p_db_column_name=>'COMENTARIO_RECHAZO'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Comentario Rechazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451430717353816)
,p_db_column_name=>'ID_VISITA_SF'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Id Visita Sf'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451543770353817)
,p_db_column_name=>'IND_RECIBIDO_LOG_CDE'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Ind Recibido Log Cde'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451698556353818)
,p_db_column_name=>'FEC_RECIBIDO_LOG_CDE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Fec Recibido Log Cde'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451721579353819)
,p_db_column_name=>'FEC_RECIBIDO_LOG_OVIEDO'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Fec Recibido Log Oviedo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271451889099353820)
,p_db_column_name=>'IND_RECIBIDO_LOG_OVIEDO'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Ind Recibido Log Oviedo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271452032736353822)
,p_db_column_name=>'EDITAR'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:717:&SESSION.::&DEBUG.:717:P717_ACCION_CONSULTA,P717_NRO_PLANILLA,P717_SER_COMPROBANTE:1,#NRO_PLANILLA#,#SER_COMPROBANTE#'
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
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(274084548450475208)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P720_ELIMINAR'',''#NRO_PLANILLA#''),$s(''P720_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P720_COD_EMPRESA'',''#COD_EMPRESA#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
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
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(271475424269354473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2714755'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_PLANILLA:SER_COMPROBANTE:COD_SUCURSAL:FEC_PLANILLA:COD_USUARIO:ORIGEN:TELEFONO:TRANSPORTADORA:COD_DISTRIBUIDOR:COD_CLIENTE:ELIMINAR:'
,p_sort_column_1=>'NRO_PLANILLA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(272840429802187236)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271451906275353821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_button_name=>'BT_AGREGAR_PLANILLA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Planilla'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:717:&SESSION.::&DEBUG.:717:P717_ACCION_CONSULTA:3'
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
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
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
 p_id=>wwv_flow_imp.id(272840083248187232)
,p_name=>'P720_FEC_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272840185867187233)
,p_name=>'P720_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Nro Planilla'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272840245317187234)
,p_name=>'P720_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CAPLARET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( nvl( p.nombre, p.nomb_fantasia ) ) nombre, c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'order by lpad( c.cod_cliente, 15, '' '' )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(272840346650187235)
,p_name=>'P720_DISTRIBUIDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDORES_CAPLARET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( nvl( p.nombre, p.nomb_fantasia ) ) nombre, c.cod_cliente',
' from cc_clientes c, personas p ',
' where c.cod_empresa = :P_cod_empresa ',
' and c.cod_persona = p.cod_persona order by lpad( c.cod_cliente, 15, '' '' )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(274084615131475209)
,p_name=>'P720_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271441783722826105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274084992159475212)
,p_name=>'P720_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(271441783722826105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274085003525475213)
,p_name=>'P720_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(271441783722826105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274085144718475214)
,p_name=>'P720_ERR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(271441783722826105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274087055437475233)
,p_name=>'P720_FECHA_RECIBIDO_DESDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Fecha Recibido Desde'
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
 p_id=>wwv_flow_imp.id(274087158606475234)
,p_name=>'P720_FECHA_RECIBIDO_HASTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Fecha Recibido Hasta'
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
 p_id=>wwv_flow_imp.id(274087278545475235)
,p_name=>'P720_FECHA_PLANILLA_DESDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Fecha Planilla Desde'
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
 p_id=>wwv_flow_imp.id(274087362178475236)
,p_name=>'P720_FECHA_PLANILLA_HASTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(271441598456826103)
,p_prompt=>'Fecha Planilla Hasta'
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
 p_id=>wwv_flow_imp.id(305092028791685202)
,p_name=>'P720_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(271441783722826105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272840595462187237)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(272840429802187236)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272840640114187238)
,p_event_id=>wwv_flow_imp.id(272840595462187237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P720_NRO_PLANILLA,P720_FEC_PLANILLA,P720_COD_CLIENTE,P720_DISTRIBUIDOR,P720_FECHA_RECIBIDO_DESDE,P720_FECHA_RECIBIDO_HASTA,P720_FECHA_PLANILLA_DESDE,P720_FECHA_PLANILLA_HASTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272840730715187239)
,p_event_id=>wwv_flow_imp.id(272840595462187237)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271441783722826105)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274083972805475202)
,p_name=>'DA_NRO_PANILLA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P720_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274084056187475203)
,p_event_id=>wwv_flow_imp.id(274083972805475202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros1(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274084762018475210)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P720_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085506800475218)
,p_event_id=>wwv_flow_imp.id(274084762018475210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar este registro?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085451932475217)
,p_event_id=>wwv_flow_imp.id(274084762018475210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P720_NRO_PLANILLA,P720_SER_COMPROBANTE,P720_COD_EMPRESA,P720_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274084845809475211)
,p_event_id=>wwv_flow_imp.id(274084762018475210)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        :P720_ERR:=NULL;',
'        BEGIN',
'            DELETE RP_RETIRO_DETALLE',
'              WHERE COD_EMPRESA = :P720_COD_EMPRESA',
'              AND      NRO_PLANILLA = :P720_ELIMINAR',
'              AND      SER_COMPROBANTE = :P720_SER_COMPROBANTE;',
'',
'        EXCEPTION ',
'        WHEN OTHERS THEN',
'         :P720_ERR:=''Debe eliminar los datos del detalle y guardar los cambios'';',
'        END;',
'',
'',
'',
'        BEGIN',
'            DELETE RP_RETIRO_CABECERA',
'            WHERE COD_EMPRESA = :P720_COD_EMPRESA',
'              AND      NRO_PLANILLA = :P720_ELIMINAR',
'              AND      SER_COMPROBANTE = :P720_SER_COMPROBANTE;',
'            ',
'',
'        EXCEPTION ',
'        WHEN OTHERS THEN',
'         :P720_ERR:=''Debe eliminar los datos del detalle y guardar los cambios'';',
'        END;',
'END;'))
,p_attribute_02=>'P720_NRO_PLANILLA,P720_SER_COMPROBANTE,P720_COD_EMPRESA,P720_ELIMINAR'
,p_attribute_03=>'P720_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085616322475219)
,p_event_id=>wwv_flow_imp.id(274084762018475210)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271441783722826105)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085738274475220)
,p_event_id=>wwv_flow_imp.id(274084762018475210)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se elimina el registro correctamente'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P720_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274085274287475215)
,p_name=>'DA_ERR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P720_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085338808475216)
,p_event_id=>wwv_flow_imp.id(274085274287475215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P720_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P720_ERR'
);
wwv_flow_imp.component_end;
end;
/
