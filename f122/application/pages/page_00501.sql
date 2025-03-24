prompt --application/pages/page_00501
begin
--   Manifest
--     PAGE: 00501
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
 p_id=>501
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de proveedores(STNGO-STA) - CAPROVEE'
,p_alias=>'CARGA-DE-PROVEEDORES-STNGO-STA-CAPROVEE'
,p_step_title=>'Carga de proveedores(STNGO-STA) - CAPROVEE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46,9];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: yellow;}',
'.a-IRR-header {    background-color: #003A85;',
'background-image: #003A85;',
' ',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241014110451'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147168244879697034)
,p_plug_name=>'Carga de proveedores(STNGO-STA) - CAPROVEE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147168312994697035)
,p_plug_name=>'COLEC_CM_PROVEEDORES'
,p_parent_plug_id=>wwv_flow_imp.id(147168244879697034)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_PROVEEDOR,',
'       c003 COD_PERSONA,',
'       c004 PLAZO,',
'       c005 COD_RUBRO,',
'       c006 ESTADO,',
'       c007 COD_CONDICION_COMPRA,',
'       c008 COD_MONEDA,',
'       c009 EXENTO,',
'       c010 COD_CUENTA_CONTABLE,',
'       c011 DIRECTO,',
'       c012 COD_PER_CONTACTO,',
'       c013 A_LA_ORDEN,',
'       c014 PORC_DESCUENTO,',
'       c015 CASUAL,',
'       c016 COD_GRUPO_PROV,',
'       c017 NOMB_PROVEEDOR,',
'       c018 EXTERIOR,',
'       c019 COD_SUCURSAL,',
'       c020 FEC_FACTURACION,',
'       c021 COD_USUARIO_WEB,',
'       c022 COD_USUARIO,',
'       c023 FEC_ALTA,',
'       c024 NOM_RAZ_SOC_PROV,',
'       c025 DIAS_OC,',
'       c026 COD_AGENTE_STA,',
'       c027 NRO_CTA_BCO,',
'       c028 AFECTA_CTA_PAG,',
'       c029 IND_TRANSFERENCIA,',
'       c030 COD_PERS_BCO,',
'       c031 NRO_CTA_BCO_US,',
'       c032 COD_PERS_BCO_US,',
'       c033 IN_MIGRADO_OS,',
'       c034 DIAS_ANALISIS,',
'       c035 OBSERVACION,',
'       c036 IND_SERVICIO_TECNICO,',
'       c037 CANTIDAD_OTS,',
'       c038 IND_RETENCION,',
'       c039 IND_RETENCION_RENTA,',
'       c040 COD_RESPONSABLE_REPUESTO,',
'       c041 FECHA_ACTUALIZACION,',
'       c042 ACTUALIZADO_POR,',
'       c043 COMENTARIO_BLOQUEO,',
'       c044 FECHA_BLOQUEO,',
'       c045 BLOQUEO_PAGO,',
'       c046 NO_AFECTA_BLOQUEO,',
'       c047 FECHA_DESBLOQUEO,',
'       c048 DESBLOQUEADO_POR,',
'       c049 CONTROL,',
'       c050 ROW_ID,',
'       NULL EDITAR,',
'       NULL DETALLE,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CM_PROVEEDORES''',
'   AND (c049 = ''U'' OR c049 = ''I'' OR c049 IS NULL)',
'  ORDER BY SEQ_ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CM_PROVEEDORES'
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
 p_id=>wwv_flow_imp.id(147168576492697037)
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
,p_internal_uid=>147168576492697037
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147168666705697038)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147168720919697039)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147168825362697040)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147168951586697041)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169079267697042)
,p_db_column_name=>'PLAZO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Plazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169178544697043)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169299825697044)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169378680697045)
,p_db_column_name=>'COD_CONDICION_COMPRA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Condicion Compra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169442875697046)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169523359697047)
,p_db_column_name=>'EXENTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Exento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169686749697048)
,p_db_column_name=>'COD_CUENTA_CONTABLE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Cuenta Contable'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169707809697049)
,p_db_column_name=>'DIRECTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Directo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147169857009697050)
,p_db_column_name=>'COD_PER_CONTACTO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Per Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418264505126201)
,p_db_column_name=>'A_LA_ORDEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'A La Orden'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418301417126202)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Porc Descuento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418477411126203)
,p_db_column_name=>'CASUAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Casual'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418596295126204)
,p_db_column_name=>'COD_GRUPO_PROV'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Grupo Prov'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418648020126205)
,p_db_column_name=>'NOMB_PROVEEDOR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nombre Abreviado p/ Contabilidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418773420126206)
,p_db_column_name=>'EXTERIOR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Exterior'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418846318126207)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148418996633126208)
,p_db_column_name=>'FEC_FACTURACION'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fec Facturacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419032064126209)
,p_db_column_name=>'COD_USUARIO_WEB'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Usuario Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419119745126210)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419273540126211)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419378457126212)
,p_db_column_name=>'NOM_RAZ_SOC_PROV'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Nombre Prov.- Razon Social'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419486249126213)
,p_db_column_name=>'DIAS_OC'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Dias Oc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419568824126214)
,p_db_column_name=>'COD_AGENTE_STA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cod Agente Sta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419693517126215)
,p_db_column_name=>'NRO_CTA_BCO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Nro Cta Bco'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419741076126216)
,p_db_column_name=>'AFECTA_CTA_PAG'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Afecta Cta Pag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419829481126217)
,p_db_column_name=>'IND_TRANSFERENCIA'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Ind Transferencia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148419923605126218)
,p_db_column_name=>'COD_PERS_BCO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Cod Pers Bco'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420013992126219)
,p_db_column_name=>'NRO_CTA_BCO_US'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Nro Cta Bco Us'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420101400126220)
,p_db_column_name=>'COD_PERS_BCO_US'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Pers Bco Us'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420261286126221)
,p_db_column_name=>'IN_MIGRADO_OS'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'In Migrado Os'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420342931126222)
,p_db_column_name=>'DIAS_ANALISIS'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Dias Analisis'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420457554126223)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420506094126224)
,p_db_column_name=>'IND_SERVICIO_TECNICO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420627872126225)
,p_db_column_name=>'CANTIDAD_OTS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cantidad Ots'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420745311126226)
,p_db_column_name=>'IND_RETENCION'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Ind Retencion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420815341126227)
,p_db_column_name=>'IND_RETENCION_RENTA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Ind Retencion Renta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148420941512126228)
,p_db_column_name=>'COD_RESPONSABLE_REPUESTO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Cod Responsable Repuesto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421044486126229)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421124590126230)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421284366126231)
,p_db_column_name=>'COMENTARIO_BLOQUEO'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Comentario Bloqueo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421381037126232)
,p_db_column_name=>'FECHA_BLOQUEO'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Fecha Bloqueo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421446598126233)
,p_db_column_name=>'BLOQUEO_PAGO'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Bloqueo Pago'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421546926126234)
,p_db_column_name=>'NO_AFECTA_BLOQUEO'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'No Afecta Bloqueo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421684426126235)
,p_db_column_name=>'FECHA_DESBLOQUEO'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Fecha Desbloqueo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421723882126236)
,p_db_column_name=>'DESBLOQUEADO_POR'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Desbloqueado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421884566126237)
,p_db_column_name=>'CONTROL'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148421946418126238)
,p_db_column_name=>'ROW_ID'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148422067687126239)
,p_db_column_name=>'EDITAR'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P501_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148422151530126240)
,p_db_column_name=>'DETALLE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P501_DET_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148422220331126241)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P501_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148454458861935530)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1484545'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_PROVEEDOR:COD_PERSONA:NOMB_PROVEEDOR:NOM_RAZ_SOC_PROV:COD_RUBRO:COD_MONEDA:IND_SERVICIO_TECNICO:DETALLE:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148473768738892316)
,p_plug_name=>'Contenedor 2'
,p_parent_plug_id=>wwv_flow_imp.id(147168244879697034)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148472348339892302)
,p_plug_name=>'Contenedor 2.1'
,p_parent_plug_id=>wwv_flow_imp.id(148473768738892316)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148472591484892304)
,p_plug_name=>'Indicadores'
,p_parent_plug_id=>wwv_flow_imp.id(148473768738892316)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148473839584892317)
,p_plug_name=>'Contenedor'
,p_parent_plug_id=>wwv_flow_imp.id(147168244879697034)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148472223454892301)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(148473839584892317)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148472432349892303)
,p_plug_name=>'Contenedor 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(148473839584892317)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148472869634892307)
,p_plug_name=>'Contenedor 1.3'
,p_parent_plug_id=>wwv_flow_imp.id(148473839584892317)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148473988351892318)
,p_plug_name=>'Agregar Rubros a Proveedores'
,p_region_css_classes=>'js-dialog-size1000x500'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148571421789869203)
,p_plug_name=>'COLEC_CP_PROVEEDORES_RUBRO'
,p_parent_plug_id=>wwv_flow_imp.id(148473988351892318)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_PROVEEDOR,',
'       c003 COD_SECTOR,',
'       c004 CONTROL,',
'       c005 ROW_ID,',
'       c006 DESC_SECTOR,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CP_PROVEEDORES_RUBRO''',
'   AND c002 = :P501_COD_PROVEEDOR_AUX',
'   AND (c004 = ''U'' OR c004 = ''I'' OR c004 IS NULL)',
'  ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P501_COD_PROVEEDOR_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CP_PROVEEDORES_RUBRO'
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
 p_id=>wwv_flow_imp.id(148571598552869204)
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
,p_internal_uid=>148571598552869204
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148571699418869205)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148571758588869206)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148571834846869207)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148571986210869208)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Sector')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148572044407869209)
,p_db_column_name=>'CONTROL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148572152485869210)
,p_db_column_name=>'ROW_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148572258951869211)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P501_EDIT_DATA_PRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148572305362869212)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P501_DELETE_DATA_PRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148574954213869238)
,p_db_column_name=>'DESC_SECTOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Descripci\00F3n de Sector')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148580399411826985)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1485804'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SECTOR:DESC_SECTOR:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148574402289869233)
,p_plug_name=>'Agregar/Editar Proveedores'
,p_region_css_classes=>'js-dialog-size1500x550'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148475891515892337)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_button_name=>'BTGUARDAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148472953446892308)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(148472432349892303)
,p_button_name=>'BTSECTORES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Sectores'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148473033860892309)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(148472432349892303)
,p_button_name=>'BTCONTACTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Contactos'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148572927312869218)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(147168312994697035)
,p_button_name=>'BTAGREGAR_PROVEEDOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Proveedor'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-31-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148574007098869229)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(147168312994697035)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148572449927869213)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(148473988351892318)
,p_button_name=>'BTAGREGAR_EDITAR_RUB_PRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Rubro'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148422330645126242)
,p_name=>'P501_DET_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147168312994697035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148422428459126243)
,p_name=>'P501_EDIT_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147168312994697035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148422568035126244)
,p_name=>'P501_DELETE_DATA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147168312994697035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148472617915892305)
,p_name=>'P501_DESC_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148472223454892301)
,p_prompt=>'Nombre Persona'
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
 p_id=>wwv_flow_imp.id(148472706594892306)
