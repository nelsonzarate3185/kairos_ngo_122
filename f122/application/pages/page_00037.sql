prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('VTROTECOM -Ordenes de Trabajo Terminadas por T\00E9cnico')
,p_alias=>unistr('ORDENES-DE-TRABAJO-TERMINADAS-POR-T\00C9CNICO')
,p_step_title=>unistr('Ordenes de Trabajo Terminadas por T\00E9cnico')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#TEC{',
'    ',
'    font-weight: bold !important;',
'    }',
'',
'',
'#reg_parametros {',
'      background-color: #adbed3 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230710114122'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8810403525104809)
,p_plug_name=>'Lista '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8810523967104810)
,p_plug_name=>'VTORDTEC2_rep'
,p_region_name=>'TEC'
,p_parent_plug_id=>wwv_flow_imp.id(8810403525104809)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       FINALIZADO_POR,',
'       FEC_COMPROBANTE,',
'       FEC_CIERRE,',
'       COD_TECNICO,',
'       ARTIC_REPUESTO,',
'       DESC_REPUESTOS_ART,',
'       COD_ARTICULO_OT,',
'       DESC_ARTICULO_OT,',
'       NRO_ORDEN,',
'       COD_ARTICULO_MO,',
'       DESC_ARTICULO_MO,',
'       CANTIDAD,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       MONTO,',
'       SUM_MONTO,',
'       MONTO_PRESUPUESTO,',
'       RETIRADO,',
'       MO_MONTO_GARANTIA,',
'       SUM_MO_MONTO_GARANTIA,',
'       MO_MONTO_PARTICULAR,',
'       SUM_MO_MONTO_PARTICULAR,',
'       RE_MONTO_GARANTIA,',
'       RE_MONTO_PARTICULAR,',
'       MONTO_OT,',
'       PORCENTAJE_META_ADICIONAL,',
'       CANTIDAD_MINIMA_PORCENTAJE,',
'       PORCENTAJE_META_ADICIONAL2,',
'       CANTIDAD_MINIMA_PORCENTAJE2,',
'       DESCRIPCION,',
'       MONTO_ADICIONAL,',
'       CF_MONTO_GAR,',
'       CF_MONTO_PAR,',
'       (MONTO_ADICIONAL + CF_MONTO_GAR + CF_MONTO_PAR)CF_COMISION',
'FROM(SELECT TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       FINALIZADO_POR,',
'       FEC_COMPROBANTE,',
'       FEC_CIERRE,',
'       COD_TECNICO,',
'       ARTIC_REPUESTO,',
'       DESC_REPUESTOS_ART,',
'       COD_ARTICULO_OT,',
'       DESC_ARTICULO_OT,',
'       NRO_ORDEN,',
'       COD_ARTICULO_MO,',
'       DESC_ARTICULO_MO,',
'       CANTIDAD,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       MONTO,',
'       SUM_MONTO,',
'       MONTO_PRESUPUESTO,',
'       RETIRADO,',
'       MO_MONTO_GARANTIA,',
'       SUM_MO_MONTO_GARANTIA,',
'       MO_MONTO_PARTICULAR,',
'       SUM_MO_MONTO_PARTICULAR,',
'       RE_MONTO_GARANTIA,',
'       RE_MONTO_PARTICULAR,',
'       MONTO_OT,',
'       PORCENTAJE_META_ADICIONAL,',
'       CANTIDAD_MINIMA_PORCENTAJE,',
'       PORCENTAJE_META_ADICIONAL2,',
'       CANTIDAD_MINIMA_PORCENTAJE2,',
'       DESCRIPCION,',
'       NVL(CASE WHEN SUM_MONTO> CMP2 THEN',
'         (round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )+ round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )*(PMA2/100))		',
'         WHEN SUM_MONTO>CMP then',
'		 (round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )+ round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )*(PMA/100))',
'		',
'        END,0',
'        )MONTO_ADICIONAL,',
'        round(nvl( SUM_MO_MONTO_GARANTIA, 0 ) * nvl( MONTO_OT, 0 ))CF_MONTO_GAR,',
'        round(nvl( SUM_MO_MONTO_PARTICULAR, 0 ) * nvl( MONTO_OT, 0 ))CF_MONTO_PAR',
'   ',
'FROM(SELECT OT.TIP_COMPROBANTE,',
'       OT.SER_COMPROBANTE,',
'       OT.NRO_COMPROBANTE,',
'       OT.FINALIZADO_POR,',
'       OT.FEC_COMPROBANTE,',
'       OT.FEC_CIERRE,',
'       MO.COD_TECNICO,',
'       '' '' ARTIC_REPUESTO,',
'       '' '' DESC_REPUESTOS_ART,',
'       OT.COD_ARTICULO COD_ARTICULO_OT,',
'       AOT.DESCRIPCION DESC_ARTICULO_OT,',
'       1 NRO_ORDEN,',
'       ''MO'' COD_ARTICULO_MO,',
'       ''MANO DE OBRA'' DESC_ARTICULO_MO,',
'       SUM(MO.CANTIDAD) CANTIDAD,',
'       1 COD_MONEDA,',
'       1 TIP_CAMBIO,',
'       (DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)) MONTO,',
'       SUM(DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1))OVER(PARTITION BY MO.COD_TECNICO ORDER BY MO.COD_TECNICO)SUM_MONTO,',
'       ',
'       SUM(OT.TOT_REPUESTOS_CALL) MONTO_PRESUPUESTO,',
'       CASE',
'         WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'              NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'          ''RETIRADO''',
'         ELSE',
'          NULL',
'       END RETIRADO,',
'       ',
'       (CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END) MO_MONTO_GARANTIA,',
'       SUM(CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END)OVER (PARTITION BY MO.COD_TECNICO ORDER BY MO.COD_TECNICO)SUM_MO_MONTO_GARANTIA,',
'       (CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END) MO_MONTO_PARTICULAR,',
'       SUM(CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END)OVER(PARTITION BY MO.COD_TECNICO ORDER BY MO.COD_TECNICO) SUM_MO_MONTO_PARTICULAR,',
'       ',
'       0                            RE_MONTO_GARANTIA,',
'       0                            RE_MONTO_PARTICULAR,',
'       T.MONTO_OT,',
'       NVL(T.PORCENTAJE_META_ADICIONAL,0)||''%'' PORCENTAJE_META_ADICIONAL,',
'       T.PORCENTAJE_META_ADICIONAL PMA,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE,0)||''%'' CANTIDAD_MINIMA_PORCENTAJE,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE,0)CMP,',
'       NVL(T.PORCENTAJE_META_ADICIONAL2,0) ||''%'' PORCENTAJE_META_ADICIONAL2,',
'       T.PORCENTAJE_META_ADICIONAL2 PMA2,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE2,0)||''%'' CANTIDAD_MINIMA_PORCENTAJE2 ,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE2,0)CMP2,',
'       DECODE(NVL(MO.IND_RECLAMO,''N''),''S'',''RECLAMO'',NULL)DESCRIPCION',
'       ',
'',
'  FROM VT_ORDENES_TRABAJO    OT, --CABECERA',
'       VT_ORDENES_TRABAJO_MO MO, --MANO OBRA',
'       ST_ARTICULOS          AOT, ---ARTICULO',
'       ST_ARTICULOS          AMO, ---MANO OBRA',
'       VT_TECNICOS           T,',
'       PERSONAS              P',
'',
' WHERE OT.COD_EMPRESA = :P_COD_EMPRESA',
'      -- &P_LINEA_EMPRESA',
'   AND (OT.SER_COMPROBANTE = :P37_SERIE OR :P37_SERIE IS NULL)',
'   AND (OT.NRO_COMPROBANTE = :P37_NRO_ORDEN OR :P37_NRO_ORDEN IS NULL)',
'   AND (MO.COD_TECNICO = :P37_TECNICO OR :P37_TECNICO IS NULL)',
'      --     AND &P_LINEA_TECNICO',
'   --AND MO.COD_TECNICO IN  (''217'',''198'',''254'',''244'')',
'   AND (OT.FEC_CIERRE >= :P37_FEC_CIERRE_INI OR',
'       :P37_FEC_CIERRE_INI IS NULL)',
'   AND (OT.FEC_CIERRE <= :P37_FEC_CIERRE_FIN OR',
'       :P37_FEC_CIERRE_FIN IS NULL)',
'   AND (OT.COD_ARTICULO >= :P37_ART_DES OR',
'       :P37_ART_DES IS NULL)',
'   AND (OT.COD_ARTICULO <= :P37_ART_HAS OR',
'       :P37_ART_HAS IS NULL)',
'   AND (OT.COD_USUARIO = :P37_COD_USUARIO OR :P37_COD_USUARIO IS NULL)',
'   AND (OT.FINALIZADO_POR = :P37_FINALIZADO_POR OR :P37_FINALIZADO_POR IS NULL)',
'   AND (OT.COD_ORIGEN = :P37_COD_ORIGEN OR :P37_COD_ORIGEN IS NULL)',
'   AND OT.COD_EMPRESA = MO.COD_EMPRESA',
'   AND OT.TIP_COMPROBANTE = MO.TIP_COMPROBANTE',
'   AND OT.SER_COMPROBANTE = MO.SER_COMPROBANTE',
'   AND OT.NRO_COMPROBANTE = MO.NRO_COMPROBANTE',
'   AND NVL(OT.CERRADO, ''N'') = ''S''',
'   AND NVL(OT.ANULADO, ''N'') <> ''S''',
'   AND MO.COD_EMPRESA = T.COD_EMPRESA(+)',
'   AND MO.COD_TECNICO = T.COD_TECNICO(+)',
'   AND T.COD_PERSONA = P.COD_PERSONA(+)',
'   AND OT.COD_EMPRESA = AOT.COD_EMPRESA',
'   AND OT.COD_ARTICULO = AOT.COD_ARTICULO',
'   AND MO.COD_EMPRESA = AMO.COD_EMPRESA',
'   AND MO.COD_ARTICULO = AMO.COD_ARTICULO',
'',
' GROUP BY OT.TIP_COMPROBANTE,',
'          OT.SER_COMPROBANTE,',
'          OT.NRO_COMPROBANTE,',
'          OT.FINALIZADO_POR,',
'          OT.FEC_COMPROBANTE,',
'          OT.FEC_CIERRE,',
'          MO.COD_TECNICO,',
'          OT.COD_ARTICULO,',
'          AOT.DESCRIPCION,',
'          OT.IND_GARANTIA,',
'          ',
'          CASE',
'            WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'                 NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'             ''RETIRADO''',
'            ELSE',
'             NULL',
'          END,',
'          T.MONTO_OT,',
'          T.PORCENTAJE_META_ADICIONAL,',
'          CANTIDAD_MINIMA_PORCENTAJE,',
'          T.PORCENTAJE_META_ADICIONAL2,',
'          CANTIDAD_MINIMA_PORCENTAJE2,',
'          IND_GARANTIA,',
'          OT.IND_RECLAMO,',
'          MO.IND_RECLAMO))',
'',
' ORDER BY 3 DESC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P37_TIPO_REP'
,p_plug_display_when_cond2=>'VTORDTEC2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Ordenes de Trabajo Terminadas por T\00E9cnico')
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
 p_id=>wwv_flow_imp.id(8810664132104811)
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
,p_internal_uid=>8810664132104811
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8810790514104812)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8810803784104813)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8810953820104814)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro. OT'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811072231104815)
,p_db_column_name=>'FINALIZADO_POR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Finalizado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811174944104816)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha OT'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811210351104817)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811343977104818)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Tecnico'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811498759104819)
,p_db_column_name=>'ARTIC_REPUESTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Artic Repuesto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811580260104820)
,p_db_column_name=>'DESC_REPUESTOS_ART'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Desc Repuestos Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811602311104821)
,p_db_column_name=>'COD_ARTICULO_OT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811793621104822)
,p_db_column_name=>'DESC_ARTICULO_OT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811857031104823)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8811943521104824)
,p_db_column_name=>'COD_ARTICULO_MO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Articulo Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812064797104825)
,p_db_column_name=>'DESC_ARTICULO_MO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Desc Articulo Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812176006104826)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812273844104827)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Moneda'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812393464104828)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812489391104829)
,p_db_column_name=>'MONTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812566723104830)
,p_db_column_name=>'MONTO_PRESUPUESTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Monto Presupuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812665814104831)
,p_db_column_name=>'RETIRADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Retirado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812790759104832)
,p_db_column_name=>'MO_MONTO_GARANTIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Total Servicios  '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812856891104833)
,p_db_column_name=>'MO_MONTO_PARTICULAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Mo Monto Particular'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8812979136104834)
,p_db_column_name=>'RE_MONTO_GARANTIA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Re Monto Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8813066897104835)
,p_db_column_name=>'RE_MONTO_PARTICULAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Re Monto Particular'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8813119877104836)
,p_db_column_name=>'MONTO_OT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>', Importe por OT'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8813934418104844)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Descripcion'
,p_column_html_expression=>'<b>#DESCRIPCION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8814148766104846)
,p_db_column_name=>'PORCENTAJE_META_ADICIONAL'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Cant. Min p/Porc. Adicional 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8814208338104847)
,p_db_column_name=>'SUM_MO_MONTO_GARANTIA'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Total Servicios'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8814344979104848)
,p_db_column_name=>'SUM_MO_MONTO_PARTICULAR'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'||'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8814422181104849)
,p_db_column_name=>'SUM_MONTO'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'||'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607339781000506)
,p_db_column_name=>'PORCENTAJE_META_ADICIONAL2'
,p_display_order=>350
,p_column_identifier=>'AO'
,p_column_label=>'Porcentaje Meta Adicional2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607454753000507)
,p_db_column_name=>'MONTO_ADICIONAL'
,p_display_order=>360
,p_column_identifier=>'AP'
,p_column_label=>'Monto Adicional'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607504024000508)
,p_db_column_name=>'CF_MONTO_GAR'
,p_display_order=>370
,p_column_identifier=>'AQ'
,p_column_label=>'Total a Cobrar'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607670033000509)
,p_db_column_name=>'CF_MONTO_PAR'
,p_display_order=>380
,p_column_identifier=>'AR'
,p_column_label=>'   ||'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607763172000510)
,p_db_column_name=>'CF_COMISION'
,p_display_order=>390
,p_column_identifier=>'AS'
,p_column_label=>'||'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607873810000511)
,p_db_column_name=>'CANTIDAD_MINIMA_PORCENTAJE'
,p_display_order=>400
,p_column_identifier=>'AT'
,p_column_label=>'Cant. Min. Porcentaje'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9607960184000512)
,p_db_column_name=>'CANTIDAD_MINIMA_PORCENTAJE2'
,p_display_order=>410
,p_column_identifier=>'AU'
,p_column_label=>'Cant. Min. Porcentaje 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9523061640784053)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'95231'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MONTO_OT:PORCENTAJE_META_ADICIONAL:PORCENTAJE_META_ADICIONAL2:SUM_MO_MONTO_GARANTIA:SUM_MO_MONTO_PARTICULAR:SUM_MONTO:MONTO_ADICIONAL:CF_MONTO_GAR:CF_MONTO_PAR:CF_COMISION:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_ARTICULO_OT:DESC_ARTICULO_OT:DESCRIPCION:M'
||'ONTO:CANTIDAD_MINIMA_PORCENTAJE:CANTIDAD_MINIMA_PORCENTAJE2:'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'ASC'
,p_avg_columns_on_break=>'TOTAL_OT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17936367883416514)
,p_report_id=>wwv_flow_imp.id(9523061640784053)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIPCION'
,p_operator=>'='
,p_expr=>'RECLAMO'
,p_condition_sql=>' (case when ("DESCRIPCION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RECLAMO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ffe581'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17936746104416515)
,p_report_id=>wwv_flow_imp.id(9523061640784053)
,p_name=>'20'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NRO_COMPROBANTE'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("NRO_COMPROBANTE" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9608052791000513)
,p_plug_name=>'Totalizador'
,p_region_name=>'TOTAL'
,p_parent_plug_id=>wwv_flow_imp.id(8810403525104809)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001,',
'       C002,',
'       C003,',
'       C004,',
'       C005,',
'       C006,',
'       C007',
'from apex_collections',
'where collection_name = ''VTORDTEC2'' ORDER BY TO_NUMBER(SEQ_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P37_TIPO_REP'
,p_plug_display_when_cond2=>'VTORDTEC2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Totalizador'
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
 p_id=>wwv_flow_imp.id(9609034898000523)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>9609034898000523
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609185431000524)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_column_html_expression=>'<b>#C001#</b>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609282185000525)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609305128000526)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609441445000527)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_column_html_expression=>'<b>#C004#</b>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609557306000528)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Garantia'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609670997000529)
,p_db_column_name=>'C006'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Particular'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9609748961000530)
,p_db_column_name=>'C007'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9685976761086182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96860'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001:C002:C003:C004:C005:C006:C007'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9609816244000531)
,p_plug_name=>'VTORDTECRES2'
,p_parent_plug_id=>wwv_flow_imp.id(8810403525104809)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C2.TECNICO_NOMBRE,',
'       C2.IMPORTE_GARANTIA,',
'       C2.COMISION_MO_GARANTIA_100,',
'       C2.TOTAL_MO_PARTICULAR,',
'       C2.PORC_COMISION,',
'       C2.COMISION_PARTICULAR,',
'       C2.TOTAL,',
'       ROUND(NVL(C2.TOTAL,0) * NVL(C2.PORC_COMI,0) / 100) TOTAL_COMISION',
'FROM(SELECT CONS.TECNICO_NOMBRE, ',
'       SUM(NVL(MO_MONTO_GARANTIA,0))IMPORTE_GARANTIA,',
'       SUM(CASE WHEN  :P37_FEC_CIERRE_FIN >=TO_DATE(''21/07/2017'',''DD/MM/YYYY'') THEN',
'  		  ROUND( NVL( MO_MONTO_GARANTIA, 0 )) ',
'  		  ELSE',
'         ROUND( NVL( MO_MONTO_GARANTIA, 0 ) * NVL( CONS.PORC_COMI, 0 ) / 100 ) ',
'       END) COMISION_MO_GARANTIA_100,',
'       SUM(MO_MONTO_PARTICULAR)TOTAL_MO_PARTICULAR,',
'       CONS.PORC_COMISION,',
'       SUM(round((MO_MONTO_PARTICULAR) * nvl( CONS.PORC_COMI, 0 ) / 100 ))COMISION_PARTICULAR,',
'       SUM(ROUND(NVL(MONTO,0)))TOTAL,',
'       CONS.PORC_COMI',
'FROM',
'(SELECT OT.TIP_COMPROBANTE,',
'       OT.SER_COMPROBANTE,',
'       OT.NRO_COMPROBANTE,',
'       OT.FINALIZADO_POR,',
'       OT.FEC_COMPROBANTE,',
'       OT.FEC_CIERRE,',
'       MO.COD_TECNICO,',
'       '' '' ARTIC_REPUESTO,',
'       '' '' DESC_REPUESTOS_ART,',
'       OT.COD_ARTICULO COD_ARTICULO_OT,',
'       AOT.DESCRIPCION DESC_ARTICULO_OT,',
'       MO.NRO_ORDEN,',
'       MO.COD_ARTICULO COD_ARTICULO_MO,',
'       DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'              ''S'',',
'              RTRIM(AMO.DESCRIPCION) || '' (RECLAMO)'',',
'              AMO.DESCRIPCION) DESC_ARTICULO_MO,',
'       MO.CANTIDAD,',
'       MO.COD_MONEDA,',
'       MO.TIP_CAMBIO,',
'       DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO) MONTO, --* SI ES RECLAMO MONTO CERO ------- NVL(AMO.COSTO_PROM,0)      COSTO_PROM_MO,',
'       ',
'       DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, NVL(AMO.PRECIO_BASE, 0)),',
'       OT.TOT_REPUESTOS_CALL MONTO_PRESUPUESTO,',
'       CASE',
'         WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'              NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'          ''RETIRADO''',
'         ELSE',
'          NULL',
'       END RETIRADO,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO)',
'         ELSE',
'          0',
'       END MO_MONTO_GARANTIA,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO)',
'         ELSE',
'          0',
'       END MO_MONTO_PARTICULAR,',
'       ',
'       0 RE_MONTO_GARANTIA,',
'       0 RE_MONTO_PARTICULAR,',
'       (SELECT P.NOMBRE || '' '' || T.COD_TECNICO NOM_TECNICO',
'        ',
'          FROM VT_TECNICOS T, PERSONAS P --MANO OBRA',
'         WHERE T.COD_EMPRESA = :P_COD_EMPRESA',
'              ',
'           AND T.COD_TECNICO = MO.COD_TECNICO',
'              ',
'           AND T.COD_PERSONA = P.COD_PERSONA',
'              ',
'           AND ROWNUM = 1) TECNICO_NOMBRE,',
'       ',
'       T.PORC_COMISION || ''%'' PORC_COMISION,',
'       T.PORC_COMISION PORC_COMI',
'',
'  FROM VT_ORDENES_TRABAJO    OT, --CABECERA',
'       VT_ORDENES_TRABAJO_MO MO, --MANO OBRA',
'       ST_ARTICULOS          AOT, ---ARTICULO',
'       ST_ARTICULOS          AMO, ---MANO OBRA',
'       VT_TECNICOS           T,',
'       PERSONAS              P,',
'       VT_ORIGENES           ORI',
'',
' WHERE OT.COD_EMPRESA = :P_COD_EMPRESA',
'      -- :P_LINEA_EMPRESA',
'   AND (OT.SER_COMPROBANTE = :P37_SERIE OR :P37_SERIE IS NULL)',
'   AND (OT.NRO_COMPROBANTE = :P37_NRO_ORDEN OR :P37_NRO_ORDEN IS NULL)',
'   AND (MO.COD_TECNICO = :P37_TECNICO OR :P37_TECNICO IS NULL)',
'      --     AND :P_LINEA_TECNICO',
'   AND (OT.FEC_CIERRE >= :P37_FEC_CIERRE_INI OR :P37_FEC_CIERRE_INI IS NULL)',
'   AND (OT.FEC_CIERRE <= :P37_FEC_CIERRE_FIN OR :P37_FEC_CIERRE_FIN IS NULL)',
'   AND (OT.COD_ARTICULO >= :P37_ART_DES OR :P37_ART_DES IS NULL)',
'   AND (OT.COD_ARTICULO <= :P37_ART_HAS OR :P37_ART_HAS IS NULL)',
'   AND (OT.COD_USUARIO = :P37_COD_USUARIO OR :P37_COD_USUARIO IS NULL)',
'   AND (OT.FINALIZADO_POR = :P37_FINALIZADO_POR OR',
'       :P37_FINALIZADO_POR IS NULL)',
'   AND (OT.COD_ORIGEN = :P37_COD_ORIGEN OR :P37_COD_ORIGEN IS NULL)',
'   AND OT.COD_EMPRESA = MO.COD_EMPRESA',
'   AND OT.TIP_COMPROBANTE = MO.TIP_COMPROBANTE',
'   AND OT.SER_COMPROBANTE = MO.SER_COMPROBANTE',
'   AND OT.NRO_COMPROBANTE = MO.NRO_COMPROBANTE',
'   AND NVL(OT.CERRADO, ''N'') = ''S''',
'   AND NVL(OT.ANULADO, ''N'') <> ''S''',
'   AND ORI.COD_EMPRESA = OT.COD_EMPRESA',
'   AND ORI.COD_ORIGEN = OT.COD_ORIGEN',
'   AND ORIGEN = ''STNGO''',
'   AND MO.COD_EMPRESA = T.COD_EMPRESA(+)',
'   AND MO.COD_TECNICO = T.COD_TECNICO(+)',
'   AND T.COD_PERSONA = P.COD_PERSONA(+)',
'   AND OT.COD_EMPRESA = AOT.COD_EMPRESA',
'   AND OT.COD_ARTICULO = AOT.COD_ARTICULO',
'   AND MO.COD_EMPRESA = AMO.COD_EMPRESA',
'   AND MO.COD_ARTICULO = AMO.COD_ARTICULO',
'   AND MO.COD_TECNICO IS NOT NULL',
'   AND MO.COD_TECNICO NOT IN (''29'')',
' GROUP BY OT.TIP_COMPROBANTE,',
'          OT.SER_COMPROBANTE,',
'          OT.NRO_COMPROBANTE,',
'          OT.FINALIZADO_POR,',
'          OT.FEC_COMPROBANTE,',
'          OT.FEC_CIERRE,',
'          MO.COD_TECNICO,',
'          OT.COD_ARTICULO,',
'          AOT.DESCRIPCION,',
'          OT.IND_GARANTIA,',
'          MO.NRO_ORDEN,',
'          MO.COD_ARTICULO,',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'                 ''S'',',
'                 RTRIM(AMO.DESCRIPCION) || '' (RECLAMO)'',',
'                 AMO.DESCRIPCION),',
'          MO.CANTIDAD,',
'          MO.COD_MONEDA,',
'          MO.TIP_CAMBIO,',
'          NVL(AMO.PRECIO_BASE, 0),',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'                 ''S'',',
'                 0,',
'                 MO.MONTO_COMISION_TECNICO),',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, NVL(AMO.PRECIO_BASE, 0)),',
'          OT.TOT_REPUESTOS_CALL,',
'          CASE',
'            WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'                 NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'             ''RETIRADO''',
'            ELSE',
'             NULL',
'          END,',
'          T.PORC_COMISION',
'          )CONS',
'     GROUP BY CONS.TECNICO_NOMBRE,',
'              CONS.PORC_COMISION,',
'              CONS.PORC_COMI )C2',
' ORDER BY 1',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P37_TIPO_REP'
,p_plug_display_when_cond2=>'VTORDTECRES'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Ordenes de Trabajo Terminadas por T\00E9cnico')
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9609913001000532)
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
,p_internal_uid=>9609913001000532
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712290085385208)
,p_db_column_name=>'TECNICO_NOMBRE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Tecnico Nombre'
,p_column_html_expression=>'<H6>#TECNICO_NOMBRE#</H6>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712327210385209)
,p_db_column_name=>'IMPORTE_GARANTIA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Importe Garantia'
,p_column_html_expression=>'<H6>#IMPORTE_GARANTIA#</H6>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712449111385210)
,p_db_column_name=>'COMISION_MO_GARANTIA_100'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Comision MO Garantia 100%'
,p_column_html_expression=>'<H6>#COMISION_MO_GARANTIA_100#</H6>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712514620385211)
,p_db_column_name=>'TOTAL_MO_PARTICULAR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Total MO Particular'
,p_column_html_expression=>'<H6>#TOTAL_MO_PARTICULAR#</H6>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712716457385213)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'%Comision Particular'
,p_column_html_expression=>'<H6>#PORC_COMISION#</H6>'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712866351385214)
,p_db_column_name=>'COMISION_PARTICULAR'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Comision Particular'
,p_column_html_expression=>'<H6>#COMISION_PARTICULAR#</H6>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712925986385215)
,p_db_column_name=>'TOTAL'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Total'
,p_column_html_expression=>'<H6>#TOTAL#</H6>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9713000460385216)
,p_db_column_name=>'TOTAL_COMISION'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Total Comision'
,p_column_html_expression=>'<H6>#TOTAL_COMISION#</H6>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9724773456395505)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'97248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TECNICO_NOMBRE:IMPORTE_GARANTIA:COMISION_MO_GARANTIA_100:TOTAL_MO_PARTICULAR:PORC_COMISION:COMISION_PARTICULAR:TOTAL:TOTAL_COMISION:'
,p_sort_column_1=>'TECNICO_NOMBRE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10070276343733330)
,p_report_id=>wwv_flow_imp.id(9724773456395505)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COMISION_MO_GARANTIA_100'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COMISION_MO_GARANTIA_100" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10069877349733329)
,p_report_id=>wwv_flow_imp.id(9724773456395505)
,p_name=>'20'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TOTAL_MO_PARTICULAR'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("TOTAL_MO_PARTICULAR" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_column_bg_color=>'#8ec5fe'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10070677285733330)
,p_report_id=>wwv_flow_imp.id(9724773456395505)
,p_name=>'30'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PORC_COMISION'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("PORC_COMISION" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>30
,p_column_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10069086314733329)
,p_report_id=>wwv_flow_imp.id(9724773456395505)
,p_name=>'40'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COMISION_PARTICULAR'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COMISION_PARTICULAR" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>40
,p_column_bg_color=>'#8ec5fe'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10069462907733329)
,p_report_id=>wwv_flow_imp.id(9724773456395505)
,p_name=>'50'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TOTAL'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("TOTAL" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>50
,p_column_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10068667337733328)
,p_report_id=>wwv_flow_imp.id(9724773456395505)
,p_name=>'60'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TOTAL_COMISION'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("TOTAL_COMISION" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>60
,p_column_bg_color=>'#8ec5fe'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9713349237385219)
,p_plug_name=>'VTORDTEC3'
,p_parent_plug_id=>wwv_flow_imp.id(8810403525104809)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c2.COD_TECNICO,',
'       C2.NRO_COMPROBANTE,',
'       C2.FEC_COMPROBANTE,',
'       C2.COD_ARTICULO_OT,',
'       C2.DESC_ARTICULO_OT,',
'       C2.X,',
'       C2.COD_ARTICULO_MO,',
'       C2.DESC_ARTICULO_MO,',
'       C2.CANTIDAD,',
'       C2.MONTO,',
'       C2.PRECIO,',
'       C2.TR_GARANTIA,',
'       C2.TR_PARTICULAR,',
'       C2.TR_TOTAL,',
'       C2.TS_GARANTIA,',
'       C2.TS_PARTICULAR,',
'       C2.TS_TOTAL,',
'       C2.COMISION_GARANTIA,',
'       C2.COMISION_PARTICULAR,',
'       C2.TC_GARANTIA,',
'       C2.TC_PARTICULAR,',
'       (C2.TC_GARANTIA+C2.TC_PARTICULAR)TC_TOTAL',
'  FROM(SELECT CONS.COD_TECNICO,',
'       CASE WHEN CONS.CONT_CAB > 1 THEN ',
'                 NULL ',
'            ELSE ',
'                 CONS.NRO_COMPROBANTE',
'       END NRO_COMPROBANTE,',
'       CASE WHEN CONS.CONT_CAB > 1 THEN ',
'                 NULL ',
'            ELSE ',
'                 CONS.FEC_COMPROBANTE',
'       END FEC_COMPROBANTE,',
'       CASE WHEN CONS.CONT_CAB > 1 THEN ',
'                 NULL ',
'            ELSE ',
'                 CONS.COD_ARTICULO_OT',
'       END COD_ARTICULO_OT,',
'       CASE WHEN CONS.CONT_CAB > 1 THEN ',
'                 NULL ',
'            ELSE ',
'                 CONS.DESC_ARTICULO_OT',
'       END DESC_ARTICULO_OT,',
'       ''SERVICIO'' X,',
'       CONS.COD_ARTICULO_MO,',
'       CONS.DESC_ARTICULO_MO,',
'       CONS.CANTIDAD ,',
'       CONS.MONTO,',
'       CONS.PRECIO,',
'       SUM(CONS.RE_MONTO_GARANTIA)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO)TR_GARANTIA,',
'       SUM(CONS.RE_MONTO_PARTICULAR)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO)TR_PARTICULAR,',
'       SUM(CONS.RE_MONTO_GARANTIA+CONS.RE_MONTO_PARTICULAR)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO)TR_TOTAL,',
'       SUM(CONS.MO_MONTO_GARANTIA)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO)TS_GARANTIA,',
'       SUM(CONS.MO_MONTO_PARTICULAR)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO)TS_PARTICULAR,',
'       SUM(CONS.MO_MONTO_GARANTIA+CONS.MO_MONTO_PARTICULAR)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO)TS_TOTAL,',
'       ''100%''COMISION_GARANTIA,',
'       ''100%''COMISION_PARTICULAR,',
'       CASE WHEN :P37_FEC_CIERRE_FIN >=to_date(''21/07/2017'',''dd/mm/yyyy'') THEN',
'       round( nvl( SUM(CONS.MO_MONTO_GARANTIA)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO), 0 )  , 0 )',
'      else',
'        round( nvl( SUM(CONS.MO_MONTO_GARANTIA)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO), 0 ) * nvl( CONS.PORC_COMISION, 0 ) / 100, 0 )  ',
'   end TC_GARANTIA,',
'   CASE WHEN :P37_FEC_CIERRE_FIN <=TO_DATE(''21/05/2018'',''DD/MM/YYYY'') THEN',
'      ROUND( NVL( SUM(CONS.MO_MONTO_PARTICULAR)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO), 0 ) * NVL( CONS.PORC_COMISION, 0 ) / 100,0) ',
'     ELSE                                                                       ',
'      ROUND( NVL( SUM(CONS.MO_MONTO_PARTICULAR)OVER(PARTITION BY CONS.COD_TECNICO ORDER BY CONS.COD_TECNICO),0),0)',
'END TC_PARTICULAR',
'',
'FROM(SELECT --OT.TIP_COMPROBANTE,',
'       --OT.SER_COMPROBANTE,',
'       OT.NRO_COMPROBANTE,',
'       --OT.FINALIZADO_POR,',
'       OT.FEC_COMPROBANTE,',
'       OT.FEC_CIERRE,',
'       MO.COD_TECNICO,',
'       COUNT(*) OVER (PARTITION BY MO.COD_TECNICO,OT.NRO_COMPROBANTE,OT.FEC_COMPROBANTE,OT.COD_ARTICULO ',
'       ORDER BY MO.COD_TECNICO,OT.NRO_COMPROBANTE,OT.FEC_COMPROBANTE,OT.COD_ARTICULO  ROWS UNBOUNDED PRECEDING)CONT_CAB,',
'       D.COD_ARTICULO ARTIC_REPUESTO,',
'       A.DESCRIPCION DESC_REPUESTOS_ART,',
'       OT.COD_ARTICULO COD_ARTICULO_OT,',
'       AOT.DESCRIPCION DESC_ARTICULO_OT,',
'       0 NRO_ORDEN,',
'       '''' COD_ARTICULO_MO,',
'       '''' DESC_ARTICULO_MO,',
'       0 CANTIDAD,',
'       '''' COD_MONEDA,',
'       0 TIP_CAMBIO,',
'       0 MONTO,',
'       0 PRECIO,',
'       DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'              ''S'',',
'              NVL(D.CANTIDAD, 0),',
'              NVL(D.CANTIDAD, 0) * -1) CANTIDAD_REPUESTO,',
'       DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'              ''S'',',
'              NVL(D.CANTIDAD, 0),',
'              NVL(D.CANTIDAD, 0) * -1) * NVL(D.COSTO_GS, 0) COSTO_TOTAL,',
'       DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'              ''S'',',
'              NVL(D.CANTIDAD, 0),',
'              NVL(D.CANTIDAD, 0) * -1) * NVL(D.PRECIO_VENTA, 0) MONTO_TOTAL,',
'       DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'              ''S'',',
'              NVL(D.CANTIDAD, 0),',
'              NVL(D.CANTIDAD, 0) * -1) * NVL(D.PRECIO_LISTA, 0) MONTO_TOTAL_LISTA,',
'       C.NUM_ENT_SAL,',
'       OT.TOT_REPUESTOS_CALL MONTO_PRESUPUESTO,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'              NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'          ''RETIRADO''',
'         ELSE',
'          NULL',
'       END RETIRADO,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          0',
'         ELSE',
'          0',
'       END MO_MONTO_GARANTIA,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          0',
'         ELSE',
'          0',
'       END MO_MONTO_PARTICULAR,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'                 ''S'',',
'                 NVL(D.CANTIDAD, 0),',
'                 NVL(D.CANTIDAD, 0) * -1) * NVL(D.COSTO_GS, 0)',
'         ELSE',
'          0',
'       END RE_MONTO_GARANTIA,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'                 ''S'',',
'                 NVL(D.CANTIDAD, 0),',
'                 NVL(D.CANTIDAD, 0) * -1) * NVL(D.COSTO_GS, 0)',
'         ELSE',
'          0',
'       END RE_MONTO_PARTICULAR,',
'       CASE',
'         WHEN NVL(IND_GARANTIA, ''N'') = ''S'' THEN',
'          ''GARANTIA''',
'         ELSE',
'          ''PARTICULAR''',
'       END CONDICION,',
'       NVL(DIV.TALLER, ''N/A'') TALLER,',
'       ''SI CORRESPONDE'' ES_VALIDO,',
'       NULL ORIGEN_OT,',
'       NULL ORIGEN_DETALLE,',
'       0 COMISION_GARANTIA,',
'       0 COMISION_PARTICULAR,',
'       T.PORC_COMISION',
'',
'  FROM VT_ORDENES_TRABAJO    OT, --CABECERA,   ',
'       VT_ORDENES_TRABAJO_MO MO,',
'       VT_TECNICOS           T,',
'       ST_ARTICULOS          AOT, ---ARTICULO',
'       ST_ENTSAL_CAB         C,',
'       ST_ENTSAL_DET         D,',
'       ST_ARTICULOS          A,',
'       ST_ARTICULOS          AROT,',
'       ST_MOTIVO_ENT_SAL     MES,',
'       ST_DIVISION_ARTICULOS DIV',
' WHERE OT.COD_EMPRESA = :P_COD_EMPRESA',
'      -- :P_LINEA_EMPRESA',
'   AND (OT.SER_COMPROBANTE = :P37_SERIE OR :P37_SERIE IS NULL)',
'   AND (OT.NRO_COMPROBANTE = :P37_NRO_ORDEN OR :P37_NRO_ORDEN IS NULL)',
'   AND (MO.COD_TECNICO = :P37_TECNICO OR :P37_TECNICO IS NULL)',
'      --AND :P_LINEA_TECNICO',
'   AND OT.NRO_COMPROBANTE = 1',
'      ',
'   AND AROT.COD_EMPRESA = D.COD_EMPRESA',
'   AND AROT.COD_ARTICULO = D.COD_ARTICULO',
'   AND AROT.COD_DIVISION = DIV.COD_DIVISION',
'   AND (OT.COD_ARTICULO >= :P37_ART_DES OR :P37_ART_DES IS NULL)',
'   AND (OT.COD_ARTICULO <= :P37_ART_HAS OR :P37_ART_HAS IS NULL)',
'   AND (OT.FEC_CIERRE >= :P37_FEC_CIERRE_INI OR :P37_FEC_CIERRE_INI IS NULL)',
'   AND (OT.FEC_CIERRE <= :P37_FEC_CIERRE_FIN OR :P37_FEC_CIERRE_FIN IS NULL)',
'   AND (OT.COD_USUARIO = :P37_COD_USUARIO OR :P37_COD_USUARIO IS NULL)',
'   AND (OT.COD_ORIGEN = :P37_COD_ORIGEN OR :P37_COD_ORIGEN IS NULL)',
'   AND (OT.FINALIZADO_POR = :P37_FINALIZADO_POR OR',
'       :P37_FINALIZADO_POR IS NULL)',
'   AND NVL(OT.CERRADO, ''N'') = ''S''',
'   AND NVL(OT.ANULADO, ''N'') <> ''S''',
'   AND C.COD_MOTIVO_ENT_SAL NOT IN (''55'')',
'   AND OT.NRO_COMPROBANTE IN (1)',
'   AND OT.COD_EMPRESA = MO.COD_EMPRESA',
'   AND OT.TIP_COMPROBANTE = MO.TIP_COMPROBANTE',
'   AND OT.SER_COMPROBANTE = MO.SER_COMPROBANTE',
'   AND OT.NRO_COMPROBANTE = MO.NRO_COMPROBANTE',
'   AND MO.COD_EMPRESA = T.COD_EMPRESA',
'   AND MO.COD_TECNICO = T.COD_TECNICO',
'   AND MO.COD_ARTICULO IN',
'       (SELECT MOA.COD_ARTICULO',
'          FROM VT_ORDENES_TRABAJO_MO MOA,',
'               VT_ORDENES_TRABAJO    OTA,',
'               ST_ARTICULOS          AA',
'         WHERE OTA.COD_EMPRESA = :P_COD_EMPRESA',
'           AND OTA.FEC_CIERRE BETWEEN :P37_FEC_CIERRE_INI AND',
'               :P37_FEC_CIERRE_FIN',
'              -- AND  :P_LINEA_CIERRE',
'           AND MOA.COD_EMPRESA = OTA.COD_EMPRESA',
'           AND MOA.TIP_COMPROBANTE = OTA.TIP_COMPROBANTE',
'           AND MOA.SER_COMPROBANTE = OTA.SER_COMPROBANTE',
'           AND MOA.NRO_COMPROBANTE = OTA.NRO_COMPROBANTE',
'           AND MOA.COD_EMPRESA = AA.COD_EMPRESA',
'           AND MOA.COD_ARTICULO = AA.COD_ARTICULO',
'           AND AA.COD_FAMILIA <> ''MO'')',
'   AND OT.COD_EMPRESA = AOT.COD_EMPRESA',
'   AND OT.COD_ARTICULO = AOT.COD_ARTICULO',
'   AND C.COD_EMPRESA(+) = OT.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE_REF(+) = OT.TIP_COMPROBANTE',
'   AND C.SER_COMPROBANTE_REF(+) = OT.SER_COMPROBANTE',
'   AND C.NRO_COMPROBANTE_REF(+) = OT.NRO_COMPROBANTE',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'   AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'   AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'   AND C.COD_SUCURSAL = D.COD_SUCURSAL',
'   AND A.COD_EMPRESA = D.COD_EMPRESA',
'   AND A.COD_ARTICULO = D.COD_ARTICULO',
'   AND C.COD_MOTIVO_ENT_SAL = MES.COD_MOTIVO_ENT_SAL',
' GROUP BY OT.TIP_COMPROBANTE,',
'          OT.SER_COMPROBANTE,',
'          OT.NRO_COMPROBANTE,',
'          OT.FINALIZADO_POR,',
'          OT.FEC_COMPROBANTE,',
'          OT.FEC_CIERRE,',
'          MO.COD_TECNICO,',
'          OT.COD_ARTICULO,',
'          D.COD_ARTICULO,',
'          A.DESCRIPCION,',
'          AOT.DESCRIPCION,',
'          C.NUM_ENT_SAL,',
'          DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'                 ''S'',',
'                 NVL(D.CANTIDAD, 0),',
'                 NVL(D.CANTIDAD, 0) * -1),',
'          DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'                 ''S'',',
'                 NVL(D.CANTIDAD, 0),',
'                 NVL(D.CANTIDAD, 0) * -1) * NVL(D.COSTO_GS, 0),',
'          DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'                 ''S'',',
'                 NVL(D.CANTIDAD, 0),',
'                 NVL(D.CANTIDAD, 0) * -1) * NVL(D.PRECIO_VENTA, 0),',
'          DECODE(NVL(MES.IND_ENT_SAL, ''N''),',
'                 ''S'',',
'                 NVL(D.CANTIDAD, 0),',
'                 NVL(D.CANTIDAD, 0) * -1) * NVL(D.PRECIO_LISTA, 0),',
'          OT.TOT_REPUESTOS_CALL,',
'          OT.IND_GARANTIA,',
'          CASE',
'            WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'                 NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'             ''RETIRADO''',
'            ELSE',
'             NULL',
'          END,',
'          DIV.TALLER,',
'          T.PORC_COMISION',
'',
'UNION ALL',
'SELECT --OT.TIP_COMPROBANTE,',
'       --OT.SER_COMPROBANTE,',
'       OT.NRO_COMPROBANTE,',
'       --OT.FINALIZADO_POR,',
'       OT.FEC_COMPROBANTE,',
'       OT.FEC_CIERRE,',
'       MO.COD_TECNICO,',
'       COUNT(*) OVER (PARTITION BY MO.COD_TECNICO,OT.NRO_COMPROBANTE,OT.FEC_COMPROBANTE,OT.COD_ARTICULO ',
'       ORDER BY MO.COD_TECNICO,OT.NRO_COMPROBANTE,OT.FEC_COMPROBANTE,OT.COD_ARTICULO  ROWS UNBOUNDED PRECEDING)CONT_CAB,',
'       '' '' ARTIC_REPUESTO,',
'       '' '' DESC_REPUESTOS_ART,',
'       OT.COD_ARTICULO COD_ARTICULO_OT,',
'       AOT.DESCRIPCION DESC_ARTICULO_OT,',
'       MO.NRO_ORDEN,',
'       MO.COD_ARTICULO COD_ARTICULO_MO,',
'       DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'              ''S'',',
'              RTRIM(AMO.DESCRIPCION) || '' (RECLAMO)'',',
'              AMO.DESCRIPCION) DESC_ARTICULO_MO,',
'       MO.CANTIDAD,',
'       MO.COD_MONEDA,',
'       MO.TIP_CAMBIO,',
'       DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO) MONTO, --* SI ES RECLAMO MONTO CERO ------- NVL(AMO.COSTO_PROM,0)      COSTO_PROM_MO,',
'       ',
'       DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, NVL(AMO.PRECIO_BASE, 0)),',
'       0,',
'       0,',
'       0,',
'       0,',
'       0,',
'       OT.TOT_REPUESTOS_CALL MONTO_PRESUPUESTO,',
'       CASE',
'         WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'              NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'          ''RETIRADO''',
'         ELSE',
'          NULL',
'       END RETIRADO,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO)',
'         ELSE',
'          0',
'       END MO_MONTO_GARANTIA,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO)',
'         ELSE',
'          0',
'       END MO_MONTO_PARTICULAR,',
'       ',
'       0 RE_MONTO_GARANTIA,',
'       0 RE_MONTO_PARTICULAR,',
'       CASE',
'         WHEN NVL(IND_GARANTIA, ''N'') = ''S'' THEN',
'          ''GARANTIA''',
'         ELSE',
'          ''PARTICULAR''',
'       END CONDICION,',
'       NVL(DIV.TALLER, ''N/A'') TALLER,',
'       CASE',
'         WHEN :P_FECHA_CIERRE_HASTA >= TO_DATE(''21/07/2017'', ''DD/MM/YYYY'') THEN',
'          CASE',
'            WHEN MO.MONTO + 5000 > NVL(PRECIO(MO.COD_ARTICULO, 0), 0) AND',
'                 NVL(OT.IND_GARANTIA, ''N'') = ''S'' AND NVL(MO.MONTO, 0) > 30000 AND',
'                 MO.COD_TECNICO NOT IN (''29'') THEN',
'             ''NO CORRESPONDE''',
'            ELSE',
'             ''SI CORRESPONDE''',
'          END',
'         ELSE',
'          ''SI CORRESPONDE''',
'       END CORRESPONDE,',
'       ORI.ORIGEN ORIGEN_OT,',
'       ORI.DESCRIPCION ORIGEN_OT,',
'       ',
'       ROUND(CASE',
'               WHEN :P_FECHA_CIERRE_HASTA >= TO_DATE(''21/07/2017'', ''DD/MM/YYYY'') THEN',
'                CASE',
'                  WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'                   DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, MO.MONTO_COMISION_TECNICO)',
'                  ELSE',
'                   0',
'                END',
'               ELSE',
'                CASE',
'                  WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'                   ROUND(DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'                                ''S'',',
'                                0,',
'                                MO.MONTO_COMISION_TECNICO))',
'                  ELSE',
'                   0',
'                END',
'             END) COMISION_GARANTIA,',
'       ',
'       CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          ROUND(DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'                       ''S'',',
'                       0,',
'                       MO.MONTO_COMISION_TECNICO))',
'         ELSE',
'          0',
'       END COMISION_PARTICULAR,',
'       T.PORC_COMISION',
'',
'  FROM VT_ORDENES_TRABAJO    OT, --CABECERA',
'       VT_ORDENES_TRABAJO_MO MO, --MANO OBRA',
'       ST_ARTICULOS          AOT, ---ARTICULO',
'       ST_ARTICULOS          AMO, ---MANO OBRA',
'       VT_TECNICOS           T,',
'       PERSONAS              P,',
'       ST_DIVISION_ARTICULOS DIV,',
'       VT_ORIGENES           ORI',
' WHERE OT.COD_EMPRESA = :P_COD_EMPRESA',
'      -- :P_LINEA_EMPRESA',
'      ',
'   AND (OT.SER_COMPROBANTE = :P37_SERIE OR :P37_SERIE IS NULL)',
'   AND (OT.NRO_COMPROBANTE = :P37_NRO_ORDEN OR :P37_NRO_ORDEN IS NULL)',
'   AND (MO.COD_TECNICO = :P37_TECNICO OR :P37_TECNICO IS NULL)',
'      --     AND :P_LINEA_TECNICO',
'   AND AOT.COD_DIVISION = DIV.COD_DIVISION',
'   AND (OT.FEC_CIERRE >= :P37_FEC_CIERRE_INI OR :P37_FEC_CIERRE_INI IS NULL)',
'   AND (OT.FEC_CIERRE <= :P37_FEC_CIERRE_FIN OR :P37_FEC_CIERRE_FIN IS NULL)',
'   AND (OT.COD_ARTICULO >= :P37_ART_DES OR :P37_ART_DES IS NULL)',
'   AND (OT.COD_ARTICULO <= :P37_ART_HAS OR :P37_ART_HAS IS NULL)',
'   AND (OT.COD_USUARIO = :P37_COD_USUARIO OR :P37_COD_USUARIO IS NULL)',
'   AND (OT.FINALIZADO_POR = :P37_FINALIZADO_POR OR',
'       :P37_FINALIZADO_POR IS NULL)',
'   AND (OT.COD_ORIGEN = :P37_COD_ORIGEN OR :P37_COD_ORIGEN IS NULL)',
'   AND OT.COD_EMPRESA = MO.COD_EMPRESA',
'   AND OT.TIP_COMPROBANTE = MO.TIP_COMPROBANTE',
'   AND OT.SER_COMPROBANTE = MO.SER_COMPROBANTE',
'   AND OT.NRO_COMPROBANTE = MO.NRO_COMPROBANTE',
'   AND NVL(OT.CERRADO, ''N'') = ''S''',
'   AND NVL(OT.ANULADO, ''N'') <> ''S''',
'   AND MO.COD_EMPRESA = T.COD_EMPRESA(+)',
'   AND MO.COD_TECNICO = T.COD_TECNICO(+)',
'   AND T.COD_PERSONA = P.COD_PERSONA(+)',
'   AND OT.COD_EMPRESA = AOT.COD_EMPRESA',
'   AND OT.COD_ARTICULO = AOT.COD_ARTICULO',
'   AND MO.COD_EMPRESA = AMO.COD_EMPRESA',
'   AND MO.COD_ARTICULO = AMO.COD_ARTICULO',
'      ',
'   AND OT.COD_EMPRESA = ORI.COD_EMPRESA',
'   AND OT.COD_ORIGEN = ORI.COD_ORIGEN',
'   AND ORI.ORIGEN = ''STNGO''',
'   AND OT.COD_ORIGEN IN (''1'',',
'                         ''3'',',
'                         ''24'',',
'                         ''20'',',
'                         ''9'',',
'                         ''32'',',
'                         ''33'',',
'                         ''23'',',
'                         ''40'',',
'                         ''42'',',
'                         ''14'',',
'                         ''40'',',
'                         ''23'',',
'                         ''36'')',
' GROUP BY OT.TIP_COMPROBANTE,',
'          OT.SER_COMPROBANTE,',
'          OT.NRO_COMPROBANTE,',
'          OT.FINALIZADO_POR,',
'          OT.FEC_COMPROBANTE,',
'          OT.FEC_CIERRE,',
'          MO.COD_TECNICO,',
'          OT.COD_ARTICULO,',
'          AOT.DESCRIPCION,',
'          OT.IND_GARANTIA,',
'          MO.NRO_ORDEN,',
'          MO.COD_ARTICULO,',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'                 ''S'',',
'                 RTRIM(AMO.DESCRIPCION) || '' (RECLAMO)'',',
'                 AMO.DESCRIPCION),',
'          MO.CANTIDAD,',
'          MO.COD_MONEDA,',
'          MO.TIP_CAMBIO,',
'          NVL(AMO.PRECIO_BASE, 0),',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''),',
'                 ''S'',',
'                 0,',
'                 MO.MONTO_COMISION_TECNICO),',
'          DECODE(NVL(MO.IND_RECLAMO, ''N''), ''S'', 0, NVL(AMO.PRECIO_BASE, 0)),',
'          OT.TOT_REPUESTOS_CALL,',
'          CASE',
'            WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'                 NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'             ''RETIRADO''',
'            ELSE',
'             NULL',
'          END,',
'          DIV.TALLER,',
'          MO.MONTO,',
'          ORI.ORIGEN,',
'          ORI.DESCRIPCION,',
'          T.PORC_COMISION',
' ORDER BY 3)CONS)C2',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P37_TIPO_REP'
,p_plug_display_when_cond2=>'VTORDTEC3'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Ordenes de Trabajo Terminadas por T\00E9cnico')
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
 p_id=>wwv_flow_imp.id(9713414071385220)
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
,p_internal_uid=>9713414071385220
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9713785005385223)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro OT'
,p_column_html_expression=>'<B>#NRO_COMPROBANTE#</B>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9713998509385225)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha OT'
,p_column_html_expression=>'<B>#FEC_COMPROBANTE#</B>'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9714492214385230)
,p_db_column_name=>'COD_ARTICULO_OT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('C\00F3digo')
,p_column_html_expression=>'<B>#COD_ARTICULO_OT#</B>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9714578578385231)
,p_db_column_name=>'DESC_ARTICULO_OT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Articulo OT'
,p_column_html_expression=>'<B>#DESC_ARTICULO_OT#</B>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090102625323908)
,p_db_column_name=>'X'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'<p style="color:WHITE;">   </p>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090298974323909)
,p_db_column_name=>'COD_ARTICULO_MO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('C\00F3digo MO')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090303282323910)
,p_db_column_name=>'DESC_ARTICULO_MO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Articulo MO'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090426581323911)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090538576323912)
,p_db_column_name=>'MONTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090648535323913)
,p_db_column_name=>'PRECIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090783091323914)
,p_db_column_name=>'TR_GARANTIA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'T.R. Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090872196323915)
,p_db_column_name=>'TR_PARTICULAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'T.R. Particular'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090949922323916)
,p_db_column_name=>'TR_TOTAL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'T.R. Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091093407323917)
,p_db_column_name=>'TS_GARANTIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'T.S. Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091125838323918)
,p_db_column_name=>'TS_PARTICULAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'T.S. Particular'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091236071323919)
,p_db_column_name=>'TS_TOTAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'T.S. Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091588350323922)
,p_db_column_name=>'COMISION_GARANTIA'
,p_display_order=>240
,p_column_identifier=>'Z'
,p_column_label=>'Comision Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091678321323923)
,p_db_column_name=>'COMISION_PARTICULAR'
,p_display_order=>250
,p_column_identifier=>'AA'
,p_column_label=>'Comision Particular'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091751435323924)
,p_db_column_name=>'TC_GARANTIA'
,p_display_order=>260
,p_column_identifier=>'AB'
,p_column_label=>unistr('T.C. Garant\00EDa')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091877518323925)
,p_db_column_name=>'TC_PARTICULAR'
,p_display_order=>270
,p_column_identifier=>'AC'
,p_column_label=>'T.C. Particular'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091970082323926)
,p_db_column_name=>'TC_TOTAL'
,p_display_order=>280
,p_column_identifier=>'AD'
,p_column_label=>'T.C. Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10092074322323927)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>290
,p_column_identifier=>'AE'
,p_column_label=>unistr('T\00E9cnico')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10123864346431372)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10106058708324489)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101061'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TR_GARANTIA:TR_PARTICULAR:TR_TOTAL:TS_GARANTIA:TS_PARTICULAR:TS_TOTAL:TC_GARANTIA:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_ARTICULO_OT:DESC_ARTICULO_OT:X:COD_ARTICULO_MO:DESC_ARTICULO_MO:CANTIDAD:MONTO:PRECIO:TC_PARTICULAR:TC_TOTAL:COD_TECNICO:'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'COD_TECNICO:TR_GARANTIA:TR_PARTICULAR:TR_TOTAL:TS_GARANTIA:TS_PARTICULAR:TS_TOTAL:COMISION_GARANTIA:COMISION_PARTICULAR:TC_GARANTIA:TC_PARTICULAR:TC_TOTAL'
,p_break_enabled_on=>'COD_TECNICO:TR_GARANTIA:TR_PARTICULAR:TR_TOTAL:TS_GARANTIA:TS_PARTICULAR:TS_TOTAL:COMISION_GARANTIA:COMISION_PARTICULAR:TC_GARANTIA:TC_PARTICULAR:TC_TOTAL'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10495259634104443)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NRO_COMPROBANTE'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("NRO_COMPROBANTE" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#93c8ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10498861403104447)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'20'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'FEC_COMPROBANTE'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("FEC_COMPROBANTE" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_column_bg_color=>'#93c8ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10496050112104444)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'30'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_ARTICULO_OT'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COD_ARTICULO_OT" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>30
,p_column_bg_color=>'#93c8ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10499219873104447)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'40'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESC_ARTICULO_OT'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DESC_ARTICULO_OT" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>40
,p_column_bg_color=>'#93c8ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10498030482104446)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'50'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_ARTICULO_MO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COD_ARTICULO_MO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>50
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10495680380104443)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'60'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESC_ARTICULO_MO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DESC_ARTICULO_MO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>60
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10498423812104446)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'70'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CANTIDAD'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("CANTIDAD" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>70
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10497220637104445)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'80'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MONTO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("MONTO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>80
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10497655788104445)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'90'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PRECIO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("PRECIO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>90
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10496403999104444)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'100'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CANTIDAD'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("CANTIDAD" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>100
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10496897500104445)
,p_report_id=>wwv_flow_imp.id(10106058708324489)
,p_name=>'110'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MONTO'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("MONTO" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>110
,p_column_bg_color=>'#ffe88c'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14110783791346932)
,p_plug_name=>'Datos'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8810327992104808)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_button_name=>'CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'LIMPIAR'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_button_css_classes=>'u-color-7-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8810297176104807)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_button_name=>'EJECUTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'EJECUTAR'
,p_button_css_classes=>'u-color-7-text'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8813668008104841)
,p_name=>'P37_TIPO_REP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8810403525104809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10092453830323931)
,p_name=>'P37_REPORTE_CLASE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_item_default=>'T'
,p_prompt=>'Tipo Reporte'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Todos;T,Resumen;R'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-none:margin-bottom-none:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14110832524346933)
,p_name=>'P37_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''(''||u.cod_usuario||'') ''|| p.nombre  nombre , u.cod_usuario',
'from usuarios u,',
'     personas p',
'where u.cod_empresa = ''1'' and cod_grupo in (''SERTEC'', ''SERREP'',''SERTAU'',''CALL'')',
'and   u.cod_persona= p.cod_persona'))
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14110916678346934)
,p_name=>'P37_FINALIZADO_POR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Finalizado Por'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''(''||u.cod_usuario||'') ''|| p.nombre  nombre , u.cod_usuario',
'from usuarios u,',
'     personas p',
'where u.cod_empresa = ''1'' and cod_grupo in (''SERTEC'', ''SERREP'',''SERTAU'',''CALL'')',
'and   u.cod_persona= p.cod_persona'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14111056277346935)
,p_name=>'P37_TECNICO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>unistr('T\00E9cnico ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  t.cod_tecnico R, t.cod_tecnico ||'' - ''||p.nombre D',
'  from vt_tecnicos t, personas p ',
' where t.cod_empresa = :P_COD_EMPRESA',
'   and t.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(14111196877346936)
,p_name=>'P37_COD_ORIGEN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ORIGEN||''-''||DESCRIPCION d, ',
'       COD_ORIGEN r ',
'  FROM VT_ORIGENES ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
' ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(14111283623346937)
,p_name=>'P37_ART_DES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Articulo Inicial'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ARTICULO||'' - ''||DESCRIPCION D,',
'       COD_ARTICULO R ',
'  FROM ST_ARTICULOS ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
' order by DESCRIPCION asc',
''))
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14111371001346938)
,p_name=>'P37_ART_HAS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Articulo Final'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ARTICULO||'' - ''||DESCRIPCION D,',
'       COD_ARTICULO R ',
'  FROM ST_ARTICULOS ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
' ',
' order by DESCRIPCION asc',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14111460050346939)
,p_name=>'P37_SERIE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Serie'
,p_pre_element_text=>'Orden de Trabajo :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14111570365346940)
,p_name=>'P37_NRO_ORDEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Numero'
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
 p_id=>wwv_flow_imp.id(14111622603346941)
