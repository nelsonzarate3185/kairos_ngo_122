prompt --application/pages/page_00573
begin
--   Manifest
--     PAGE: 00573
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
 p_id=>573
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento SNC de STAs'
,p_alias=>'SEGUIMIENTO-SNC-DE-STAS'
,p_step_title=>'Seguimiento SNC de STAs'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DATOS{',
'border-radius: 10px;',
'}',
'',
'',
'#DATOS  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    ',
'}',
'',
'#P146_DESC_ART,#P146_PROVEEDOR_DET,#P146_TEXTO,#P146_CREA_USER{',
'    font-size: 11px;',
'   ',
'}',
'',
'#RESPONSABLE{',
'    display: inline;',
'}',
'#RS{',
'    ',
'    font-weight: bold !important;',
'    }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231213143810'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204068706039035020)
,p_plug_name=>'Filtros'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P573_ACCION'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204069485147035028)
,p_plug_name=>'Solicitudes'
,p_region_name=>'CONFORMIDADES'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT',
'	a.ROWID AS ROW_ID,',
'	a.COD_EMPRESA,',
'	a.NRO_SOLICITUD,',
'	a.FEC_SOLICITUD,',
'	a.COD_CLIENTE,',
'	a.AUTORIZA_USER,',
'	a.COD_PROVEEDOR,',
'	a.OBSERVACION,',
'	a.ESTADO,',
'	a.FECHA_AUTORIZA,',
'	a.FECHA_CREACION,',
'	a.FECHA_RECHAZO,',
'	a.FECHA_FINALIZA,',
'	a.RECHAZA_USER,',
'	a.FINALIZA_USER,',
'	a.CREA_USER,',
'	a.TIPO_SOLICITUD,',
'	a.SER_SOLICITUD,',
'	a.OPERACION,',
'	a.FECHA_ANULA,',
'	a.ANULA_USER,',
'	a.SERIE,',
'	a.COD_SUC_ENT,',
'	a.COD_SUC_SAL,',
'	a.TIPO_COMPROBANTE,',
'	a.TIP_COMPROBANTE_REF,',
'	a.SER_COMPROBANTE_REF,',
'	a.NRO_COMPROBANTE_REF,',
'	a.COD_SUCURSAL,',
'	a.COD_MOTIVO,',
'	a.DEPARTAMENTO,',
'	a.TIPO_SEGUIMIENTO,',
'	a.COD_REPARTIDOR,',
'	c.COD_ARTICULO,',
'	c.DESCRIPCION,',
'	b.CANTIDAD,',
'	e.NOMBRE, ',
'		a.TIP_COMPROBANTE_REF||''-''|| a.SER_COMPROBANTE_REF || ''-'' || a.NRO_COMPROBANTE_REF AS documento,',
'		 ''x'' EDITAR,',
'	DEPARTAMENTO_CREACION,',
'	(',
'	SELECT',
'		DISTINCT r.COD_MOTIVO || ''-'' || DESCRIPCION',
'	FROM',
'		PROBLEMAS_CONFORMIDAD r',
'	WHERE',
'		r.COD_EMPRESA = a.COD_EMPRESA',
'		AND r.COD_MOTIVO = a.COD_MOTIVO)MOTIVO_DESC',
'FROM',
'	CA_CONFORMIDAD a,',
'	CA_CONFORMIDAD_DET b,',
'	st_articulos c,',
'	cc_clientes d,',
'	personas e',
'WHERE',
'	a.COD_EMPRESA = :P_COD_EMPRESA',
'	AND a.COD_EMPRESA = b.COD_EMPRESA',
'	AND a.NRO_SOLICITUD = b.NRO_SOLICITUD',
'	AND a.SER_SOLICITUD = b.SER_SOLICITUD',
'	AND a.TIPO_SOLICITUD = b.TIPO_SOLICITUD',
'	AND a.COD_EMPRESA = c.COD_EMPRESA',
'	AND b.COD_ARTICULO = c.COD_ARTICULO',
'	AND a.COD_EMPRESA = d.COD_EMPRESA',
'	AND a.COD_CLIENTE = d.COD_CLIENTE',
'	AND d.COD_PERSONA = e.COD_PERSONA',
'	AND (a.DEPARTAMENTO = :P573_DEPARTAMENTO_B',
'		OR :P573_DEPARTAMENTO_B IS NULL)',
'	AND (TRUNC(a.FECHA_CREACION) >= :P573_FECHA_DESDE OR :P573_FECHA_DESDE IS NULL)',
' 	AND (TRUNC(a.FECHA_CREACION) <= :P573_FECHA_HASTA OR :P573_FECHA_HASTA IS NULL)',
' 	AND (a.COD_CLIENTE = :P573_STA OR :P573_STA IS NULL)',
'	AND (a.NRO_COMPROBANTE_REF = :P573_NRO_OT  OR :P573_NRO_OT is null)',
'	AND (a.NRO_COMPROBANTE_REF = :P573_NRO_FACTURA  OR :P573_NRO_FACTURA is null)',
'	/**/',
'   AND (a.OPERACION        IN (SELECT REGEXP_SUBSTR(:P573_OPERACION_B,''[^:]+'', 1, LEVEL) CLAVE',
'                                  FROM DUAL',
'                               CONNECT BY REGEXP_SUBSTR(:P573_OPERACION_B,''[^:]+'', 1, LEVEL) IS NOT NULL) OR REGEXP_REPLACE(:P573_OPERACION_B,'':'','','')  IS NULL)',
'   AND (a.ESTADO           = :P573_ESTADO_B OR :P573_ESTADO_B IS NULL)',
'   AND (a.TIPO_COMPROBANTE IN (SELECT REGEXP_SUBSTR(:P573_TIPO_COMPROB_B,''[^:]+'', 1, LEVEL) CLAVE',
'                                  FROM DUAL',
'                               CONNECT BY REGEXP_SUBSTR(:P573_TIPO_COMPROB_B,''[^:]+'', 1, LEVEL) IS NOT NULL)   OR REGEXP_REPLACE(:P573_TIPO_COMPROB_B,'':'','','')   IS NULL)					   ',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P573_DEPARTAMENTO_B,P573_OPERACION_B,P573_ESTADO_B,P573_TIPO_COMPROB_B,P573_FECHA_DESDE,P573_FECHA_HASTA,P573_STA,P573_NRO_OT,P573_NRO_FACTURA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Solicitudes'
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
 p_id=>wwv_flow_imp.id(204069545488035029)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>204069545488035029
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184936376706802519)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184942333525802516)
,p_db_column_name=>'TIPO_SOLICITUD'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184942791750802516)
,p_db_column_name=>'SER_SOLICITUD'
,p_display_order=>30
,p_column_identifier=>'Q'
,p_column_label=>'Ser Solicitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184936747288802519)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184937106936802519)
,p_db_column_name=>'FEC_SOLICITUD'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Fecha Solicitud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184937585124802518)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184937943806802518)
,p_db_column_name=>'AUTORIZA_USER'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Autoriza User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184938315289802518)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184938711087802518)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184939139837802518)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184939548884802517)
,p_db_column_name=>'FECHA_AUTORIZA'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Fecha Autoriza'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184939972336802517)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184940336394802517)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184940761839802517)
,p_db_column_name=>'FECHA_FINALIZA'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Fecha Finaliza'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184941104121802516)
,p_db_column_name=>'RECHAZA_USER'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Rechaza User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184941547519802516)
,p_db_column_name=>'FINALIZA_USER'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Finaliza User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184941942204802516)
,p_db_column_name=>'CREA_USER'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Crea User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184943161357802516)
,p_db_column_name=>'OPERACION'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184943538172802515)
,p_db_column_name=>'FECHA_ANULA'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Fecha Anula'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184943963518802515)
,p_db_column_name=>'ANULA_USER'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Anula User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184944378565802515)
,p_db_column_name=>'SERIE'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184944754406802515)
,p_db_column_name=>'COD_SUC_ENT'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Entrada'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10765557050450931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184945109836802515)
,p_db_column_name=>'COD_SUC_SAL'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Salida'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10765557050450931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184945532954802514)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184945951705802514)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184946322585802514)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184946740141802514)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184947164717802514)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184947534210802513)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184947970912802513)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184948358267802513)
,p_db_column_name=>'TIPO_SEGUIMIENTO'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Tipo Seguimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184948721425802513)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185083959465060707)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084087143060708)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084188974060709)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084215797060710)
,p_db_column_name=>'NOMBRE'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084343364060711)
,p_db_column_name=>'DOCUMENTO'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084406940060712)
,p_db_column_name=>'EDITAR'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_ROWID_B,P146_ACCION:#ROW_ID#,BSMENSAJ'
,p_column_linktext=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084520874060713)
,p_db_column_name=>'DEPARTAMENTO_CREACION'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Departamento Creacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084687385060714)
,p_db_column_name=>'MOTIVO_DESC'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Motivo Desc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084798378060715)
,p_db_column_name=>'ROW_ID'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Row Id'
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
 p_id=>wwv_flow_imp.id(204991352139795040)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:TIPO_SOLICITUD:SER_SOLICITUD:NRO_SOLICITUD:FEC_SOLICITUD:ESTADO:OPERACION:TIPO_COMPROBANTE:COD_SUC_ENT:COD_ARTICULO:DESCRIPCION:DOCUMENTO:MOTIVO_DESC:NOMBRE:'