,p_name=>'P501_DESC_RUBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148472432349892303)
,p_prompt=>unistr('Descripci\00F3n Rubro')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148473113941892310)
,p_name=>'P501_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148472348339892302)
,p_prompt=>'Cod Sucursal Autorizado'
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
 p_id=>wwv_flow_imp.id(148473211068892311)
,p_name=>'P501_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148472348339892302)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148473382645892312)
,p_name=>'P501_COD_AGENTE_STA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(148472348339892302)
,p_prompt=>'Agente STA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PATRICIA PORTILLO;PATRICIAPO,CARGAST2;CARGAST2,CARGAST3;CARGAST3,CYNTHIA MARIA SALINAS GIMENEZ;CYNTHIAS,STEVEN BAEZ;CARGAST1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148473464507892313)
,p_name=>'P501_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148472869634892307)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148473576826892314)
,p_name=>'P501_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148472591484892304)
,p_prompt=>'Activo (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148473697277892315)
,p_name=>'P501_CANTIDAD_OTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148472591484892304)
,p_prompt=>unistr('Cantidad M\00E1xima Ots en Taller')
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
 p_id=>wwv_flow_imp.id(148474221888892321)
,p_name=>'P501_COD_PROVEEDOR_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Codigo'
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
 p_id=>wwv_flow_imp.id(148474335574892322)