,p_name=>'P37_FEC_CIERRE_INI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Periodo Fin de OT - DESDE:'
,p_placeholder=>'Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-md:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14111730026346942)
,p_name=>'P37_FEC_CIERRE_FIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14110783791346932)
,p_prompt=>'Periodo Fin de OT - HASTA:'
,p_placeholder=>'Hasta'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17827549756747707)
,p_validation_name=>'Validar Fecha Inicio '
,p_validation_sequence=>10
,p_validation=>'P37_FEC_CIERRE_INI'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe insertar un fecha de inicio'
,p_when_button_pressed=>wwv_flow_imp.id(8810297176104807)
,p_associated_item=>wwv_flow_imp.id(14111622603346941)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17827665625747708)
,p_validation_name=>'Validar Fecha Final'
,p_validation_sequence=>20
,p_validation=>'P37_FEC_CIERRE_FIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe insertar un fecha final'
,p_when_button_pressed=>wwv_flow_imp.id(8810297176104807)
,p_associated_item=>wwv_flow_imp.id(14111730026346942)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14112525763346950)
,p_name=>'Cambiar_Check_Ind_Todos'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_IND_TODOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8809636866104801)
,p_event_id=>wwv_flow_imp.id(14112525763346950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P37_IND_TODOS = ''S'' THEN ',
'   :P37_IND_CARCAZA_ROTA := ''N'';',
'   :P37_IND_CON_COSTO := ''N'';',
'   :P37_IND_INSTALACION := ''N'';',
'   :P37_IND_RECLAMO := ''N'';',
'   :P37_IND_RECLAMO_ENTR := ''N'';',
'END IF;'))
,p_attribute_02=>'P37_IND_TODOS'
,p_attribute_03=>'P37_IND_INSTALACION,P37_IND_RECLAMO,P37_IND_CON_COSTO,P37_IND_CARCAZA_ROTA,P37_IND_RECLAMO_ENTR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8809771607104802)
,p_name=>'Cambiar_Check''s_Ind'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_IND_INSTALACION,P37_IND_RECLAMO,P37_IND_CON_COSTO,P37_IND_CARCAZA_ROTA,P37_IND_RECLAMO_ENTR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8809846711104803)
,p_event_id=>wwv_flow_imp.id(8809771607104802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P37_IND_CARCAZA_ROTA = ''N''AND :P37_IND_CON_COSTO = ''N'' AND :P37_IND_INSTALACION = ''N'' AND :P37_IND_RECLAMO = ''N'' AND  :P37_IND_RECLAMO_ENTR = ''N'' THEN ',
'  :P37_IND_TODOS := ''S'';',
'  ELSE ',
'  :P37_IND_TODOS := ''N'';',
'  END IF;'))
,p_attribute_02=>'P37_IND_INSTALACION,P37_IND_RECLAMO,P37_IND_CON_COSTO,P37_IND_CARCAZA_ROTA,P37_IND_RECLAMO_ENTR'
,p_attribute_03=>'P37_IND_TODOS'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9713158510385217)
,p_name=>'Da_Cambiar_Fec_Cierre_Ini'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_FEC_CIERRE_INI'
,p_condition_element=>'P37_FEC_CIERRE_INI'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9713211503385218)
,p_event_id=>wwv_flow_imp.id(9713158510385217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_FEC_CIERRE_INI'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P37_FEC_CIERRE_INI IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P37_FEC_CIERRE_INI);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P37_FEC_CIERRE_INI'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10092224277323929)
,p_name=>'DA_Cambiar_Fec_Cierre_Fin'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_FEC_CIERRE_FIN'
,p_condition_element=>'P37_FEC_CIERRE_FIN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10092315606323930)
,p_event_id=>wwv_flow_imp.id(10092224277323929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_FEC_CIERRE_FIN'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P37_FEC_CIERRE_FIN IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P37_FEC_CIERRE_FIN);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P37_FEC_CIERRE_FIN'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8813726688104842)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Definir tipo de Reporte'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P37_TECNICO IN (''217'',''198'',''254'',''244'') THEN',
'  --VTORDTEC2',
'  :P37_TIPO_REP:=''VTORDTEC2'';',
'ELSE',
'    ',
'        IF  :P37_REPORTE_CLASE=''R'' THEN',
'          :P37_TIPO_REP :=''VTORDTECRES'';',
'         ELSIF :P37_REPORTE_CLASE=''T'' THEN',
'',
'                :P37_TIPO_REP:= ''VTORDTEC3'';',
'',
'          END IF;',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9608270467000515)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear Totalizador'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
' CURSOR CUR_TOTAL IS ',
' SELECT DISTINCT MONTO,',
'       SUM_MONTO,',
'       SUM_MO_MONTO_GARANTIA,',
'       SUM_MO_MONTO_PARTICULAR,',
'       MONTO_OT,',
'       PORCENTAJE_META_ADICIONAL,',
'       CANTIDAD_MINIMA_PORCENTAJE,',
'       PORCENTAJE_META_ADICIONAL2,',
'       CANTIDAD_MINIMA_PORCENTAJE2,',
'       MONTO_ADICIONAL,',
'       CF_MONTO_GAR,',
'       CF_MONTO_PAR,',
'       (MONTO_ADICIONAL + CF_MONTO_GAR + CF_MONTO_PAR)CF_COMISION',
'FROM(SELECT TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       FINALIZADO_POR,',
'       FEC_COMPROBANTE,',
'       FEC_CIERRE,',
'       COD_TECNICO,',
'       ARTIC_REPUESTO,',
'       DESC_REPUESTOS_ART,',
'       COD_ARTICULO_OT,',
'       DESC_ARTICULO_OT,',
'       NRO_ORDEN,',
'       COD_ARTICULO_MO,',
'       DESC_ARTICULO_MO,',
'       CANTIDAD,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       MONTO,',
'       SUM_MONTO,',
'       MONTO_PRESUPUESTO,',
'       RETIRADO,',
'       MO_MONTO_GARANTIA,',
'       SUM_MO_MONTO_GARANTIA,',
'       MO_MONTO_PARTICULAR,',
'       SUM_MO_MONTO_PARTICULAR,',
'       RE_MONTO_GARANTIA,',
'       RE_MONTO_PARTICULAR,',
'       MONTO_OT,',
'       PORCENTAJE_META_ADICIONAL,',
'       CANTIDAD_MINIMA_PORCENTAJE,',
'       PORCENTAJE_META_ADICIONAL2,',
'       CANTIDAD_MINIMA_PORCENTAJE2,',
'       DESCRIPCION,',
'       NVL(CASE WHEN SUM_MONTO> CMP2 THEN',
'         (round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )+ round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )*(PMA2/100))    ',
'         WHEN SUM_MONTO>CMP then',
'     (round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )+ round( nvl( SUM_MONTO, 0 ) * nvl( MONTO_OT, 0 ) , 0 )*(PMA/100))',
'    ',
'        END,0',
'        )MONTO_ADICIONAL,',
'        round(nvl( SUM_MO_MONTO_GARANTIA, 0 ) * nvl( MONTO_OT, 0 ))CF_MONTO_GAR,',
'        round(nvl( SUM_MO_MONTO_PARTICULAR, 0 ) * nvl( MONTO_OT, 0 ))CF_MONTO_PAR',
'   ',
'FROM(SELECT OT.TIP_COMPROBANTE,',
'       OT.SER_COMPROBANTE,',
'       OT.NRO_COMPROBANTE,',
'       OT.FINALIZADO_POR,',
'       OT.FEC_COMPROBANTE,',
'       OT.FEC_CIERRE,',
'       MO.COD_TECNICO,',
'       '' '' ARTIC_REPUESTO,',
'       '' '' DESC_REPUESTOS_ART,',
'       OT.COD_ARTICULO COD_ARTICULO_OT,',
'       AOT.DESCRIPCION DESC_ARTICULO_OT,',
'       1 NRO_ORDEN,',
'       ''MO'' COD_ARTICULO_MO,',
'       ''MANO DE OBRA'' DESC_ARTICULO_MO,',
'       SUM(MO.CANTIDAD) CANTIDAD,',
'       1 COD_MONEDA,',
'       1 TIP_CAMBIO,',
'       (DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)) MONTO,',
'       SUM(DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1))OVER(PARTITION BY MO.COD_TECNICO ORDER BY MO.COD_TECNICO)SUM_MONTO,',
'       ',
'       SUM(OT.TOT_REPUESTOS_CALL) MONTO_PRESUPUESTO,',
'       CASE',
'         WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'              NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'          ''RETIRADO''',
'         ELSE',
'          NULL',
'       END RETIRADO,',
'       ',
'       (CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END) MO_MONTO_GARANTIA,',
'       SUM(CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') = ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END)OVER (PARTITION BY MO.COD_TECNICO ORDER BY MO.COD_TECNICO)SUM_MO_MONTO_GARANTIA,',
'       (CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END) MO_MONTO_PARTICULAR,',
'       SUM(CASE',
'         WHEN NVL(OT.IND_GARANTIA, ''N'') <> ''S'' THEN',
'          DECODE(NVL(OT.IND_RECLAMO, ''N''), ''S'', 0, 1)',
'         ELSE',
'          0',
'       END)OVER(PARTITION BY MO.COD_TECNICO ORDER BY MO.COD_TECNICO) SUM_MO_MONTO_PARTICULAR,',
'       ',
'       0                            RE_MONTO_GARANTIA,',
'       0                            RE_MONTO_PARTICULAR,',
'       T.MONTO_OT,',
'       NVL(T.PORCENTAJE_META_ADICIONAL,0)||''%'' PORCENTAJE_META_ADICIONAL,',
'       T.PORCENTAJE_META_ADICIONAL PMA,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE,0)||''%'' CANTIDAD_MINIMA_PORCENTAJE,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE,0)CMP,',
'       NVL(T.PORCENTAJE_META_ADICIONAL2,0) ||''%'' PORCENTAJE_META_ADICIONAL2,',
'       T.PORCENTAJE_META_ADICIONAL2 PMA2,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE2,0)||''%'' CANTIDAD_MINIMA_PORCENTAJE2 ,',
'       NVL(CANTIDAD_MINIMA_PORCENTAJE2,0)CMP2,',
'       DECODE(NVL(MO.IND_RECLAMO,''N''),''S'',''RECLAMO'',NULL)DESCRIPCION',
'       ',
'',
'  FROM VT_ORDENES_TRABAJO    OT, --CABECERA',
'       VT_ORDENES_TRABAJO_MO MO, --MANO OBRA',
'       ST_ARTICULOS          AOT, ---ARTICULO',
'       ST_ARTICULOS          AMO, ---MANO OBRA',
'       VT_TECNICOS           T,',
'       PERSONAS              P',
'',
' WHERE OT.COD_EMPRESA = :P_COD_EMPRESA',
'      -- &P_LINEA_EMPRESA',
'   AND (OT.SER_COMPROBANTE = :P37_SERIE OR :P37_SERIE IS NULL)',
'   AND (OT.NRO_COMPROBANTE = :P37_NRO_ORDEN OR :P37_NRO_ORDEN IS NULL)',
'   AND (MO.COD_TECNICO = :P37_TECNICO OR :P37_TECNICO IS NULL)',
'      --     AND &P_LINEA_TECNICO',
'   --AND MO.COD_TECNICO IN  (''217'',''198'',''254'',''244'')',
'   AND (OT.FEC_CIERRE >= :P37_FEC_CIERRE_INI OR',
'       :P37_FEC_CIERRE_INI IS NULL)',
'   AND (OT.FEC_CIERRE <= :P37_FEC_CIERRE_FIN OR',
'       :P37_FEC_CIERRE_FIN IS NULL)',
'   AND (OT.COD_ARTICULO >= :P37_ART_DES OR',
'       :P37_ART_DES IS NULL)',
'   AND (OT.COD_ARTICULO <= :P37_ART_HAS OR',
'       :P37_ART_HAS IS NULL)',
'   AND (OT.COD_USUARIO = :P37_COD_USUARIO OR :P37_COD_USUARIO IS NULL)',
'   AND (OT.FINALIZADO_POR = :P37_FINALIZADO_POR OR :P37_FINALIZADO_POR IS NULL)',
'   AND (OT.COD_ORIGEN = :P37_COD_ORIGEN OR :P37_COD_ORIGEN IS NULL)',
'   AND OT.COD_EMPRESA = MO.COD_EMPRESA',
'   AND OT.TIP_COMPROBANTE = MO.TIP_COMPROBANTE',
'   AND OT.SER_COMPROBANTE = MO.SER_COMPROBANTE',
'   AND OT.NRO_COMPROBANTE = MO.NRO_COMPROBANTE',
'   AND NVL(OT.CERRADO, ''N'') = ''S''',
'   AND NVL(OT.ANULADO, ''N'') <> ''S''',
'   AND MO.COD_EMPRESA = T.COD_EMPRESA(+)',
'   AND MO.COD_TECNICO = T.COD_TECNICO(+)',
'   AND T.COD_PERSONA = P.COD_PERSONA(+)',
'   AND OT.COD_EMPRESA = AOT.COD_EMPRESA',
'   AND OT.COD_ARTICULO = AOT.COD_ARTICULO',
'   AND MO.COD_EMPRESA = AMO.COD_EMPRESA',
'   AND MO.COD_ARTICULO = AMO.COD_ARTICULO',
'',
' GROUP BY OT.TIP_COMPROBANTE,',
'          OT.SER_COMPROBANTE,',
'          OT.NRO_COMPROBANTE,',
'          OT.FINALIZADO_POR,',
'          OT.FEC_COMPROBANTE,',
'          OT.FEC_CIERRE,',
'          MO.COD_TECNICO,',
'          OT.COD_ARTICULO,',
'          AOT.DESCRIPCION,',
'          OT.IND_GARANTIA,',
'          ',
'          CASE',
'            WHEN NVL(OT.IND_ENTREGA, ''N'') = ''S'' OR',
'                 NVL(OT.IND_RETIRADO, ''N'') = ''S'' THEN',
'             ''RETIRADO''',
'            ELSE',
'             NULL',
'          END,',
'          T.MONTO_OT,',
'          T.PORCENTAJE_META_ADICIONAL,',
'          CANTIDAD_MINIMA_PORCENTAJE,',
'          T.PORCENTAJE_META_ADICIONAL2,',
'          CANTIDAD_MINIMA_PORCENTAJE2,',
'          IND_GARANTIA,',
'          OT.IND_RECLAMO,',
'          MO.IND_RECLAMO))where rownum = 1',
'',
'',
' ORDER BY 3 DESC;',
'',
' BEGIN',
'  APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''VTORDTEC2'');',
'        ',
'        FOR C IN CUR_TOTAL LOOP',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''VTORDTEC2'',',
'                                       P_C001            =>  ''Importe por OT'',',
'                                       P_C002            =>  TO_CHAR(C.MONTO_OT,''999G999G999G999G999G999G990''),',
'                                       P_C003            =>  NULL,',
'                                       P_C004            =>  ''Total Servicios'',',
'                                       P_C005            =>  C.SUM_MO_MONTO_GARANTIA,',
'                                       p_C006            =>  C.SUM_MO_MONTO_PARTICULAR,',
'                                       P_C007            =>  C.SUM_MONTO);',
'',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''VTORDTEC2'',',
'                                       P_C001            =>  ''Cant. Min. p/Porc. Adicional 1'',',
'                                       P_C002            =>  C.PORCENTAJE_META_ADICIONAL,',
'                                       P_C003            =>  C.CANTIDAD_MINIMA_PORCENTAJE,',
'                                       P_C004            =>  ''Monto Adicional'',',
'                                       P_C005            =>  NULL,',
'                                       p_C006            =>  NULL,',
'                                       P_C007            =>  TO_CHAR(C.MONTO_ADICIONAL,''999G999G999G999G999G999G990''));',
'            ',
'            ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''VTORDTEC2'',',
'                                       P_C001            =>  ''Cant. Min. p/Porc. Adicional 2'',',
'                                       P_C002            =>  C.PORCENTAJE_META_ADICIONAL2,',
'                                       P_C003            =>  C.CANTIDAD_MINIMA_PORCENTAJE2,',
'                                       P_C004            =>  ''Total a Cobrar'',',
'                                       P_C005            =>  TO_CHAR(C.CF_MONTO_GAR,''999G999G999G999G999G999G990''),',
'                                       p_C006            =>  TO_CHAR(C.CF_MONTO_PAR,''999G999G999G999G999G999G990''),',
'                                       P_C007            =>  TO_CHAR(C.CF_COMISION,''999G999G999G999G999G999G990''));',
'',
'                                      ',
'        END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P37_TIPO_REP'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'VTORDTEC2'
);
wwv_flow_imp.component_end;
end;
/