,p_sort_column_1=>'FEC_SOLICITUD'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228656578565770734)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(184933214518802521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(184933626496802521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(184991022351802477)
,p_branch_name=>'Limpiar Pagina'
,p_branch_action=>'f?p=&APP_ID.:573:&SESSION.::&DEBUG.:573::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREAR,ACTUALIZAR,ELIMINAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68483679836692742)
,p_name=>'P573_FECHA_DESDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(68483775634692743)
,p_name=>'P573_FECHA_HASTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(68483870953692744)
,p_name=>'P573_STA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Servicio Tecnico Autorizado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'p.nombre, c.cod_cliente ',
'FROM cm_proveedores a,',
'personas p, ',
'cc_clientes c',
'WHERE a.COD_EMPRESA = 1',
'AND a.COD_PERSONA = p.COD_PERSONA ',
'AND a.IND_SERVICIO_TECNICO = ''STA''',
'AND a.ESTADO = ''A''',
'AND a.COD_EMPRESA = c.COD_EMPRESA ',
'AND a.COD_PERSONA = c.COD_PERSONA ',
'AND c.ESTADO = ''A''',
'ORDER by p.nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(68483996913692745)
,p_name=>'P573_NRO_OT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Nro Ot'
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
 p_id=>wwv_flow_imp.id(68484015192692746)
,p_name=>'P573_NRO_FACTURA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Nro Factura'
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
 p_id=>wwv_flow_imp.id(184934089500802521)
,p_name=>'P573_ESTADO_B'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184934403709802521)
,p_name=>'P573_DEPARTAMENTO_B'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Dpto. Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,OPERACIONES;OPERACIONES,REPUESTOS;REPUESTOS,POSTVENTA;POSTVENTA,MARKETING;MARKETING,TIC;TIC'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'  TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184934822670802520)
,p_name=>'P573_OPERACION_B'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>unistr('Operaci\00F3n')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:CAMBIO;CMB,NOTA DE CREDITO;NCR,TRASLADO;TRA'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184935249778802520)
,p_name=>'P573_TIPO_COMPROB_B'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:ORDEN TRABAJO;OT,FACTURA COMPRA;FC,FACTURA VENTA;FV'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184935607395802520)
,p_name=>'P573_ACCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(204068706039035020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184951089007802511)
,p_name=>'P573_ROWID_B'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204069485147035028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184951727754802511)
,p_name=>'P573_COD_SUCURSAL_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184952126431802511)
,p_name=>'P573_COD_SUC_ENTRADA_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184952577189802510)
,p_name=>'P573_COD_SUC_SALIDA_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184952907609802510)
,p_name=>'P573_OPERACION_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184953303475802510)
,p_name=>'P573_TIPO_COMPROBANTE_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184953772209802510)
,p_name=>'P573_DEPARTAMENTO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184954182929802510)
,p_name=>'P573_COD_MOTIVO_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184954567693802510)
,p_name=>'573_VAR_TIP_ORDEN_TRABAJO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184954977910802509)
,p_name=>'573_VAR_SER_ORDEN_TRABAJO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184955355008802509)
,p_name=>'573_VAR_COD_MONEDA_BASE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184955726631802509)
,p_name=>'573_VAR_FECHAOT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184956102655802509)
,p_name=>'573_VAR_AUTORIZA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184956514545802509)
,p_name=>'573_VAR_MODIFICA_DEPARTAMENTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184956938206802509)
,p_name=>'573_VAR_UPD_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184957344040802508)
,p_name=>'573_VAR_MODIFICA_REPARTIDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184957762274802508)
,p_name=>'573_VAR_MODIFICA_PRECIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(228656578565770734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184964740840802491)
,p_name=>'Clic_Buscar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(184933214518802521)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184965213678802489)
,p_event_id=>wwv_flow_imp.id(184964740840802491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204069485147035028)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184965792451802489)
,p_event_id=>wwv_flow_imp.id(184964740840802491)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204069485147035028)
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
 p_id=>wwv_flow_imp.id(184966167563802489)