,p_name=>'P501_COD_PERSONA_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_CAPROVEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(p.nombre) nombre, ',
'       p.cod_persona, ',
'       i.numero ',
'  from personas p,  ',
'       ident_personas i ',
' WHERE p.cod_persona = i.cod_persona(+) ',
'   and i.cod_ident IN (''RUC'' ,''CI'')',
'order by ltrim(p.nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148474451564892323)
,p_name=>'P501_NOMB_PROVEEDOR_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Nombre Abreviado p/ Contabilidad'
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
 p_id=>wwv_flow_imp.id(148474528366892324)
,p_name=>'P501_NOM_RAZ_SOC_PROV_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Nombre Prov.- Razon Social'
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
 p_id=>wwv_flow_imp.id(148474678394892325)
,p_name=>'P501_COD_RUBRO_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Cod. Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTOR_2_CAPROVEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sector,',
'       upper(descripcion) descripcion ',
'  from sectores_econ',
' order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P501_DESC_RUBRO_ADD'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148474783656892326)
,p_name=>'P501_DESC_RUBRO_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
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
 p_id=>wwv_flow_imp.id(148474807098892327)
,p_name=>'P501_COD_MONEDA_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Cod. Moneda'
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
 p_id=>wwv_flow_imp.id(148474946454892328)
,p_name=>'P501_IND_SERVICIO_TECNICO_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:STNGO;STNGO,STA;STA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148475094306892329)
,p_name=>'P501_COD_SUCURSAL_ADD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Sucursal Autorizado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_CAPROVEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,',
'       cod_sucursal ',
'  from sucursales',
' where cod_empresa = :P_COD_EMPRESA',
' order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P501_DESC_SUCURSAL_ADD'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148475106635892330)
,p_name=>'P501_DESC_SUCURSAL_ADD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
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
 p_id=>wwv_flow_imp.id(148475266580892331)
,p_name=>'P501_COD_AGENTE_STA_ADD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Agente STA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PATRICIA PORTILLO;PATRICIAPO,CARGAST2;CARGAST2,CARGAST3;CARGAST3,CYNTHIA MARIA SALINAS GIMENEZ;CYNTHIAS,STEVEN BAEZ;CARGAST1'
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
 p_id=>wwv_flow_imp.id(148475393389892332)