,p_name=>'Cambiar_Rowid_B'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_ROWID_B'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184966685975802489)
,p_event_id=>wwv_flow_imp.id(184966167563802489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184967022005802489)
,p_name=>'DA_Cambiar_Operacion'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_OPERACION'
,p_condition_element=>'P573_OPERACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NCR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184967541043802488)
,p_event_id=>wwv_flow_imp.id(184967022005802489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P573_COD_SUC_SALIDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184968010273802488)
,p_event_id=>wwv_flow_imp.id(184967022005802489)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P573_COD_SUC_SALIDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184968519029802488)
,p_event_id=>wwv_flow_imp.id(184967022005802489)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P573_COD_SUC_ENTRADA,P573_COD_SUC_SALIDA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184968938811802488)
,p_name=>'DA_Cambiar_Tipo_Comprob'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_TIPO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184969462856802487)
,p_event_id=>wwv_flow_imp.id(184968938811802488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	IF :P573_TIPO_COMPROBANTE =''OT'' THEN',
'			:P573_TIP_COMPROBANTE_REF:=''ORT'';',
'			:P573_COD_SUCURSAL:=''30'';',
'	ELSIF :P573_TIPO_COMPROBANTE =''FV'' THEN',
'		--:CA_CONFORMIDAD.TIP_COMPROBANTE_REF:=''FCR'';		',
'			:P573_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	ELSIF :P573_TIPO_COMPROBANTE =''FC'' THEN',
'		:P573_TIP_COMPROBANTE_REF:=''FAC'';		',
'			:P573_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	END IF;',
'	',
'IF :P573_OPERACION=''TRA'' AND :P573_TIPO_COMPROBANTE<>''FC'' THEN',
'			RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para OPERACION: TRASLADO'');',
'			',
'ELSIF :P573_OPERACION IN (''CMB'',''NCR'') AND :P573_TIPO_COMPROBANTE=''FC'' THEN',
'		  RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para Operacion seleccionada'');',
'			',
'END IF;',
'',
':P573_SER_COMPROBANTE_REF := '''';',
':P573_NRO_COMPROBANTE_REF := '''';'))
,p_attribute_02=>'P573_OPERACION,P573_TIPO_COMPROBANTE'
,p_attribute_03=>'P573_TIP_COMPROBANTE_REF,P573_COD_SUCURSAL_AUX,P573_SER_COMPROBANTE_REF,P573_NRO_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184969873942802487)
,p_name=>'DA_Cambiar_Departamento'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_DEPARTAMENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184970343955802487)
,p_event_id=>wwv_flow_imp.id(184969873942802487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	IF :P573_TIPO_COMPROBANTE =''OT'' THEN',
'			:P573_TIP_COMPROBANTE_REF:=''ORT'';',
'			:P573_COD_SUCURSAL:=''30'';',
'	ELSIF :P573_TIPO_COMPROBANTE =''FV'' THEN',
'		--:CA_CONFORMIDAD.TIP_COMPROBANTE_REF:=''FCR'';		',
'			:P573_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	ELSIF :P573_TIPO_COMPROBANTE =''FC'' THEN',
'		:P573_TIP_COMPROBANTE_REF:=''FAC'';		',
'			:P573_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	END IF;',
'	',
'IF :P573_OPERACION=''TRA'' AND :P573_TIPO_COMPROBANTE<>''FC'' THEN',
'			RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para OPERACION: TRASLADO'');',
'			',
'ELSIF :P573_OPERACION IN (''CMB'',''NCR'') AND :P573_TIPO_COMPROBANTE=''FC'' THEN',
'		  RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para Operacion seleccionada'');',
'			',
'END IF;'))
,p_attribute_02=>'P573_OPERACION,P573_TIPO_COMPROBANTE'
,p_attribute_03=>'P573_TIP_COMPROBANTE_REF,P573_COD_SUCURSAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184970723399802487)
,p_name=>'DA_Cambiar_Estado'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184971734641802487)
,p_event_id=>wwv_flow_imp.id(184970723399802487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P573_ACCION = ''N'' THEN',
'		:P573_ESTADO:=''CREADO'';',
'END IF;',
'',
'',
'',
'IF :P573_ESTADO = ''FINALIZADO'' AND :P573_FECHA_AUTORIZA is null and',
':P573_FEC_RECHAZO is null THEN ',
'',
'		RAISE_APPLICATION_ERROR(-20001,''El Comprobante No Se Puede Finalizar; Tiene Que Aprobarse O Rechazarse''); ',
'',
'END IF; ',
'',
'IF :P573_ESTADO = ''PROCESADO'' AND :P573_AUTORIZA_USER IS NULL THEN ',
'',
'		RAISE_APPLICATION_ERROR(-20001,''El Comprobante No Se Puede Finalizar; Tiene Un Pedido Pendiente O Facturado Parcialmente''); ',
'		--RAISE FORM_TRIGGER_FAILURE; ',
' ',
'END IF; ',
'CANOCONF.PROCBD_CONTROL_AUTORIZACION(''1'',',
'                              :APP_USER,',
'                              :P573_COD_MOTIVO,',
'                              :P573_DEPARTAMENTO,',
'                             ',
'                              :P573_ESTADO);'))
,p_attribute_02=>'P573_ACCION,P573_ESTADO,P573_FECHA_AUTORIZA,P573_FEC_RECHAZO,P573_COD_MOTIVO,P573_COD_EMPRESA,P573_DEPARTAMENTO'
,p_attribute_03=>'P573_ESTADO'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184971269488802487)
,p_event_id=>wwv_flow_imp.id(184970723399802487)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_CONTROL_AUTORIZACION(:P573_COD_EMPRESA,',
'                              :APP_USER,',
'                              :P573_COD_MOTIVO,',
'                              :P573_DEPARTAMENTO,',
'                             ',
'                              :P573_ESTADO);'))
,p_attribute_02=>'P573_COD_EMPRESA,P573_COD_MOTIVO,P573_DEPARTAMENTO,P573_ESTADO'
,p_attribute_03=>'P573_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184972188862802486)
,p_name=>'DA_Doble_Clic'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_NRO_COMPROBANTE_REF'
,p_condition_element=>'P573_TIP_COMPROBANTE_REF'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'FCR,FCO,ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184972696616802486)
,p_event_id=>wwv_flow_imp.id(184972188862802486)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = "f?p=#APP_ID#:193:#SESSION#::NO:";',
'url = url.replace("#APP_ID#", $v("pFlowId"));',
'url = url.replace("#SESSION#", $v("pInstance"));',
'',
'apex.server.process("PREPARE_URL_DC", {',
'x01: url',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'',
'       window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184973098417802486)
,p_name=>'Cambiar_Cod_Suc_Ent'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_COD_SUC_ENTRADA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184973522941802486)
,p_event_id=>wwv_flow_imp.id(184973098417802486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P573_COD_SUC_ENTRADA IS NOT NULL THEN ',
'DECLARE',
'   VSUC VARCHAR2(200);',
'   VERROR EXCEPTION;',
'BEGIN',
'  SELECT COD_SUCURSAL',
'    INTO VSUC',
'  FROM ST_USUARIOS_SUCURSAL',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND COD_USUARIO=:APP_USER',
'  AND COD_SUCURSAL=:P573_COD_SUC_ENTRADA',
'  AND TIPO=''E'';',
'    IF VSUC<>:P573_COD_SUC_ENTRADA AND :P573_OPERACION=''CMB'' THEN',
'        RAISE_APPLICATION_ERROR(-20001,''El usuario ''|| :APP_USER ||'' solo puede enviar para la sucursal: ''||vsuc);',
'        :P573_COD_SUC_ENTRADA:=NULL;',
'        :P573_COD_SUC_SALIDA:=NULL;',
'       -- RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'  WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001,''El usuario ''|| :APP_USER ||'' no puede ENVIAR DE la sucursal: ''||:P573_COD_SUC_ENTRADA);',
'    :P573_COD_SUC_ENTRADA:=NULL;',
'    :P573_COD_SUC_SALIDA:=NULL;    ',
'    ',
'END; ',
'END IF;'))
,p_attribute_02=>'P573_COD_SUC_ENTRADA,P573_OPERACION'
,p_attribute_03=>'P573_COD_SUC_ENTRADA,P573_COD_SUC_SALIDA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184973998792802486)
,p_name=>'Cambiar_Cod_Suc_Salida'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_COD_SUC_SALIDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184974485885802486)
,p_event_id=>wwv_flow_imp.id(184973998792802486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P573_COD_SUC_SALIDA IS NOT NULL THEN',
'',
'  DECLARE',
'   VSUC VARCHAR2(200);',
'   VERROR EXCEPTION;',
'BEGIN',
'  SELECT COD_SUCURSAL',
'    INTO VSUC',
'  FROM ST_USUARIOS_SUCURSAL',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND COD_USUARIO=:APP_USER',
'  AND COD_SUCURSAL=:P573_COD_SUC_SALIDA',
'  AND TIPO=''E'';',
'  IF VSUC<>:P573_COD_SUC_SALIDA THEN',
'    --IF NVL(  :VARIABLES.RECEPCIONA_SUCURSAL,''N'')<>''S'' THEN',
'    RAISE_APPLICATION_ERROR(-20001,''EL Usuario ''|| :APP_USER ||'' solo puede enviar para la sucursal: ''||VSUC);',
'      :P573_COD_SUC_ENTRADA:=NULL;',
'    :P573_COD_SUC_SALIDA:=NULL; ',
'     --:B_CABECERA.REFERENCIA:=NULL;',
'--RAISE VERROR;',
'  END IF;',
'  --END IF;  ',
'    ',
'  ',
'  EXCEPTION',
'   /*   WHEN VERROR THEN ',
'        RAISE FORM_TRIGGER_FAILURE;*/',
'  WHEN OTHERS THEN ',
'  RAISE_APPLICATION_ERROR(-20001,''El Usuario ''|| :APP_USER ||'' no puede enviar de la sucursal: ''||:P573_COD_SUC_SALIDA);',
'    :P573_COD_SUC_ENTRADA:=NULL;',
'    :P573_COD_SUC_SALIDA:=NULL; ',
'    ',
'   ',
'END;',
'END IF;'))
,p_attribute_02=>'P573_COD_SUC_SALIDA'
,p_attribute_03=>'P573_COD_SUC_ENTRADA,P573_COD_SUC_SALIDA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184974895223802485)
,p_name=>'Cambiar_Nro_Comprobante_Ref'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184975329563802485)
,p_event_id=>wwv_flow_imp.id(184974895223802485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P573_NRO_COMPROBANTE_REF IS NOT NULL  AND :P573_ACCION = ''N'' THEN ',
'CANOCONF.PROCBD_CARGA_DETALLE(''N'',',
'                              :P_COD_EMPRESA,',
'                              :P573_NRO_COMPROBANTE_REF,',
'                              :P573_SER_COMPROBANTE_REF,',
'                              :P573_TIP_COMPROBANTE_REF,',
'                              :P573_TIPO_COMPROBANTE,',
'                              :P573_IND_DETALLE,',
'                              :P573_NRO_SOLICITUD,',
'                              :P573_TIPO_SOLICITUD,',
'                              :P573_SER_SOLICITUD,',
'                              ----------------------',
'                              -------SALIDA---------',
'                              :P573_COD_CLIENTE,',
'                              :P573_DESC_CLIENTE_CAB,',
'                              :P573_COD_PROVEEDOR,',
'                              :P573_PROVEEDOR_DESC_CAB,',
'                              :P573_COD_REPARTIDOR);',
'                            ',
'END IF;',
' -- raise_application_error(-20001,:P573_DESC_CLIENTE_CAB);'))
,p_attribute_02=>'P573_ACCION,P573_NRO_COMPROBANTE_REF,P573_SER_COMPROBANTE_REF,P573_TIP_COMPROBANTE_REF,P573_TIPO_COMPROBANTE,P573_IND_DETALLE,P573_TIPO_SOLICITUD,P573_SER_SOLICITUD,P573_NRO_SOLICITUD'
,p_attribute_03=>'P573_COD_CLIENTE,P573_COD_PROVEEDOR,P573_COD_REPARTIDOR,P573_DESC_CLIENTE_CAB,P573_PROVEEDOR_DESC_CAB'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184976242726802485)
,p_name=>'Cambiar_SEQ_ID_DET'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_SEQ_ID_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184976709678802484)
,p_event_id=>wwv_flow_imp.id(184976242726802485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor CUR_DET is ',
'SELECT A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013 COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART,',
'       A.C016 SER_COMPROBANTE_GEN,',
'       A.C017 TIP_COMPROBANTE_GEN,',
'       A.C018 NRO_COMPROBANTE_GEN,',
'       A.C019 SER_COMPROBANTE_SEG,',
'       A.C020 TIP_COMPROBANTE_SEG,',
'       A.C021 NRO_COMPROBANTE_SEG',
'  FROM APEX_COLLECTIONS A',
'  WHERE A.COLLECTION_NAME = ''CA_CONFORMIDAD_DET''',
'    AND A.SEQ_ID = :P573_SEQ_ID_DET;',
'begin',
'FOR D IN CUR_DET LOOP ',
':P573_NRO_COMPROBANTE_GEN := D.NRO_COMPROBANTE_GEN;',
':P573_TIP_COMPROBANTE_GEN := D.TIP_COMPROBANTE_GEN;',
':P573_NRO_COMPROBANTE_SEG := D.NRO_COMPROBANTE_SEG;',
':P573_TIP_COMPROBANTE_SEG := D.TIP_COMPROBANTE_SEG;',
':P573_SER_COMPROBANTE_SEG := D.SER_COMPROBANTE_SEG;',
'',
'',
'',
'--raise_application_error(-20001,:P573_NRO_COMPROBANTE_SEG);  ',
'--IF :SEQ_ID != NVL(:P573_LAST_ID_SEL,0) THEN ',
'CANOCONF.PROCBD_TRAE_DESCRIPCIONES( D.COD_EMPRESA,',
'                                    D.COD_ARTICULO,',
'                                    D.NRO_COMPROBANTE_GEN,',
'                                    D.TIP_COMPROBANTE_GEN,',
'                                    D.COD_PROVEEDOR,',
'                                   :P573_NRO_SOLICITUD,',
'                                   :P573_SER_SOLICITUD,',
'                                   :P573_TIPO_SOLICITUD,',
'                                    D.NRO_GARANTIA_ANT,',
'                                    D.NRO_COMPROBANTE_SEG,',
'                                    D.TIP_COMPROBANTE_SEG,',
'                                    D.SER_COMPROBANTE_SEG,',
'                                   ',
'                                   ---------------------------------',
'                                   -------------------salidas--------',
'                                   :P573_DESC_ART,',
'                                   :P573_TEXTO,',
'                                   :P573_PROVEEDOR_DET,',
'                                   :P573_SEGUIMIENTO,',
'                                   :P573_PUEDE_FINALIZAR_SNC);',
'',
'                                  :P573_COSTO_REV_DET := TO_CHAR(D.COSTO_REV,''999G999G999G999G999G999G990'');',
'                                  :P573_PRECIO_ARTICULO := TO_CHAR(D.COSTO_ART,''999G999G999G999G999G999G990'');',
'--  :P573_LAST_ID_SEL := :SEQ_ID;',
'END LOOP;',
'END;',
''))
,p_attribute_02=>'P573_NRO_SOLICITUD,P573_SER_SOLICITUD,P573_TIPO_SOLICITUD,P573_SEQ_ID_DET'
,p_attribute_03=>'P573_DESC_ART,P573_TEXTO,P573_PROVEEDOR_DET,P573_PUEDE_FINALIZAR_SNC,P573_COSTO_REV_DET,P573_PRECIO_ARTICULO,P573_NRO_COMPROBANTE_GEN,P573_TIP_COMPROBANTE_GEN,P573_NRO_COMPROBANTE_SEG,P573_TIP_COMPROBANTE_SEG,P573_SER_COMPROBANTE_SEG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184977235087802484)
,p_event_id=>wwv_flow_imp.id(184976242726802485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'		V_OT VARCHAR2(30);',
'BEGIN',
':p573_texto := '''';',
':P573_SEGUIMIENTO := '''';',
'',
'					select ''    OT: ''||O.SER_COMPROBANTE|| ''-''||O.NRO_COMPROBANTE',
'					INTO V_OT',
'					from vt_ordenes_trabajo o',
'					where  COD_EMPRESA= :P_COD_EMPRESA',
'					AND    nro_comprobante_ref =:p573_NRO_SOLICITUD',
'					AND    ser_comprobante_ref =:p573_SER_SOLICITUD',
'					AND    tip_comprobante = :p573_TIPO_SOLICITUD',
'					AND    GARANTIA_OT=:NRO_GARANTIA_ANT',
'					AND    COD_ARTICULO=	:COD_ARTICULO',
'					;',
'					',
'					:p573_texto:=:p573_texto||''  ''|| V_OT;',
'					',
'EXCEPTION',
'	WHEN OTHERS THEN',
'		NULL;',
'END;',
'',
'',
'DECLARE',
'		V_ncr VARCHAR2(30);',
'begin',
'					SELECT ''NCR:''  ||/*c.ser_comprobante ||''-''  ||*/ max(c.nro_comprobante)',
'					INTO V_ncr',
'					FROM VT_COMPROBANTES_CABECERA C',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.TIP_COMPROBANTE= ''NCR''',
'					AND   C.ESTADO<>''A''',
'					AND   C.TIP_OT=''SNC''  ',
'					AND   C.SER_OT=:P573_SER_SOLICITUD ',
'					AND   C.NRO_OT=:P573_NRO_SOLICITUD',
'					---and rownum=1',
'			;',
'					:P573_texto:=V_ncr||''     ''|| :P573_texto ;					',
'exception',
'		when others then',
'				null;',
'end;',
'',
'if :P573_NRO_COMPROBANTE_SEG is not null then ',
'',
'begin ',
'	 select decode(c.estado , ''P'', ''Pedido Pendiente'' , ''F'', ''Pedido Facturado'', '''')',
'	 into 	:P573_SEGUIMIENTO ',
'	 from vt_pedidos_cabecera c',
'	 	WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'		AND   C.ESTADO<>''A''',
'		AND   C.TIP_COMPROBANTE_REF= :P573_TIP_COMPROBANTE_SEG',
'		AND   C.SER_COMPROBANTE_REF= :P573_SER_COMPROBANTE_SEG ',
'		AND   C.NRO_COMPROBANTE_REF= :P573_NRO_COMPROBANTE_SEG; ',
'exception ',
'	when others then ',
'	  null; ',
'end; ',
'',
'  ',
'end if; ',
'',
'',
'',
'DECLARE',
'		V_PED VARCHAR2(30);',
'begin',
'					SELECT c.tip_comprobante||'' ''||c.ser_comprobante ||''-''||c.nro_comprobante',
'					INTO V_PED',
'					FROM VT_COMPROBANTES_CABECERA C',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.ESTADO<>''A''',
'					AND   C.TIP_COMPROBANTE_REF= :P573_TIP_COMPROBANTE_SEG ',
'					AND   C.SER_COMPROBANTE_REF= :P573_SER_COMPROBANTE_SEG ',
'					AND   C.NRO_COMPROBANTE_REF= :P573_NRO_COMPROBANTE_SEG ',
'					and rownum = 1;',
'				:P573_SEGUIMIENTO:=V_PED||'' ''|| inv.f_situacion_pedido_periferico (:P573_TIP_COMPROBANTE_SEG ,:P573_NRO_COMPROBANTE_SEG );					',
'exception',
'		when others then',
'			:P573_PUEDE_FINALIZAR_SNC := ''N'';',
'end;',
'		'))
,p_attribute_02=>'P_COD_EMPRESA,P573_NRO_SOLICITUD,P573_SER_SOLICITUD,P573_TIPO_SOLICITUD,P573_TIP_COMPROBANTE_SEG,P573_SER_COMPROBANTE_SEG,P573_NRO_COMPROBANTE_SEG'
,p_attribute_03=>'P573_TEXTO,P573_SEGUIMIENTO,P573_PUEDE_FINALIZAR_SNC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184983619188802482)
,p_name=>'Cambiar_Cod_Cliente'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184984138615802482)
,p_event_id=>wwv_flow_imp.id(184983619188802482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P573_COD_CLIENTE IS NOT NULL THEN',
'		BEGIN',
'		select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'		INTO :P573_vendedor',
'		  from fv_vendedores c, personas p, vt_comprobantes_cabecera cc',
'		 where cc.cod_empresa = :P_cod_empresa',
'		   AND c.cod_vendedor = cc.cod_vendedor',
'		   and c.cod_persona = p.cod_persona',
'		   and c.cod_empresa=c.cod_empresa',
'		   and cc.tip_comprobante = :P573_tip_comprobante_ref',
'		   and cc.ser_comprobante = :P573_ser_comprobante_ref',
'		   and cc.nro_comprobante = :P573_nro_comprobante_ref',
'		 ;',
'		EXCEPTION	',
'			WHEN OTHERS THEN',
'					BEGIN',
'		select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'		INTO :P573_vendedor',
'		  from cc_clientes c, personas p, fv_vendedores fv',
'		 where c.cod_empresa = :P_cod_empresa',
'		   AND c.cod_cliente = :P573_COD_CLIENTE',
'		   and fv.cod_persona = p.cod_persona',
'		   and c.cod_empresa=fv.cod_empresa',
'		   and c.cod_vendedor=fv.cod_vendedor',
'		 ;',
'		EXCEPTION	',
'			WHEN OTHERS THEN',
'				:P573_vendedor:=	NULL;',
'		END;',
'		END;',
'END IF;'))
,p_attribute_02=>'P573_COD_CLIENTE,P573_TIP_COMPROBANTE_REF,P573_SER_COMPROBANTE_REF,P573_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P573_VENDEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184984582865802481)
,p_name=>'CARGAR_PAGINA'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184985564802802481)
,p_event_id=>wwv_flow_imp.id(184984582865802481)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204069485147035028)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184985992871802481)
,p_name=>'CARGAR_PAGINA_U'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
' FROM DUAL WHERE :P573_ACCION = ''U''',
' AND :P573_ESTADO NOT IN (''CREADO'')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184986479162802481)
,p_event_id=>wwv_flow_imp.id(184985992871802481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P573_OPERACION_AUX := :P573_OPERACION;',
':P573_COD_MOTIVO_AUX := :P573_COD_MOTIVO;',
':P573_COD_SUCURSAL_AUX := :P573_COD_SUCURSAL;',
':P573_DEPARTAMENTO_AUX := :P573_DEPARTAMENTO;',
':P573_COD_SUC_SALIDA_AUX := :P573_COD_SUC_SALIDA;',
':P573_COD_SUC_ENTRADA_AUX := :P573_COD_SUC_ENTRADA;',
':P573_TIPO_COMPROBANTE_AUX := :P573_TIPO_COMPROBANTE;',
'',
'',
''))
,p_attribute_03=>'P573_OPERACION_AUX ,P573_COD_MOTIVO_AUX,P573_COD_SUCURSAL_AUX,P573_DEPARTAMENTO_AUX,P573_COD_SUC_SALIDA_AUX,P573_COD_SUC_ENTRADA_AUX,P573_TIPO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184986992002802480)
,p_event_id=>wwv_flow_imp.id(184985992871802481)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#P573_TIPO_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P573_NRO_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P573_SER_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P573_TIP_COMPROBANTE_REF'').attr(''readonly'',true);',
'//$(''#P573_SER_COMPROBANTE_REF'').attr(''readonly'',true);',
'//$(''#P573_NRO_COMPROBANTE_REF'').attr(''readonly'',true);',
'//$(''#P573_FECHA_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P573_COD_SUCURSAL'').attr(''disabled'',true);',
'//$(''#P573_COD_SUC_ENTRADA'').attr(''disabled'',true);',
'//$(''#P573_OPERACION'').attr(''disabled'',true);',
'//$(''#P573_COD_MOTIVO'').attr(''disabled'',true);',
'//$(''#P573_DEPARTAMENTO'').attr(''disabled'',true);',
'//$(''#P573_COD_REPARTIDOR'').attr(''disabled'',true);',
'//$(''#P573_TIPO_COMPROBANTE'').attr(''disabled'',true);',
'//$(''#P573_IND_DETALLE'').attr(''disabled'',true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184987329113802480)
,p_name=>'obtener_url'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P573_URL'
,p_condition_element=>'P573_URL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184987841054802480)
,p_event_id=>wwv_flow_imp.id(184987329113802480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = apex.item(''P573_URL'').getValue();',
'apex.navigation.redirect (vURL);',
'',
'//window.open(vURL) ;',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184958948848802495)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Iniciar Pagina'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:CA_CONFORMIDAD.SEGUIMIENTO:= NULL;',
':P573_COD_USUARIO:= :APP_USER ;',
':P573_FECHA_HORA := TO_CHAR(SYSDATE,''DD/MM/YYYY HH24:MI'') ;',
':P573_COD_EMPRESA := :P_COD_EMPRESA;',
'  --:P573_TIPO_SOLICITUD_B:=''SNC'';',
'  --:P573_SER_SOLICITUD_B:=''A'';',
'BEGIN',
'  SELECT E.DESC_AREA INTO :P573_DEPARTAMENTO_CREACION',
'  FROM V_EMPLEADOS E, USUARIOS U WHERE E.COD_PERSONA=U.COD_PERSONA',
'  AND COD_EMPRESA=:P_COD_EMPRESA',
'  AND COD_USUARIO=:APP_USER;',
'EXCEPTION ',
'  WHEN OTHERS THEN',
'  :P573_DEPARTAMENTO_CREACION:=''N/A'';',
'  ',
'END;',
' Begin',
'    APEX_COLLECTION.DELETE_ALL_COLLECTIONS_SESSION;',
'End;',
':VAR_AUTORIZA := 	busca_permiso ( :P_cod_empresa,',
'                                                      ''CANOCONF'', ',
'                                                      :P_cod_usuario,',
'                                                      ''AUTORIZA'' ) ;        '))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P573_ACCION'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184961780179802493)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carga_collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CA_CONFORMIDAD_DET'');',
'if :P573_NRO_SOLICITUD is not null then ',
'',
'CANOCONF.PROCBD_TRAE_SEG(:P_COD_EMPRESA,',
'                         :P573_NRO_SOLICITUD);',
'',
'               ',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184962536716802493)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.TIPO_SOLICITUD,',
'       C.SER_SOLICITUD,',
'       C.NRO_SOLICITUD,',
'       C.COD_SUCURSAL,',
'       C.COD_SUC_ENT,',
'       C.COD_SUC_SAL,',
'       C.TIPO_SEGUIMIENTO,',
'       C.FEC_SOLICITUD,',
'       C.ESTADO,',
'       C.ESTADO,',
'       C.OPERACION,',
'       C.TIP_COMPROBANTE_REF,',
'       C.SER_COMPROBANTE_REF,',
'       C.NRO_COMPROBANTE_REF,',
'       C.COD_CLIENTE,',
'       C.TIPO_COMPROBANTE,',
'       C.COD_MOTIVO,',
'       C.COD_PROVEEDOR,',
'       C.DEPARTAMENTO,',
'       C.COD_REPARTIDOR,',
'       C.DEPARTAMENTO_CREACION,',
'       C.AUTORIZA_USER,',
'       C.FECHA_AUTORIZA,',
'       C.CREA_USER,',
'       C.FECHA_CREACION,',
'       C.RECHAZA_USER,',
'       C.FECHA_RECHAZO,',
'       C.FINALIZA_USER,',
'       C.FECHA_FINALIZA',
'  INTO :P573_TIPO_SOLICITUD,',
'       :P573_SER_SOLICITUD,',
'       :P573_NRO_SOLICITUD,',
'       :P573_COD_SUCURSAL,',
'       :P573_COD_SUC_ENTRADA ,',
'       :P573_COD_SUC_SALIDA ,',
'       :P573_TIPO_SEGUIMIENTO,',
'       :P573_FECHA_SOLICITUD,',
'       :P573_ESTADO,',
'       :P573_ESTADO_BD,',
'       :P573_OPERACION,',
'       :P573_TIP_COMPROBANTE_REF,',
'       :P573_SER_COMPROBANTE_REF,',
'       :P573_NRO_COMPROBANTE_REF,',
'       :P573_COD_CLIENTE,',
'       :P573_TIPO_COMPROBANTE,',
'       :P573_COD_MOTIVO,',
'       :P573_COD_PROVEEDOR,',
'       :P573_DEPARTAMENTO,',
'       :P573_COD_REPARTIDOR,',
'       :P573_DEPARTAMENTO_CREACION,',
'       :P573_AUTORIZA_USER,',
'       :P573_FECHA_AUTORIZA,',
'       :P573_CREA_USER,',
'       :P573_FECHA_CREACION,',
'       :P573_RECHAZA_USER,',
'       :P573_FEC_RECHAZO,',
'       :P573_FINALIZA_USER,',
'       :P573_FECHA_FINALIZA',
'  FROM CA_CONFORMIDAD C',
' WHERE C.rowid = :P573_ROWID_B;',
' IF :P573_COD_PROVEEDOR IS NOT NULL THEN ',
' select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) ',
'            into :P573_PROVEEDOR_DESC_CAB',
'            from cm_proveedores c, personas p',
'           where c.cod_empresa = :P_cod_empresa',
'             and c.cod_persona = p.cod_persona',
'             and c.cod_proveedor= :P573_COD_PROVEEDOR;',
' END IF;',
'',
' IF :P573_COD_CLIENTE IS NOT NULL THEN',
' SELECT ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'          INTO :P573_DESC_CLIENTE_CAB',
'          FROM CC_CLIENTES C,',
'               PERSONAS P',
'         WHERE C.COD_PERSONA = P.COD_PERSONA',
'           AND C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P573_COD_CLIENTE;',
'',
'     ',
' END IF;',
'',
'CANOCONF.PROCBD_TRAE_SEG(:P_COD_EMPLEADO,',
'                         :P573_NRO_SOLICITUD);',
'',
' :P573_ACCION := ''U'';',
' ',
'CANOCONF.PROCBD_CARGA_DETALLE(:P573_ACCION,',
'                              :P_COD_EMPRESA,',
'                              :P573_NRO_COMPROBANTE_REF,',
'                              :P573_SER_COMPROBANTE_REF,',
'                              :P573_TIP_COMPROBANTE_REF,',
'                              :P573_TIPO_COMPROBANTE,',
'                              :P573_IND_DETALLE,',
'                              :P573_NRO_SOLICITUD,',
'                              :P573_TIPO_SOLICITUD,',
'                              :P573_SER_SOLICITUD,',
'                              ----------------------',
'                              -------SALIDA---------',
'                              :P573_COD_CLIENTE,',
'                              :P573_DESC_CLIENTE_CAB,',
'                              :P573_COD_PROVEEDOR,',
'                              :P573_PROVEEDOR_DESC_CAB,',
'                              :P573_COD_REPARTIDOR);'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P573_ACCION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'BSMENSAJ'
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
 p_id=>wwv_flow_imp.id(184958522422802496)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CANCELAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CANCELAR,CANCELAR_1'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184962924449802492)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDACIONES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ESTADO VARCHAR2(50);',
'BEGIN',
':VAR_AUTORIZA := 	busca_permiso ( :P_COD_EMPRESA,',
'                                                      ''CANOCONF'', ',
'                                                      :P_cod_usuario,',
'                                                      ''AUTORIZA'' ) ;',
'    select DISTINCT ESTADO',
'		INTO V_ESTADO',
'		from CA_CONFORMIDAD',
'		WHERE COD_EMPRESA= :P_COD_EMPRESA',
'		AND   TIPO_SOLICITUD=''SNC''',
'		AND   SER_SOLICITUD=:P573_SER_SOLICITUD',
'		AND   NRO_SOLICITUD=:P573_NRO_SOLICITUD',
'	 ;',
'			',
'			IF V_ESTADO in (''ANULADO'' )  THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No puede modificar. La Solicitud se encuentra ANULADA '');',
'			    --RETURN FALSE;',
'			END IF;',
'				IF V_ESTADO in ( ''RECHAZADO'') and (nvl( :VAR_AUTORIZA ,''N'')<>''S'' AND',
'					:P573_CREA_USER<>:APP_USER ) THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No puede modificar. La Solicitud se encuentra RECHAZADO '');',
'			   -- RETURN FALSE;',
'			END IF;',
'			',
'			IF V_ESTADO =''FINALIZADO'' THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No puede modificar. La Solicitud se encuentra FINALIZADA'');',
'			    --RETURN FALSE;',
'			END IF;',
'			',
'			IF V_ESTADO<>''AUTORIZADO'' AND :P573_ESTADO=''AUTORIZADO'' and NVL(:VAR_AUTORIZA,''N'')=''N'' THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No cuenta con permiso para Autorizar.'');',
'			   -- RETURN FALSE;',
'			END IF;			',
'			',
'			',
'			',
'			IF :P573_COD_SUC_ENTRADA IS NULL THEN ',
'			    RAISE_APPLICATION_ERROR(-20001,''Debe cargar la Sucursal de entrada.'');',
'			   -- RETURN FALSE;',
'			END IF;',
'			',
'		 /*IF NVL(:P573_ESTADO,''CREADO'')<>''CREADO'' AND (',
'		  	 NVL(:P573_OPERACION, '' '') !=  NVL(GET_ITEM_PROPERTY(''P573_OPERACION'', DATABASE_VALUE), '' '')or',
'		  	 NVL(:CA_CONFORMIDAD.TIPO_COMPROBANTE, '' '') !=  NVL(GET_ITEM_PROPERTY(''CA_CONFORMIDAD.TIPO_COMPROBANTE'', DATABASE_VALUE), '' '')or',
'		  	 NVL(:CA_CONFORMIDAD.NRO_COMPROBANTE_REF, '' '') !=  NVL(GET_ITEM_PROPERTY(''CA_CONFORMIDAD.NRO_COMPROBANTE_REF'', DATABASE_VALUE), '' '') ',
'		  	 ) THEN',
'			    mensaje(''No se puede modificar la Solicitud.'');',
'			    RETURN FALSE;',
'       END IF;*/',
'					',
'			IF V_ESTADO not in (''RECHAZADO'',''ANULADO'') AND :P573_ESTADO IN(''RECHAZADO'',''ANULADO'') and NVL(:VAR_AUTORIZA,''N'')=''N'' THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No cuenta con permiso para Anular/Rechazar.'');',
'			   -- RETURN FALSE;',
'			END IF;			',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184960965637802493)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Seleccionar_Registro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.TIPO_SOLICITUD,',
'       C.SER_SOLICITUD,',
'       C.NRO_SOLICITUD,',
'       C.COD_SUCURSAL,',
'       C.COD_SUC_ENT,',
'       C.COD_SUC_SAL,',
'       C.TIPO_SEGUIMIENTO,',
'       C.FEC_SOLICITUD,',
'       C.ESTADO,',
'       C.ESTADO,',
'       C.OPERACION,',
'       C.TIP_COMPROBANTE_REF,',
'       C.SER_COMPROBANTE_REF,',
'       C.NRO_COMPROBANTE_REF,',
'       C.COD_CLIENTE,',
'       C.TIPO_COMPROBANTE,',
'       C.COD_MOTIVO,',
'       C.COD_PROVEEDOR,',
'       C.DEPARTAMENTO,',
'       C.COD_REPARTIDOR,',
'       C.DEPARTAMENTO_CREACION',
'       ',
'       ',
'  INTO :P573_TIPO_SOLICITUD,',
'       :P573_SER_SOLICITUD,',
'       :P573_NRO_SOLICITUD,',
'       :P573_COD_SUCURSAL,',
'       :P573_COD_SUC_ENTRADA ,',
'       :P573_COD_SUC_SALIDA ,',
'       :P573_TIPO_SEGUIMIENTO,',
'       :P573_FECHA_SOLICITUD,',
'       :P573_ESTADO,',
'       :P573_ESTADO_BD,',
'       :P573_OPERACION,',
'       :P573_TIP_COMPROBANTE_REF,',
'       :P573_SER_COMPROBANTE_REF,',
'       :P573_NRO_COMPROBANTE_REF,',
'       :P573_COD_CLIENTE,',
'       :P573_TIPO_COMPROBANTE,',
'       :P573_COD_MOTIVO,',
'       :P573_COD_PROVEEDOR,',
'       :P573_DEPARTAMENTO,',
'       :P573_COD_REPARTIDOR,',
'       :P573_DEPARTAMENTO_CREACION',
'  FROM CA_CONFORMIDAD C',
' WHERE C.rowid = :P573_ROWID_B;',
' IF :P573_COD_PROVEEDOR IS NOT NULL THEN ',
' select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) ',
'            into :P573_PROVEEDOR_DESC_CAB',
'            from cm_proveedores c, personas p',
'           where c.cod_empresa = :P_cod_empresa',
'             and c.cod_persona = p.cod_persona',
'             and c.cod_proveedor= :P573_COD_PROVEEDOR;',
' END IF;',
'',
' IF :P573_COD_CLIENTE IS NOT NULL THEN',
' SELECT ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'          INTO :P573_DESC_CLIENTE_CAB',
'          FROM CC_CLIENTES C,',
'               PERSONAS P',
'         WHERE C.COD_PERSONA = P.COD_PERSONA',
'           AND C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P573_COD_CLIENTE;',
' END IF;',
'',
'CANOCONF.PROCBD_TRAE_SEG(:P_COD_EMPLEADO,',
'                         :P573_NRO_SOLICITUD);',
'',
' :P573_ACCION := ''U'';',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184959717924802495)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERTA_SOLICITUD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'---------------------------------------------------------------------------------',
'---------------------------INSERTA CABECERA DE CONFORMIDAD-----------------------',
'IF :P573_IND_DETALLE =''N'' and :P573_ESTADO not in (''RECHAZADO'')THEN  	',
'  				RAISE_APPLICATION_ERROR(-20001,''Solicitud sin detalle'');',
'  				--MESSAGE(''Solicitud sin detalle'');',
'  				--RAISE FORM_TRIGGER_FAILURE; ',
'  END IF;',
'',
'IF :P573_COD_MOTIVO IS NULL THEN ',
'  RAISE_APPLICATION_ERROR(-20001,''Debe especificar motivo'');',
'END IF;',
'	IF :P573_COD_SUC_ENTRADA IS NULL THEN ',
'			    RAISE_APPLICATION_ERROR(-20001,''Debe cargar la Sucursal de entrada.'');',
'			   -- RETURN FALSE;',
'			END IF;',
'CANOCONF.PROCBD_VALIDA_NRO(:P_COD_EMPRESA,',
'                           :P573_NRO_SOLICITUD,',
'                           :P573_TIPO_SOLICITUD,',
'                           :P573_SER_SOLICITUD);',
'IF :P573_ACCION = ''N'' THEN ',
'CANOCONF.PROCBD_INSERT_SOLICITUD(:P_COD_EMPRESA               ,',
'                                 :P573_NRO_SOLICITUD          ,',
'                                 :P573_FECHA_SOLICITUD        ,',
'                                 :P573_COD_CLIENTE            ,',
'                                 :P573_COD_PROVEEDOR          ,',
'                                 :P573_ESTADO                 ,',
'                                 :P573_FECHA_CREACION         ,',
'                                 :APP_USER                    ,',
'                                 :P573_TIPO_SOLICITUD         ,',
'                                 :P573_SER_SOLICITUD          ,',
'                                 :P573_OPERACION              ,',
'                                 :P573_COD_SUC_ENTRADA        ,',
'                                 :P573_COD_SUC_SALIDA         ,',
'                                 :P573_TIPO_COMPROBANTE       ,',
'                                 :P573_TIP_COMPROBANTE_REF    ,',
'                                 :P573_SER_COMPROBANTE_REF    ,',
'                                 :P573_NRO_COMPROBANTE_REF    ,',
'                                 :P573_COD_SUCURSAL           ,',
'                                 :P573_COD_MOTIVO             ,',
'                                 :P573_DEPARTAMENTO           ,',
'                                 :P573_COD_REPARTIDOR         ,',
'                                 :P573_DEPARTAMENTO_CREACION ,',
'                                 :P573_ROWID_B);',
'',
'',
'',
'END IF;',
'',
'---------------------------------------------------------------------------------',
'---------------------------INSERTA DETALLE DE CONFORMIDAD------------------------',
'DECLARE ',
'V_CONT NUMBER:= 0;',
'CURSOR CUR_DET IS ',
'SELECT A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013/*||''-''||( SELECT LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) ',
'                        FROM CM_PROVEEDORES C, PERSONAS P',
'                       WHERE C.COD_EMPRESA = A.C001',
'                         AND C.COD_PERSONA = P.COD_PERSONA',
'                         AND C.COD_PROVEEDOR= A.C013)*/ COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART',
' FROM APEX_COLLECTIONS A ',
' WHERE COLLECTION_NAME = ''CA_CONFORMIDAD_DET'';',
'',
'BEGIN',
'FOR D IN CUR_DET loop',
'IF D.COD_ARTICULO is null THEN',
unistr('  RAISE_APPLICATION_ERROR(-20001,''Debe cargar el Art\00EDculo'');'),
' ',
'END IF;',
'IF D.COD_PROBLEMA is null THEN',
unistr('  RAISE_APPLICATION_ERROR(-20001, ''Debe detallar el problema para el Art\00EDculo'');'),
' ',
'END IF;',
'------------------------------------------------------------------------------------------------------',
'------------------------------------------------------------------------------------------------------',
'IF D.NRO_GARANTIA_ANT IS NOT NULL THEN',
'				DECLARE',
'						DUMMY VARCHAR2(20);	',
'				BEGIN ',
'					SELECT DISTINCT C.NRO_SOLICITUD',
'					INTO DUMMY',
'					FROM CA_CONFORMIDAD C,',
'							 CA_CONFORMIDAD_DET D',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.NRO_SOLICITUD=D.NRO_SOLICITUD',
'					AND   C.SER_SOLICITUD=D.SER_SOLICITUD',
'					AND   C.TIPO_SOLICITUD=D.TIPO_SOLICITUD',
'					AND   C.COD_EMPRESA=D.COD_EMPRESA',
'					AND 	C.NRO_SOLICITUD <> :P162_NRO_SOLICITUD',
'					',
'							',
'					and c.tip_comprobante_ref=:P162_TIP_COMPROBANTE_REF',
'					and c.ser_comprobante_ref=:P162_SER_COMPROBANTE_REF',
'					and c.nro_comprobante_ref=:P162_NRO_COMPROBANTE_REF',
'					',
'					AND   C.ESTADO IN (''PROCESADO'',''CREADO'',''AUTORIZADO'')',
'					AND 	D.NRO_GARANTIA_ANT=D.NRO_GARANTIA_ANT;	',
'					',
'			    RAISE_APPLICATION_ERROR(-20001,''No se puede cargar el ArticuloD.''||D.COD_ARTICULO',
'			    ||'' con Garantia NroD.''||D.NRO_GARANTIA_ANT',
unistr('			    ||chr(10)||'' Ya existe la Solicitud N\00BA ''||DUMMY);	'),
'		',
'			    ',
'		    ',
'				EXCEPTION',
'					WHEN TOO_MANY_ROWS THEN',
'						 RAISE_APPLICATION_ERROR(-20001,''No se puede cargar el ArticuloD.''||D.COD_ARTICULO',
'			    					  ||'' con Garantia NroD.''||D.NRO_GARANTIA_ANT',
'			    	 ||chr(10)||'' Ya existe la Solicitud relacionada a la Garantia'');',
'			  ',
'		    		',
'					WHEN OTHERS THEN',
'						NULL;',
'				END;',
'END IF;',
'',
'CANOCONF.PROCBD_INSERT_SOL_DET(:P_COD_EMPRESA,',
'                               :P573_NRO_SOLICITUD,',
'                               :P573_TIPO_SOLICITUD,',
'                               :P573_SER_SOLICITUD,',
'                               D.NRO_GARANTIA,',
'                               D.COD_ARTICULO,',
'                               D.COD_PROVEEDOR,',
'                               to_number(D.COSTO_ART),',
'                               to_number(D.COSTO_REV),',
'                               null,',
'                               D.OBSERVACION,',
'                               D.COD_PROBLEMA,',
'                               D.NRO_GARANTIA_ANT,',
'                               NULL,',
'                               D.RESPONSABLE_DETALLE);',
'    V_CONT := V_CONT + 1;',
'END LOOP;',
'',
'IF V_CONT = 0 THEN',
unistr('RAISE_APPLICATION_ERROR(-20001,''Debe a\00F1adir un detalle'');'),
'END IF;',
'EXCEPTION ',
'WHEN NO_DATA_FOUND THEN ',
unistr('RAISE_APPLICATION_ERROR(-20001,''Debe a\00F1adir un detalle'');'),
'end;',
'--:P573_ACCION := ''U'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>unistr('Solicitud N\00B0 &P573_NRO_SOLICITUD. registrada!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184960140921802494)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERTA_CONFORMIDAD_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'CURSOR CUR_DET IS ',
'SELECT A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013/*||''-''||( SELECT LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) ',
'                        FROM CM_PROVEEDORES C, PERSONAS P',
'                       WHERE C.COD_EMPRESA = A.C001',
'                         AND C.COD_PERSONA = P.COD_PERSONA',
'                         AND C.COD_PROVEEDOR= A.C013)*/ COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART',
' FROM APEX_COLLECTIONS A ',
' WHERE COLLECTION_NAME = ''CA_CONFORMIDAD_DET'';',
'',
'BEGIN',
'FOR D IN CUR_DET loop',
'IF D.COD_ARTICULO is null THEN',
unistr('  RAISE_APPLICATION_ERROR(-20001,''Debe cargar el Art\00EDculo'');'),
' ',
'END IF;',
'IF D.COD_PROBLEMA is null THEN',
unistr('  RAISE_APPLICATION_ERROR(-20001, ''Debe detallar el problema para el Art\00EDculo'');'),
' ',
'END IF;',
'------------------------------------------------------------------------------------------------------',
'------------------------------------------------------------------------------------------------------',
'IF D.NRO_GARANTIA_ANT IS NOT NULL THEN',
'				DECLARE',
'						DUMMY VARCHAR2(20);	',
'				BEGIN ',
'					SELECT DISTINCT C.NRO_SOLICITUD',
'					INTO DUMMY',
'					FROM CA_CONFORMIDAD C,',
'							 CA_CONFORMIDAD_DET D',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.NRO_SOLICITUD=D.NRO_SOLICITUD',
'					AND   C.SER_SOLICITUD=D.SER_SOLICITUD',
'					AND   C.TIPO_SOLICITUD=D.TIPO_SOLICITUD',
'					AND   C.COD_EMPRESA=D.COD_EMPRESA',
'					AND 	C.NRO_SOLICITUD <> :P162_NRO_SOLICITUD',
'					',
'							',
'					and c.tip_comprobante_ref=:P162_TIP_COMPROBANTE_REF',
'					and c.ser_comprobante_ref=:P162_SER_COMPROBANTE_REF',
'					and c.nro_comprobante_ref=:P162_NRO_COMPROBANTE_REF',
'					',
'					AND   C.ESTADO IN (''PROCESADO'',''CREADO'',''AUTORIZADO'')',
'					AND 	D.NRO_GARANTIA_ANT=D.NRO_GARANTIA_ANT;	',
'					',
'			    RAISE_APPLICATION_ERROR(-20001,''No se puede cargar el ArticuloD.''||D.COD_ARTICULO',
'			    ||'' con Garantia NroD.''||D.NRO_GARANTIA_ANT',
unistr('			    ||chr(10)||'' Ya existe la Solicitud N\00BA ''||DUMMY);	'),
'		',
'			    ',
'		    ',
'				EXCEPTION',
'					WHEN TOO_MANY_ROWS THEN',
'						 RAISE_APPLICATION_ERROR(-20001,''No se puede cargar el ArticuloD.''||D.COD_ARTICULO',
'			    					  ||'' con Garantia NroD.''||D.NRO_GARANTIA_ANT',
'			    	 ||chr(10)||'' Ya existe la Solicitud relacionada a la Garantia'');',
'			  ',
'		    		',
'					WHEN OTHERS THEN',
'						NULL;',
'				END;',
'END IF;',
'',
'CANOCONF.PROCBD_INSERT_SOL_DET(:P_COD_EMPRESA,',
'                               :P573_NRO_SOLICITUD,',
'                               :P573_TIPO_SOLICITUD,',
'                               :P573_SER_SOLICITUD,',
'                               D.NRO_GARANTIA,',
'                               D.COD_ARTICULO,',
'                               D.COD_PROVEEDOR,',
'                               D.COSTO_ART,',
'                               D.COSTO_REV,',
'                               null,',
'                               D.OBSERVACION,',
'                               D.COD_PROBLEMA,',
'                               D.NRO_GARANTIA_ANT,',
'                               NULL,',
'                               D.RESPONSABLE_DETALLE);',
'END LOOP;',
'EXCEPTION ',
'WHEN NO_DATA_FOUND THEN ',
unistr('RAISE_APPLICATION_ERROR(-20001,''Debe a\00F1adir un detalle'');'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184960550000802493)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_Solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P573_ESTADO = ''PROCESADO'' AND :P573_AUTORIZA_USER IS NULL THEN ',
'',
'		RAISE_APPLICATION_ERROR(-20001,''EL COMPROBANTE NO SE PUEDE PROCESAR; ESTA PENDIENTE DE AUTORIZACION'');',
'END IF;',
'',
'CANOCONF.PROCBD_CONTROL_AUTORIZACION(:P573_COD_EMPRESA,',
'                              :APP_USER,',
'                              :P573_COD_MOTIVO,',
'                              :P573_DEPARTAMENTO,',
'                             ',
'                              :P573_ESTADO);',
'',
'update CA_CONFORMIDAD C',
'  set  C.TIPO_SOLICITUD        = :P573_TIPO_SOLICITUD,',
'       C.SER_SOLICITUD         = :P573_SER_SOLICITUD,',
'       C.NRO_SOLICITUD         = :P573_NRO_SOLICITUD,',
'       C.COD_SUCURSAL          = nvl(:P573_COD_SUCURSAL,:P573_COD_SUCURSAL_AUX),',
'       C.COD_SUC_ENT           = nvl(:P573_COD_SUC_ENTRADA,:P573_COD_SUC_ENTRADA_AUX),',
'       C.COD_SUC_SAL           = nvl(:P573_COD_SUC_SALIDA,:P573_COD_SUC_SALIDA_AUX),',
'       C.TIPO_SEGUIMIENTO      = :P573_TIPO_SEGUIMIENTO,',
'       C.FEC_SOLICITUD         = :P573_FECHA_SOLICITUD,',
'       C.ESTADO                = :P573_ESTADO,',
'       C.OPERACION             = nvl(:P573_OPERACION,:P573_OPERACION_AUX),',
'       C.TIP_COMPROBANTE_REF   = :P573_TIP_COMPROBANTE_REF,',
'       C.SER_COMPROBANTE_REF   = :P573_SER_COMPROBANTE_REF,',
'       C.NRO_COMPROBANTE_REF   = :P573_NRO_COMPROBANTE_REF,',
'       C.COD_CLIENTE           = :P573_COD_CLIENTE,',
'       C.TIPO_COMPROBANTE      = NVL(:P573_TIPO_COMPROBANTE,:P573_TIPO_COMPROBANTE_AUX),',
'       C.COD_MOTIVO            = NVL(:P573_COD_MOTIVO,:P573_COD_MOTIVO_AUX),',
'       C.COD_PROVEEDOR         = :P573_COD_PROVEEDOR,',
'       C.DEPARTAMENTO          = NVL(:P573_DEPARTAMENTO,:P573_DEPARTAMENTO_AUX),',
'       C.COD_REPARTIDOR        = :P573_COD_REPARTIDOR,',
'       C.DEPARTAMENTO_CREACION = :P573_DEPARTAMENTO_CREACION',
' where c.rowid = :P573_ROWID_B;',
'       ',
'       ',
':P573_ESTADO_BD := :P573_ESTADO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184961365082802493)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inserta Seguimiento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_INSERT_SEGUIMIENTO(:P_COD_EMPRESA,',
'                                   :P573_NRO_SOLICITUD);',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREAR,ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184962157243802493)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete_Solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_ELIMINA_SNC(:P_COD_EMPRESA,',
'                            :P573_NRO_SOLICITUD,',
'                            :P573_TIPO_SOLICITUD,',
'                            :P573_SER_SOLICITUD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184959347198802495)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PREPARE_URL_DC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   result varchar2(32767);',
'begin',
'   if :P573_TIP_COMPROBANTE_REF in (''FCR'',''FCO'') THEN ',
'   SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 193,',
'            p_items  => ''P193_ID,P193_VISITA'',',
'            p_values => :P573_TIP_COMPROBANTE_REF||:P573_SER_COMPROBANTE_REF||:P573_NRO_COMPROBANTE_REF||'',S'' ) "URL"',
'     INTO result',
'     from dual;',
'     ELSIF :P573_TIP_COMPROBANTE_REF = ''ORT'' THEN',
'     SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 244,',
'            p_items  => ''P244_PARAM_SER_OT,P244_PARAM_NRO_OT'',',
'            p_values => :P573_SER_COMPROBANTE_REF||'',''||:P573_NRO_COMPROBANTE_REF ) "URL"',
'     INTO result',
'     from dual;',
'     ',
'  END IF;',
'   --result:=apex_util.prepare_url(apex_application.g_x01);',
'   apex_json.open_object;',
'   apex_json.write(''success'', true);',
'   apex_json.write(''url'', result);',
'   apex_json.close_object;',
'exception',
' when others then',
'   apex_json.open_object;',
'   apex_json.write(''success'', false);',
'   apex_json.write(''message'', sqlerrm);',
'   apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