,p_name=>'P501_ESTADO_ADD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>'Activo (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148475496875892333)
,p_name=>'P501_CANTIDAD_OTS_ADD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>unistr('Cantidad M\00E1xima Ots en Taller')
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
 p_id=>wwv_flow_imp.id(148475583899892334)
,p_name=>'P501_OBSERVACION_ADD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148475901226892338)
,p_name=>'P501_EXENTO_ADD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148476069428892339)
,p_name=>'P501_DIRECTO_ADD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148476181379892340)
,p_name=>'P501_EXTERIOR_ADD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148476268878892341)
,p_name=>'P501_AFECTA_CTA_PAG_ADD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148476906030892348)
,p_name=>'P501_MENSAJE_PERSONA_ADD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148571289725869201)
,p_name=>'P501_COD_RUBRO_PRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148473988351892318)
,p_prompt=>unistr('C\00F3digo Sector')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTOR_2_CAPROVEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sector,',
'       upper(descripcion) descripcion ',
'  from sectores_econ',
' order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P501_DESC_RUBRO_PRO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148571349860869202)
,p_name=>'P501_DESC_RUBRO_PRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148473988351892318)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148572571037869214)
,p_name=>'P501_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147168244879697034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148573253840869221)
,p_name=>'P501_EDIT_DATA_PRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148571421789869203)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148573381046869222)
,p_name=>'P501_DELETE_DATA_PRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148571421789869203)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148574878128869237)
,p_name=>'P501_COD_PROVEEDOR_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148473988351892318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148575843560869247)
,p_name=>'P501_MENSAJE_PRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148473988351892318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149489309072830902)
,p_name=>'P501_DESC_PERSONA_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
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
 p_id=>wwv_flow_imp.id(149489769350830906)
,p_name=>'P501_MENSAJE_RUBRO_ADD'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(148574402289869233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149564167966086608)
,p_name=>'P501_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148472432349892303)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149564390052086610)
,p_name=>'P501_COD_PERSONA_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148472432349892303)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148422619973126245)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148422765511126246)
,p_event_id=>wwv_flow_imp.id(148422619973126245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148572600608869215)
,p_event_id=>wwv_flow_imp.id(148422619973126245)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.GET_DATA_DET(pseq_id         => :P501_DET_DATA,',
'                          pdesc_persona   => :P501_DESC_PERSONA,',
'                          pdesc_rubro     => :P501_DESC_RUBRO,',
'                          pdesc_sucursal  => :P501_DESC_SUCURSAL,',
'                          pcod_sucursal   => :P501_COD_SUCURSAL,',
'                          pobservacion    => :P501_OBSERVACION,',
'                          pestado         => :P501_ESTADO,',
'                          pcod_agente_sta => :P501_COD_AGENTE_STA,',
'                          pcantidad_ots   => :P501_CANTIDAD_OTS);',
'        ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_DET_DATA'
,p_attribute_03=>'P501_DESC_PERSONA,P501_DESC_RUBRO,P501_DESC_SUCURSAL,P501_COD_SUCURSAL,P501_OBSERVACION,P501_ESTADO,P501_COD_AGENTE_STA,P501_CANTIDAD_OTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_DET_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148422853964126247)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148422936947126248)
,p_event_id=>wwv_flow_imp.id(148422853964126247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490484510830913)
,p_event_id=>wwv_flow_imp.id(148422853964126247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.GET_DATA_COL(pseq_id               => :P501_EDIT_DATA,',
'                          pcod_proveedor        => :P501_COD_PROVEEDOR_ADD,',
'                          pcod_persona          => :P501_COD_PERSONA_ADD,',
'                          pcod_rubro            => :P501_COD_RUBRO_ADD,',
'                          pestado               => :P501_ESTADO_ADD,',
'                          pcod_moneda           => :P501_COD_MONEDA_ADD,',
'                          pexento               => :P501_EXENTO_ADD,',
'                          pdirecto              => :P501_DIRECTO_ADD,',
'                          pnomb_proveedor       => :P501_NOMB_PROVEEDOR_ADD,',
'                          pexterior             => :P501_EXTERIOR_ADD,',
'                          pcod_sucursal         => :P501_COD_SUCURSAL_ADD,',
'                          pnom_raz_soc_prov     => :P501_NOM_RAZ_SOC_PROV_ADD,',
'                          pcod_agente_sta       => :P501_COD_AGENTE_STA_ADD,',
'                          pafecta_cta_pag       => :P501_AFECTA_CTA_PAG_ADD,',
'                          pobservacion          => :P501_OBSERVACION_ADD,',
'                          pind_servicio_tecnico => :P501_IND_SERVICIO_TECNICO_ADD,',
'                          pcantidad_ots         => :P501_CANTIDAD_OTS_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_EDIT_DATA'
,p_attribute_03=>'P501_COD_PROVEEDOR_ADD,P501_COD_PERSONA_ADD,P501_COD_RUBRO_ADD,P501_ESTADO_ADD,P501_COD_MONEDA_ADD,P501_EXENTO_ADD,P501_DIRECTO_ADD,P501_NOMB_PROVEEDOR_ADD,P501_EXTERIOR_ADD,P501_COD_SUCURSAL_ADD,P501_NOM_RAZ_SOC_PROV_ADD,P501_COD_AGENTE_STA_ADD,P501'
||'_AFECTA_CTA_PAG_ADD,P501_OBSERVACION_ADD,P501_IND_SERVICIO_TECNICO_ADD,P501_CANTIDAD_OTS_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149563480057086601)
,p_event_id=>wwv_flow_imp.id(148422853964126247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148574402289869233)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148423003646126249)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148423140572126250)
,p_event_id=>wwv_flow_imp.id(148423003646126249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148573055028869219)
,p_event_id=>wwv_flow_imp.id(148423003646126249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.DELETE_COL(pseq_id   => :P501_DELETE_DATA, ',
'                        p_col     => ''COLEC_CM_PROVEEDORES'',',
'                        patributo => 49);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148573190337869220)
,p_event_id=>wwv_flow_imp.id(148423003646126249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147168312994697035)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148474008284892319)
,p_name=>'DA_SECTORES'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148472953446892308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575700666869246)
,p_event_id=>wwv_flow_imp.id(148474008284892319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P501_DESC_RUBRO_PRO,P501_COD_RUBRO_PRO,P501_COD_PROVEEDOR_AUX,P501_EDIT_DATA_PRO,P501_MENSAJE_PRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148574782617869236)
,p_event_id=>wwv_flow_imp.id(148474008284892319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT c002',
'          INTO :P501_COD_PROVEEDOR_AUX',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CM_PROVEEDORES''',
'           AND seq_id = :P501_DET_DATA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P501_COD_PROVEEDOR_AUX := NULL;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTSECTORES ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_DET_DATA'
,p_attribute_03=>'P501_COD_PROVEEDOR_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575020141869239)
,p_event_id=>wwv_flow_imp.id(148474008284892319)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148571421789869203)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148474111099892320)
,p_event_id=>wwv_flow_imp.id(148474008284892319)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148473988351892318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148572720887869216)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_CANTIDAD_OTS_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148572814997869217)
,p_event_id=>wwv_flow_imp.id(148572720887869216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148573415237869223)
,p_name=>'DA_EDIT_DATA_PRO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_EDIT_DATA_PRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148573526207869224)
,p_event_id=>wwv_flow_imp.id(148573415237869223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_EDIT_DATA_PRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575100216869240)
,p_event_id=>wwv_flow_imp.id(148573415237869223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.CAR_EDIT_DATA_COL_PRO_RUB(pedit_data   => :P501_EDIT_DATA_PRO,',
'                                       pcod_sector  => :P501_COD_RUBRO_PRO,',
'                                       pdesc_sector => :P501_DESC_RUBRO_PRO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_PRO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_EDIT_DATA_PRO'
,p_attribute_03=>'P501_COD_RUBRO_PRO,P501_DESC_RUBRO_PRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148573696619869225)
,p_name=>'DA_DELETE_DATA_PRO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_DELETE_DATA_PRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148573741077869226)
,p_event_id=>wwv_flow_imp.id(148573696619869225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_DELETE_DATA_PRO'
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
 p_id=>wwv_flow_imp.id(148573896495869227)
,p_event_id=>wwv_flow_imp.id(148573696619869225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.DELETE_COL(pseq_id   => :P501_DELETE_DATA_PRO, ',
'                        p_col     => ''COLEC_CP_PROVEEDORES_RUBRO'',',
'                        patributo => 4);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_PRO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_DELETE_DATA_PRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148573905531869228)
,p_event_id=>wwv_flow_imp.id(148573696619869225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148571421789869203)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148574169891869230)
,p_name=>'DA_ESTADO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148574207702869231)
,p_event_id=>wwv_flow_imp.id(148574169891869230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148574399973869232)
,p_event_id=>wwv_flow_imp.id(148574169891869230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.ACTIVO_COL(pseq_id   => :P501_DET_DATA, ',
'                        p_col     => ''COLEC_CM_PROVEEDORES'',',
'                        patributo => 6,',
'                        pvalor    => :P501_ESTADO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ESTADO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_DET_DATA,P501_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148574532283869234)
,p_name=>'DA_BTAGREGAR_PROVEEDOR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148572927312869218)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148476448576892343)
,p_event_id=>wwv_flow_imp.id(148574532283869234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P501_EDIT_DATA,P501_COD_PROVEEDOR_ADD,P501_COD_PERSONA_ADD,P501_NOMB_PROVEEDOR_ADD,P501_COD_RUBRO_ADD,P501_DESC_RUBRO_ADD,P501_COD_MONEDA_ADD,P501_IND_SERVICIO_TECNICO_ADD,P501_COD_SUCURSAL_ADD,P501_DESC_SUCURSAL_ADD,P501_COD_AGENTE_STA_ADD,P501_CANT'
||'IDAD_OTS_ADD,P501_ESTADO_ADD,P501_OBSERVACION_ADD,P501_EXENTO_ADD,P501_DIRECTO_ADD,P501_AFECTA_CTA_PAG_ADD,P501_MENSAJE_PERSONA_ADD,P501_MENSAJE_RUBRO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148476308206892342)
,p_event_id=>wwv_flow_imp.id(148574532283869234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P501_COD_SUCURSAL_ADD := :P_COD_SUCURSAL;',
'    :P501_EXENTO_ADD := ''S'';',
'    :P501_ESTADO_ADD := ''A'';',
'    :P501_DIRECTO_ADD := ''S'';',
'    :P501_EXTERIOR_ADD := ''N'';',
'    :P501_AFECTA_CTA_PAG_ADD := ''S'';',
'',
'    BEGIN',
'        SELECT MAX(NVL(TO_NUMBER(c002),0)) + 1',
'          INTO :P501_COD_PROVEEDOR_ADD',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CM_PROVEEDORES''',
'           AND c001 = :P_COD_EMPRESA;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        IF substr(sqlerrm, 1, 9) = ''ORA-01722'' THEN',
'            :P501_COD_PROVEEDOR_ADD := NULL;',
'        ELSE',
'            :P501_COD_PROVEEDOR_ADD := 1; ',
'        END IF;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTNUEVO_PROVEEDOR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_SUCURSAL,P_COD_EMPRESA'
,p_attribute_03=>'P501_COD_SUCURSAL_ADD,P501_EXENTO_ADD,P501_ESTADO_ADD ,P501_DIRECTO_ADD,P501_EXTERIOR_ADD,P501_AFECTA_CTA_PAG_ADD,P501_COD_PROVEEDOR_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148574659657869235)
,p_event_id=>wwv_flow_imp.id(148574532283869234)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148574402289869233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148575241524869241)
,p_name=>'DA_BTAGREGAR_EDITAR_RUB_PRO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148572449927869213)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575356579869242)
,p_event_id=>wwv_flow_imp.id(148575241524869241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_COD_RUBRO_PRO,P501_DESC_RUBRO_PRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575428925869243)
,p_event_id=>wwv_flow_imp.id(148575241524869241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P501_MENSAJE_PRO := NULL;',
'    ',
'    CAPROVEE.ADD_COL_PRO_RUB(pcod_empresa   => :P_COD_EMPRESA,',
'                             pcod_proveedor => :P501_COD_PROVEEDOR_AUX,',
'                             pcod_sector    => :P501_COD_RUBRO_PRO,',
'                             pdesc_sector   => :P501_DESC_RUBRO_PRO,',
'                             pmensaje       => :P501_MENSAJE_PRO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTAGREGAR_EDITAR_PRO ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P501_COD_PROVEEDOR_AUX,P501_COD_RUBRO_PRO,P501_DESC_RUBRO_PRO'
,p_attribute_03=>'P501_MENSAJE_PRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P501_EDIT_DATA_PRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575589588869244)
,p_event_id=>wwv_flow_imp.id(148575241524869241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P501_MENSAJE_PRO := NULL;',
'    ',
'    CAPROVEE.EDIT_COL_PRO_RUB(pseq_id      => :P501_EDIT_DATA_PRO,',
'                              pcod_sector  => :P501_COD_RUBRO_PRO,',
'                              pdesc_sector => :P501_DESC_RUBRO_PRO,',
'                              pmensaje     => :P501_MENSAJE_PRO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTAGREGAR_EDITAR_PRO EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_EDIT_DATA_PRO,P501_COD_RUBRO_PRO,P501_DESC_RUBRO_PRO'
,p_attribute_03=>'P501_MENSAJE_PRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_EDIT_DATA_PRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148575634583869245)
,p_event_id=>wwv_flow_imp.id(148575241524869241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148571421789869203)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148575965151869248)
,p_name=>'DA_MENSAJE_PRO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_MENSAJE_PRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148576098886869249)
,p_event_id=>wwv_flow_imp.id(148575965151869248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_MENSAJE_PRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148576163517869250)
,p_event_id=>wwv_flow_imp.id(148575965151869248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P501_MENSAJE_PRO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_MENSAJE_PRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148476518160892344)
,p_name=>'DA_COD_PERSONA_ADD'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_COD_PERSONA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148476618580892345)
,p_event_id=>wwv_flow_imp.id(148476518160892344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_COD_PERSONA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148476773211892346)
,p_event_id=>wwv_flow_imp.id(148476518160892344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.VALIDATE_COD_PERSONA(pcod_empresa  => :P_COD_EMPRESA,',
'                                  pcod_persona  => :P501_COD_PERSONA_ADD,',
'                                  pedit_data    => :P501_EDIT_DATA,',
'                                  pmensaje      => :P501_MENSAJE_PERSONA_ADD,',
'                                  pdesc_persona => :P501_DESC_PERSONA_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_PERSONA_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P501_COD_PERSONA_ADD,P501_EDIT_DATA'
,p_attribute_03=>'P501_MENSAJE_PERSONA_ADD,P501_DESC_PERSONA_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_COD_PERSONA_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148477090737892349)
,p_name=>'DA_MENSAJE_PERSONA_ADD'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_MENSAJE_PERSONA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148477142785892350)
,p_event_id=>wwv_flow_imp.id(148477090737892349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_MENSAJE_PERSONA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149489258889830901)
,p_event_id=>wwv_flow_imp.id(148477090737892349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P501_MENSAJE_PERSONA_ADD.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_MENSAJE_PERSONA_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149489478452830903)
,p_name=>'DA_COD_RUBRO_ADD'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_COD_RUBRO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149489569448830904)
,p_event_id=>wwv_flow_imp.id(149489478452830903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_COD_RUBRO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149489687996830905)
,p_event_id=>wwv_flow_imp.id(149489478452830903)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.VALIDATE_COD_RUBRO(pcod_rubro  => :P501_COD_RUBRO_ADD,',
'                                pdesc_rubro => :P501_DESC_RUBRO_ADD,',
'                                pmensaje    => :P501_MENSAJE_RUBRO_ADD,',
'                                pexcento    => :P501_EXENTO_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_RUBRO_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_COD_RUBRO_ADD'
,p_attribute_03=>'P501_DESC_RUBRO_ADD,P501_MENSAJE_RUBRO_ADD,P501_EXENTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_COD_RUBRO_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149489886951830907)
,p_name=>'DA_MENSAJE_RUBRO_ADD'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P501_MENSAJE_RUBRO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149489970250830908)
,p_event_id=>wwv_flow_imp.id(149489886951830907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P501_MENSAJE_RUBRO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490030032830909)
,p_event_id=>wwv_flow_imp.id(149489886951830907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P501_MENSAJE_RUBRO_ADD.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_MENSAJE_RUBRO_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149490256619830911)
,p_name=>'DA_BTGUARDAR_EDITAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148475891515892337)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490344858830912)
,p_event_id=>wwv_flow_imp.id(149490256619830911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.ADD_COL(pcod_empresa          => :P_COD_EMPRESA,',
'                     pcod_proveedor        => :P501_COD_PROVEEDOR_ADD,',
'                     pcod_persona          => :P501_COD_PERSONA_ADD,',
'                     pcod_rubro            => :P501_COD_RUBRO_ADD,',
'                     pestado               => NVL(:P501_ESTADO_ADD,''I''),',
'                     pcod_moneda           => :P501_COD_MONEDA_ADD,',
'                     pexento               => :P501_EXENTO_ADD,',
'                     pdirecto              => :P501_DIRECTO_ADD,',
'                     pnomb_proveedor       => :P501_NOMB_PROVEEDOR_ADD,',
'                     pexterior             => :P501_EXTERIOR_ADD,',
'                     pcod_sucursal         => :P501_COD_SUCURSAL_ADD,',
'                     pcod_usuario          => :P_COD_USUARIO,',
'                     pfec_alta             => SYSDATE,',
'                     pnom_raz_soc_prov     => :P501_NOM_RAZ_SOC_PROV_ADD,',
'                     pcod_agente_sta       => :P501_COD_AGENTE_STA_ADD,',
'                     pafecta_cta_pag       => :P501_AFECTA_CTA_PAG_ADD,',
'                     pind_transferencia    => NULL,',
'                     pobservacion          => :P501_OBSERVACION_ADD,',
'                     pind_servicio_tecnico => :P501_IND_SERVICIO_TECNICO_ADD,',
'                     pcantidad_ots         => :P501_CANTIDAD_OTS_ADD);',
'',
'    SELECT MAX(NVL(seq_id,0))',
'      INTO :P501_DET_DATA',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_CM_PROVEEDORES''',
'      AND c001 = :P_COD_EMPRESA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR_EDITAR ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P501_COD_PROVEEDOR_ADD,P501_COD_PERSONA_ADD,P501_COD_RUBRO_ADD,P501_ESTADO_ADD,P501_COD_MONEDA_ADD,P501_EXENTO_ADD,P501_DIRECTO_ADD,P501_NOMB_PROVEEDOR_ADD,P501_EXTERIOR_ADD,P501_COD_SUCURSAL_ADD,P_COD_USUARIO,P501_NOM_RAZ_SOC_PROV_ADD,'
||'P501_COD_AGENTE_STA_ADD,P501_AFECTA_CTA_PAG_ADD,P501_OBSERVACION_ADD,P501_IND_SERVICIO_TECNICO_ADD,P501_CANTIDAD_OTS_ADD'
,p_attribute_03=>'P501_DET_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P501_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490512505830914)
,p_event_id=>wwv_flow_imp.id(149490256619830911)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.EDIT_COL(pseq_id               => :P501_EDIT_DATA,',
'                      pcod_proveedor        => :P501_COD_PROVEEDOR_ADD,',
'                      pcod_persona          => :P501_COD_PERSONA_ADD,',
'                      pcod_rubro            => :P501_COD_RUBRO_ADD,',
'                      pestado               => NVL(:P501_ESTADO_ADD,''I''),',
'                      pcod_moneda           => :P501_COD_MONEDA_ADD,',
'                      pexento               => :P501_EXENTO_ADD,',
'                      pdirecto              => :P501_DIRECTO_ADD,',
'                      pnomb_proveedor       => :P501_NOMB_PROVEEDOR_ADD,',
'                      pexterior             => :P501_EXTERIOR_ADD,',
'                      pcod_sucursal         => :P501_COD_SUCURSAL_ADD,',
'                      pnom_raz_soc_prov     => :P501_NOM_RAZ_SOC_PROV_ADD,',
'                      pcod_agente_sta       => :P501_COD_AGENTE_STA_ADD,',
'                      pafecta_cta_pag       => :P501_AFECTA_CTA_PAG_ADD,',
'                      pind_transferencia    => NULL,',
'                      pobservacion          => :P501_OBSERVACION_ADD,',
'                      pind_servicio_tecnico => :P501_IND_SERVICIO_TECNICO_ADD,',
'                      pcantidad_ots         => :P501_CANTIDAD_OTS_ADD,',
'                      pcod_usuario_mod      => :P_COD_USUARIO,',
'                      pfec_actualizacion    => SYSDATE);',
'',
'    :P501_DET_DATA := :P501_EDIT_DATA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR_EDITAR EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_EDIT_DATA,P501_COD_PROVEEDOR_ADD,P501_COD_PERSONA_ADD,P501_COD_RUBRO_ADD,P501_ESTADO_ADD,P501_COD_MONEDA_ADD,P501_EXENTO_ADD,P501_DIRECTO_ADD,P501_NOMB_PROVEEDOR_ADD,P501_EXTERIOR_ADD,P501_COD_SUCURSAL_ADD,P501_NOM_RAZ_SOC_PROV_ADD,P501_COD_AGEN'
||'TE_STA_ADD,P501_AFECTA_CTA_PAG_ADD,P501_OBSERVACION_ADD,P501_IND_SERVICIO_TECNICO_ADD,P501_CANTIDAD_OTS_ADD,P_COD_USUARIO'
,p_attribute_03=>'P501_DET_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P501_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490697217830915)
,p_event_id=>wwv_flow_imp.id(149490256619830911)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148574402289869233)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490787217830916)
,p_event_id=>wwv_flow_imp.id(149490256619830911)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147168312994697035)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149563510995086602)
,p_name=>'BTGUARDAR_CAMBIOS'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148574007098869229)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149563631198086603)
,p_event_id=>wwv_flow_imp.id(149563510995086602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149563807125086605)
,p_event_id=>wwv_flow_imp.id(149563510995086602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SAVE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149563924557086606)
,p_name=>'DA_CONTACTOS'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148473033860892309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149564091580086607)
,p_event_id=>wwv_flow_imp.id(149563924557086606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT c003',
'          INTO :P501_COD_PERSONA_AUX',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CM_PROVEEDORES''',
'           AND seq_id = :P501_DET_DATA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P501_COD_PERSONA_AUX := NULL;',
'    END;',
'    ',
'    SELECT APEX_PAGE.GET_URL(p_page => 498,',
'			                 p_items  => ''P498_COD_PERSONA'', ',
'			                 p_values => ''''||:P501_COD_PERSONA_AUX||'''') f_url_1',
'      INTO :P501_URL',
'      FROM DUAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTCONTACTOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P501_DET_DATA,P501_COD_PERSONA_AUX'
,p_attribute_03=>'P501_COD_PERSONA_AUX,P501_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149564273878086609)
,p_event_id=>wwv_flow_imp.id(149563924557086606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'var url = apex.item("P501_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314024801693409020)
,p_name=>'load_page'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314024953387409021)
,p_event_id=>wwv_flow_imp.id(314024801693409020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P501_ESTADO'').disabled = true;'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(149106272841605202)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147168443657697036)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COLEC_CM_PROVEEDORES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COLEC_CP_PROVEEDORES_RUBRO'');',
':P501_COD_MODULO := ''CA'';',
'CAPROVEE.CARGAR_COL(pcod_empresa => :P_COD_EMPRESA);',
'',
'CAPROVEE.CARGAR_COL_PRO_RUB(pcod_empresa   => :P_COD_EMPRESA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(149563760949086604)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAPROVEE.GUARDAR_CAMBIOS;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000, ''PR_SAVE ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
