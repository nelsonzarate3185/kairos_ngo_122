prompt --application/pages/page_00258
begin
--   Manifest
--     PAGE: 00258
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
 p_id=>258
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMOTOBRA - OBRAS'
,p_alias=>'SMOTOBRA'
,p_page_mode=>'MODAL'
,p_step_title=>'SMOTOBRA'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--inline.ui-dialog--popup{',
'    width: 1100 px !important;',
'}',
'',
'',
'#arriba{ background-color: #cdd5dd;}',
'',
'',
'.apex-item-single-checkbox{ padding-right: 0  !important; } ',
'',
'.t-Form-label{',
'    color:  #003A85 !important;',
'    font-weight: bold !important;',
'    }',
'',
'    ',
'#botones, #abajo { background-color: #e6e6e6 !important; }',
'',
'',
'td[headers="Imagen"] img  { ',
'   display: block; ',
'   margin-left: auto;',
'   margin-right: auto;',
'   width: 100px; ',
'   height:100px;    ',
'   border: 1px solid #999; ',
'   padding: 4px; ',
'   background: #f6f6f6; ',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241008100640'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65269472202719701)
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
 p_id=>wwv_flow_imp.id(65716240928241749)
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
 p_id=>wwv_flow_imp.id(66768093131645403)
,p_plug_name=>'SMOBRCOSTOS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  O.TIP_COMPROBANTE TIP,',
'        O.SER_COMPROBANTE SER,',
'        O.NRO_COMPROBANTE NUMERO,',
'        O.COD_EQUIPO EQUIPO,',
'        O.CANT_EQUI ,',
'        R.COD_ARTICULO CODIGO,',
'        A.DESCRIPCION  MATERIAL,',
'        (R.FACTOR * O.CANT_PART)CANT,',
'        precio(A.COD_ARTICULO,0)PRECIO',
'FROM  SM_OBRA_EQUIPOS O,',
'      SM_RELACION_EQUIPOS R,',
'      ST_ARTICULOS A',
'WHERE O.COD_EMPRESA = :P_COD_EMPRESA',
'AND   O.TIP_COMPROBANTE = :P258_TIP_COMPROBANTE',
'AND   O.SER_COMPROBANTE = :P258_SER_COMPROBANTE',
'AND   O.NRO_COMPROBANTE = :P258_NRO_COMPROBANTE',
'AND   O.COD_EMPRESA = R.COD_EMPRESA',
'AND   O.COD_EQUIPO = R.COD_EQUIPO',
'AND   O.COD_PARTE = R.COD_PARTE',
'AND   R.COD_EMPRESA = A.COD_EMPRESA',
'AND   R.COD_ARTICULO = A.COD_ARTICULO',
'AND   :P258_INDICADOR_SMOBRCOSTOS = ''1'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE,P258_INDICADOR_SMOBRCOSTOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SMOBRCOSTOS'
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
 p_id=>wwv_flow_imp.id(66768132596645404)
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
,p_internal_uid=>66768132596645404
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768214715645405)
,p_db_column_name=>'TIP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768312283645406)
,p_db_column_name=>'SER'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768443706645407)
,p_db_column_name=>'NUMERO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Numero'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768578622645408)
,p_db_column_name=>'EQUIPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Equipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768693685645409)
,p_db_column_name=>'CANT_EQUI'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cant Equi'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768750809645410)
,p_db_column_name=>'CODIGO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768890983645411)
,p_db_column_name=>'MATERIAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Material'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66768948453645412)
,p_db_column_name=>'CANT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66769078270645413)
,p_db_column_name=>'PRECIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66799187505992564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'667992'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP:SER:NUMERO:EQUIPO:CANT_EQUI:CODIGO:MATERIAL:CANT:PRECIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66769130500645414)
,p_plug_name=>'CPROBRAS'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c.tip_ent_sal tipo, ',
'        c.ser_ent_sal ser,',
'        c.num_ent_sal nro,',
'        c.fec_ent_sal fecha,',
'        ''Retito de Materiales para Obras (Dep.Repuestos)'' concepto,',
'        c.OBSERVACION,',
'        ROUND(NVL(sum(d.cantidad * d.costo),0),0)IMPORTE,',
'        ROUND( (NVL(sum(d.cantidad * d.costo),0) /1.1)   ,0)IMPORTE_GRV,',
'        ROUND( (NVL(sum(d.cantidad * d.costo),0) /11 )  ,0)IMPORTE_IVA,',
'        c.tip_comprobante_ref tipo_obra,',
'        c.ser_comprobante_ref ser_obra,',
'        to_char(c.nRO_comprobante_ref) nro_obra',
'',
'FROM inv.st_entsal_cab c,',
'	 inv.st_entsal_det d',
'',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'--AND   c.tip_comprobante_ref = nvl (:P258_TIP_COMPROBANTE,''OBR'')',
'--AND   c.ser_comprobante_ref = NVL(:P258_SER_COMPROBANTE,''A'')',
'AND   (c.nro_comprobante_ref = :P258_NRO_COMPROBANTE OR :P258_NRO_COMPROBANTE IS NULL)',
'AND   c.cod_empresa = d.cod_empresa',
'AND   c.num_ent_sal = d.num_ent_sal',
'AND   c.ser_ent_sal = d.ser_ent_sal',
'AND   c.tip_ent_sal = d.tip_ent_sal ',
'--AND   (c.fec_ent_sal >= :P_FECHA_INI OR :P_FECHA_INI IS NULL)',
'--AND   (c.fec_ent_sal <= :P_FECHA_FIN OR :P_FECHA_FIN IS NULL)',
'AND   :P258_INDICADOR_CPROBRAS = ''1''',
'',
'GROUP BY c.num_ent_sal,',
'         c.ser_ent_sal,',
'         c.fec_ent_sal,',
'         c.OBSERVACION,',
'         c.tip_ent_sal,',
'         c.tip_comprobante_ref,',
'         c.ser_comprobante_ref ,',
'         to_char (c.nRO_comprobante_ref) ',
'',
'UNION ALL',
'',
'',
'SELECT c.tip_comprobante,',
'       c.ser_comprobante,',
'       c.num_comprobante,',
'       c.fec_comprobante,',
'       e.descripcion concepto,',
'       ltrim( rtrim( nvl(NOM_RAZ_SOC_PROV,nvl( pe.nombre, pe.nomb_fantasia )) ) ),',
'       c.tot_comprobante * nvl(c.tip_cambio,1),',
'       c.tot_grabada * nvl(c.tip_cambio,1),',
'       c.tot_iva * nvl(c.tip_cambio,1),  ',
'       c.tip_comprobante_ref tipo_obra,',
'       c.ser_comprobante_ref ser_obra,',
'       to_char(c.num_comprobante_ref) nro_obra',
'',
'FROM CP_COMPROBANTES_CABECERA c,',
'     cp_conceptos e ,',
'     cm_proveedores pr, ',
'     personas pe',
'',
'WHERE c.cod_empresa= :P_COD_EMPRESA',
'--AND   c.tip_comprobante_ref= NVL(:P258_TIP_COMPROBANTE,''OBR'')',
'--AND   c.ser_comprobante_ref= NVL(:P258_SER_COMPROBANTE,''A'')',
'AND   (c.num_comprobante_ref = :P258_NRO_COMPROBANTE OR :P258_NRO_COMPROBANTE IS NULL)',
'AND   c.cod_empresa = e.cod_empresa',
'AND   c.cod_concepto = e.cod_concepto',
'AND   pr.cod_empresa = c.cod_empresa',
'AND   pr.cod_proveedor = c.cod_proveedor',
'AND   pr.cod_persona = pe.cod_persona',
'--AND   (c.fec_comprobante>= :P_FECHA_INI OR :P_FECHA_INI IS NULL)',
'--AND   (c.fec_comprobante<= :P_FECHA_FIN OR :P_FECHA_FIN IS NULL)',
'AND   :P258_INDICADOR_CPROBRAS = ''1''',
'',
'UNION ALL',
'',
'SELECT c.tip_comprobante,',
'       c.ser_comprobante,',
'       c.nro_comprobante,',
'       c.fec_comprobante,',
'       c.observacion concepto,',
'        ltrim( rtrim( nvl(NOM_RAZ_SOC_PROV,nvl( pe.nombre, pe.nomb_fantasia )) ) ),',
'       c.tot_comprobante * nvl(c.tip_cambio,1),',
'       c.tot_gravadas * nvl(c.tip_cambio,1),',
'       c.tot_iva * nvl(c.tip_cambio,1),  ',
'        c.tip_obra tipo_obra,',
'        c.ser_obra ser_obra,',
'        to_char(c.nro_obra) nro_obra',
'',
'FROM cm_compras_cabecera c, ',
'     cm_proveedores pr, ',
'     personas pe',
'',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'--AND   c.tip_obra= NVL(:p_tip_comprobante_ref,''OBR'')',
'--AND   c.ser_obra= NVL(:P_ser_comprobante_ref,''A'')',
'AND   (c.nro_obra= :P258_NRO_COMPROBANTE OR :P258_NRO_COMPROBANTE IS NULL)',
' ',
'AND   pr.cod_empresa = c.cod_empresa',
'AND   pr.cod_proveedor = c.cod_proveedor',
'AND   pr.cod_persona = pe.cod_persona',
'--AND   (c.fec_comprobante>= :P_FECHA_INI OR :P_FECHA_INI IS NULL)',
'--AND   (c.fec_comprobante<= :P_FECHA_FIN OR :P_FECHA_FIN IS NULL)',
'AND   :P258_INDICADOR_CPROBRAS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE,P258_INDICADOR_CPROBRAS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CPROBRAS'
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
 p_id=>wwv_flow_imp.id(66769271183645415)
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
,p_internal_uid=>66769271183645415
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66769484086645417)
,p_db_column_name=>'SER'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770291953645425)
,p_db_column_name=>'TIPO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770345061645426)
,p_db_column_name=>'NRO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Nro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770436108645427)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770572308645428)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770654636645429)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770733650645430)
,p_db_column_name=>'IMPORTE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770881738645431)
,p_db_column_name=>'IMPORTE_GRV'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Importe Grv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66770917925645432)
,p_db_column_name=>'IMPORTE_IVA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Importe Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771074762645433)
,p_db_column_name=>'TIPO_OBRA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Tipo Obra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771160291645434)
,p_db_column_name=>'SER_OBRA'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Ser Obra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771257550645435)
,p_db_column_name=>'NRO_OBRA'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Nro Obra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66799734512992573)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'667998'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER:TIPO:NRO:FECHA:CONCEPTO:OBSERVACION:IMPORTE:IMPORTE_GRV:IMPORTE_IVA:TIPO_OBRA:SER_OBRA:NRO_OBRA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66771354117645436)
,p_plug_name=>'CPROBRFACPAG'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c.tip_ent_sal tipo, ',
'        c.ser_ent_sal ser,',
'        c.num_ent_sal nro,',
'        c.fec_ent_sal fecha,',
'        ''Retito de Materiales para Obras (Dep.Repuestos)'' concepto,',
'        c.OBSERVACION,',
'        ROUND(NVL(sum(d.cantidad * d.costo),0),0)IMPORTE,',
'        ROUND( (NVL(sum(d.cantidad * d.costo),0) /1.1)   ,0)IMPORTE_GRV,',
'        ROUND( (NVL(sum(d.cantidad * d.costo),0) /11 )  ,0)IMPORTE_IVA,',
'        c.tip_comprobante_ref tipo_obra,',
'        c.ser_comprobante_ref ser_obra,',
'        to_char(c.nRO_comprobante_ref) nro_obra,',
'        0 pago',
'',
'FROM    inv.st_entsal_cab c,',
'	    inv.st_entsal_det d',
'',
'WHERE   c.cod_empresa= :P_COD_EMPRESA',
'--AND     c.tip_comprobante_ref= nvl( :p_tip_comprobante_ref,''OBR'')',
'--AND     c.ser_comprobante_ref= NVL(:P_ser_comprobante_ref,''A'')',
'AND     (c.nro_comprobante_ref= :P258_NRO_COMPROBANTE OR :P258_NRO_COMPROBANTE IS NULL)',
'AND     c.cod_empresa=d.cod_empresa',
'AND     c.num_ent_sal=d.num_ent_sal',
'AND     c.ser_ent_sal=d.ser_ent_sal',
'AND     c.tip_ent_sal=d.tip_ent_sal ',
'--AND     (c.fec_ent_sal >= :P_FECHA_INI OR :P_FECHA_INI IS NULL)',
'--AND     (c.fec_ent_sal <= :P_FECHA_FIN OR :P_FECHA_FIN IS NULL)',
'AND   :P258_INDICADOR_CPROBRFACPAG = ''1''',
'',
'GROUP BY c.num_ent_sal,',
'         c.ser_ent_sal,',
'         c.fec_ent_sal,',
'         c.OBSERVACION,',
'         c.tip_ent_sal,',
'         c.tip_comprobante_ref,',
'         c.ser_comprobante_ref,',
'         to_char(c.nRO_comprobante_ref) ',
'',
'UNION ALL',
'',
'SELECT   c.tip_comprobante,',
'         c.ser_comprobante,',
'         c.num_comprobante,',
'         c.fec_comprobante,',
'         e.descripcion concepto,',
'         ltrim( rtrim( nvl(NOM_RAZ_SOC_PROV,nvl( pe.nombre, pe.nomb_fantasia )) ) ),',
'         c.tot_comprobante,',
'         c.tot_grabada,',
'         c.tot_iva, ',
'         c.tip_comprobante_ref tipo_obra,',
'         c.ser_comprobante_ref ser_obra,',
'         to_char(c.num_comprobante_ref) nro_obra,',
'         (SELECT SUM(TOT_CUOTA-TOT_SALDO) ',
'	      FROM cp_CUOTAS ccc',
'	      WHERE ccc.cod_empresa = c.cod_empresa',
'          AND   ccc.num_comprobante =c.num_comprobante',
'          AND   ccc.tip_comprobante = c.tip_comprobante',
'          AND   ccC.SER_COMPROBANTE = c.SER_COMPROBANTE',
'          AND   (ccc.TOT_CUOTA - ccc.TOT_SALDO) > 0)Pago',
'',
'          FROM CP_COMPROBANTES_CABECERA c,',
'               cp_conceptos e,',
'               cm_proveedores pr, ',
'               personas pe',
'          ',
'          WHERE c.cod_empresa = :P_cod_empresa',
'	      --AND   c.tip_comprobante_ref= NVL(:p_tip_comprobante_ref,''OBR'')',
'	      --AND   c.ser_comprobante_ref= NVL(:P_ser_comprobante_ref,''A'')',
'	      AND   (c.num_comprobante_ref= :P258_NRO_COMPROBANTE OR :P258_NRO_COMPROBANTE IS NULL)',
'          AND   c.cod_empresa = e.cod_empresa',
'          AND   c.cod_concepto = e.cod_concepto',
'          AND   pr.cod_empresa = c.cod_empresa',
'          AND   pr.cod_proveedor = c.cod_proveedor',
'          AND   pr.cod_persona = pe.cod_persona',
'          --AND ( c.fec_comprobante>= :P_FECHA_INI OR :P_FECHA_INI IS NULL)',
'          --AND ( c.fec_comprobante<= :P_FECHA_FIN OR :P_FECHA_FIN IS NULL)',
'          AND   :P258_INDICADOR_CPROBRFACPAG = ''1'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE,P258_INDICADOR_CPROBRFACPAG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CPROBRFACPAG'
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
 p_id=>wwv_flow_imp.id(66771463052645437)
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
,p_internal_uid=>66771463052645437
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771517043645438)
,p_db_column_name=>'SER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771632675645439)
,p_db_column_name=>'TIPO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771758917645440)
,p_db_column_name=>'NRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771864039645441)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66771987069645442)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772011047645443)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772169608645444)
,p_db_column_name=>'IMPORTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772278530645445)
,p_db_column_name=>'IMPORTE_GRV'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Importe Grv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772336410645446)
,p_db_column_name=>'IMPORTE_IVA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Importe Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772408378645447)
,p_db_column_name=>'TIPO_OBRA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo Obra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772580137645448)
,p_db_column_name=>'SER_OBRA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ser Obra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772658522645449)
,p_db_column_name=>'NRO_OBRA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Obra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66772791775645450)
,p_db_column_name=>'PAGO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pago'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66800393945992604)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'668004'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER:TIPO:NRO:FECHA:CONCEPTO:OBSERVACION:IMPORTE:IMPORTE_GRV:IMPORTE_IVA:TIPO_OBRA:SER_OBRA:NRO_OBRA:PAGO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66891490816605402)
,p_plug_name=>'ORDENES'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>1060
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66891509300605403)
,p_plug_name=>'Proyecto'
,p_parent_plug_id=>wwv_flow_imp.id(66891490816605402)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892064330605408)
,p_plug_name=>'IZQUIERDA_TOP'
,p_parent_plug_id=>wwv_flow_imp.id(66891509300605403)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892114790605409)
,p_plug_name=>'DERECHA_TOP'
,p_parent_plug_id=>wwv_flow_imp.id(66891509300605403)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892293933605410)
,p_plug_name=>'ARRIBA'
,p_region_name=>'arriba'
,p_parent_plug_id=>wwv_flow_imp.id(66892114790605409)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892309304605411)
,p_plug_name=>'ABAJO'
,p_region_name=>'abajo'
,p_parent_plug_id=>wwv_flow_imp.id(66892114790605409)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892476872605412)
,p_plug_name=>'BOTONES'
,p_region_name=>'botones'
,p_parent_plug_id=>wwv_flow_imp.id(66891509300605403)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892540691605413)
,p_plug_name=>unistr('T\00C9CNICOS')
,p_parent_plug_id=>wwv_flow_imp.id(66891509300605403)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       seq_id SEQ_ID_TECNICO,',
'       c001 COD_PROVEEDOR,',
'       c002 TIPO,',
'       c003 OBSERVACION,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''TECNICOS''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P258_INDICADOR_REPORT_TECNICOS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_INDICADOR_REPORT_TECNICOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('T\00C9CNICOS')
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
 p_id=>wwv_flow_imp.id(66895853223605446)
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
,p_internal_uid=>66895853223605446
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
 p_id=>wwv_flow_imp.id(66895977388605447)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(95660564946292445)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66896085443605448)
,p_db_column_name=>'TIPO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66896152942605449)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67624757888389721)
,p_db_column_name=>'EDITAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_EDITAR_TECNICO'',#SEQ_ID_TECNICO#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67624836149389722)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_ELIMINAR_TECNICO'',#SEQ_ID_TECNICO#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67624998944389723)
,p_db_column_name=>'SEQ_ID_TECNICO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seq Id Tecnico'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67560244263223994)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'675603'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PROVEEDOR:TIPO:OBSERVACION:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67622782879389701)
,p_plug_name=>unistr('CREAR/EDITAR T\00C9CNICO')
,p_parent_plug_id=>wwv_flow_imp.id(66892540691605413)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66892611932605414)
,p_plug_name=>'ARTICULOS/FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(66891509300605403)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    ',
'          seq_id SEQ_ID_ARTICULO,',
'          c001 COD_ARTICULO, ',
'          c002 TIP_FACTURA,',
'          c003 SER_FACTURA,',
'          c004 NRO_FACTURA,',
'          NULL EDITAR,',
'          NULL ELIMINAR',
'                  ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ARTICULOS''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P258_INDICADOR_REPORT_ART = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_INDICADOR_REPORT_ART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ARTICULOS/FACTURAS'
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
 p_id=>wwv_flow_imp.id(67627303414389747)
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
,p_internal_uid=>67627303414389747
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67627413266389748)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67627521359389749)
,p_db_column_name=>'TIP_FACTURA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67627677498389750)
,p_db_column_name=>'SER_FACTURA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67815436033427401)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67815580305427402)
,p_db_column_name=>'EDITAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_EDITAR_ARTICULO'',#SEQ_ID_ARTICULO#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67815607826427403)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_ELIMINAR_ARTICULO'',#SEQ_ID_ARTICULO#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67815708544427404)
,p_db_column_name=>'SEQ_ID_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Seq Id Articulo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67839326956569067)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678394'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:TIP_FACTURA:SER_FACTURA:NRO_FACTURA:EDITAR:ELIMINAR:SEQ_ID_ARTICULO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67816789635427414)
,p_plug_name=>unistr('CREAR/EDITAR ART\00CDCULO')
,p_parent_plug_id=>wwv_flow_imp.id(66892611932605414)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94030986435281208)
,p_plug_name=>'Valores a Facturar'
,p_parent_plug_id=>wwv_flow_imp.id(66891509300605403)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92976358394193149)
,p_plug_name=>unistr('Descripci\00F3n / Precio del c\00F3digo a facturar')
,p_parent_plug_id=>wwv_flow_imp.id(94030986435281208)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66891616813605404)
,p_plug_name=>'Agenda'
,p_parent_plug_id=>wwv_flow_imp.id(66891490816605402)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       FECHA,',
'       PORC_AVANCE,',
'       ESTADO,',
'       OBSERVACION,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID ROW_ID_AGENDA',
'',
'FROM  SM_OBRA_AGENDA',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND   NRO_COMPROBANTE = :P258_NRO_COMPROBANTE',
'AND   :P258_INDICADOR_REPORT_AGENDA = ''1''',
'',
'/*SELECT    ',
'          seq_id SEQ_ID_AGENDA,',
'          c001 FECHA, ',
'          c002 PORC_AVANCE,',
'          c003 ESTADO,',
'          c004 OBSERVACION,',
'          NULL EDITAR,',
'          NULL ELIMINAR',
'                                    ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''AGENDA''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P258_INDICADOR_REPORT_AGENDA = ''1'';*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_NRO_COMPROBANTE,P_COD_EMPRESA,P258_INDICADOR_REPORT_AGENDA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Agenda'
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
 p_id=>wwv_flow_imp.id(68509807705865403)
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
,p_internal_uid=>68509807705865403
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68510111211865406)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(68621087078088632)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68510235435865407)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899726797307113)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899808213307114)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899955870307115)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90900064046307116)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90900116103307117)
,p_db_column_name=>'FECHA'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90900224368307118)
,p_db_column_name=>'PORC_AVANCE'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Porc Avance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90900785762307123)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_EDITAR_AGENDA'',''#ROW_ID_AGENDA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90900873754307124)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_ELIMINAR_AGENDA'',''#ROW_ID_AGENDA#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90900922779307125)
,p_db_column_name=>'ROW_ID_AGENDA'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Row Id Agenda'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(68564301019919387)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'685644'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:PORC_AVANCE:ESTADO:OBSERVACION:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68071581635884827)
,p_plug_name=>'CREAR/EDITAR AGENDA'
,p_parent_plug_id=>wwv_flow_imp.id(66891616813605404)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66891745513605405)
,p_plug_name=>'Gastos'
,p_parent_plug_id=>wwv_flow_imp.id(66891490816605402)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68513272574865437)
,p_plug_name=>'FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(66891745513605405)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NRO_FACTURA,',
'                             FECHA_FACTURA,',
'                             COD_PROVEEDOR,',
'                             MONTO,',
'                             COD_USUARIO,',
'                             FECHA_ALTA,',
'                             ROWID ROW_ID,',
'                             NULL EDITAR,',
'                             NULL ELIMINAR,',
'                             NULL SOLICITAR_PAGO',
'FROM    SM_OBRA_FACT_PROV',
'WHERE   COD_EMPRESA = :P_COD_EMPRESA',
'AND     NRO_COMPROBANTE = :P258_NRO_COMPROBANTE',
'AND :P258_INDICADOR_REPORT_FACTURA = ''1''',
'',
'',
'/*SELECT    ',
'          seq_id SEQ_ID_FACTURA,',
'          c001  NRO_FACTURA,',
'          d001  FECHA_FACTURA,',
'          c002  COD_PROVEEDOR,',
'          c003  MONTO,',
'          c004  COD_USUARIO,',
'          d002  FECHA_ALTA,',
'          NULL EDITAR,',
'          NULL ELIMINAR,',
'          NULL SOLICITAR_PAGO',
'                                    ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''FACTURAS''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P258_INDICADOR_REPORT_FACTURA = ''1'';*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_INDICADOR_REPORT_FACTURA,P_COD_EMPRESA,P258_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FACTURAS'
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
 p_id=>wwv_flow_imp.id(69366919870237046)
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
,p_internal_uid=>69366919870237046
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69367127601237048)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69367215798237049)
,p_db_column_name=>'FECHA_FACTURA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Factura'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69367354504237050)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(67776624688109619)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69599556016997302)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69599625979997303)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90898932481307105)
,p_db_column_name=>'MONTO'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899058782307106)
,p_db_column_name=>'ROW_ID'
,p_display_order=>90
,p_column_identifier=>'L'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899171282307107)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_EDITAR_FACTURA'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899222602307108)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_ELIMINAR_FACTURA'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90899332355307109)
,p_db_column_name=>'SOLICITAR_PAGO'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Solicitar Pago'
,p_column_link=>'javascript:$s(''P258_SEQ_ID_PAGO_FACTURA'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-credit-card"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69615839493000195)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'696159'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_FACTURA:FECHA_FACTURA:COD_PROVEEDOR:COD_USUARIO:FECHA_ALTA:MONTO:EDITAR:ELIMINAR:SOLICITAR_PAGO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69364049249237017)
,p_plug_name=>'CREAR/EDITAR FACTURA'
,p_parent_plug_id=>wwv_flow_imp.id(68513272574865437)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83793506479167938)
,p_plug_name=>'SOLICITUD DE PAGO'
,p_parent_plug_id=>wwv_flow_imp.id(68513272574865437)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68513457088865439)
,p_plug_name=>'COMPROBANTES'
,p_parent_plug_id=>wwv_flow_imp.id(66891745513605405)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIPO,',
'       TIP_DOC,',
'       SER_DOC,',
'       NRO_DOC,',
'       FEC_DOC,',
'       TOTAL',
'       ',
'FROM VW_OBRAS_COMPROBANTES',
'WHERE NRO_OBRA = :P258_NRO_COMPROBANTE',
'--AND :P258_INDICADOR_REPORT_COMPROB = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_NRO_COMPROBANTE,P258_INDICADOR_REPORT_COMPROB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COMPROBANTES'
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
 p_id=>wwv_flow_imp.id(78485982149266144)
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
,p_internal_uid=>78485982149266144
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78486040598266145)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78486141765266146)
,p_db_column_name=>'TIP_DOC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Documento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78486286812266147)
,p_db_column_name=>'SER_DOC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78486357849266148)
,p_db_column_name=>'NRO_DOC'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Documento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78486449594266149)
,p_db_column_name=>'FEC_DOC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78486502405266150)
,p_db_column_name=>'TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79886227842656556)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'798863'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:TIP_DOC:SER_DOC:NRO_DOC:FEC_DOC:TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66891896756605406)
,p_plug_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(66891490816605402)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    ',
'        c001 NOMBRE,',
'        c002 EMPRESA,',
'        d001 FEC_LLAMADA,',
'        c003 hora,',
'        c004 cod_motivo,',
'        c005 desc_motivo,',
'        c006 OBSERVACION,',
'        c007 cod_usuario,',
'        c008 calificacion',
'                                   ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''LLAMADAS''',
'--AND nvl(c020, ''O'') <> ''B''',
'AND :P258_INDICADOR_REP_SEGUIMIENTO = ''1''',
'ORDER BY d001, c003;   ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_INDICADOR_REP_SEGUIMIENTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimiento'
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
 p_id=>wwv_flow_imp.id(71132893797280407)
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
,p_internal_uid=>71132893797280407
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133042577280409)
,p_db_column_name=>'NOMBRE'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133190809280410)
,p_db_column_name=>'EMPRESA'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133207460280411)
,p_db_column_name=>'FEC_LLAMADA'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Fec Llamada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
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
 p_id=>wwv_flow_imp.id(71133398872280412)
,p_db_column_name=>'HORA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133466166280413)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(71217043468438223)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133577903280414)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Desc Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133619629280415)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133753633280416)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71133860193280417)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Calificacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(71202645346179329)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'712027'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CALIFICACION:COD_MOTIVO:COD_USUARIO:DESC_MOTIVO:EMPRESA:FEC_LLAMADA:HORA:NOMBRE:OBSERVACION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71133985334280418)
,p_plug_name=>'CREAR  SEGUIMIENTO'
,p_parent_plug_id=>wwv_flow_imp.id(66891896756605406)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67625268549389726)
,p_plug_name=>'SEQ ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67625322212389727)
,p_plug_name=>'SEQ ID TECNICOS'
,p_parent_plug_id=>wwv_flow_imp.id(67625268549389726)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68071202761884824)
,p_plug_name=>'SEQ ID ARTICULOS'
,p_parent_plug_id=>wwv_flow_imp.id(67625268549389726)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68071387019884825)
,p_plug_name=>'SEQ ID AGENDA'
,p_parent_plug_id=>wwv_flow_imp.id(67625268549389726)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69363789273237014)
,p_plug_name=>'SEQ ID FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(67625268549389726)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101170044281670823)
,p_plug_name=>unistr('SELECCIONAR UBICACI\00D3N')
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1070
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101170256721670825)
,p_plug_name=>'MAPA'
,p_parent_plug_id=>wwv_flow_imp.id(101170044281670823)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25, -57'
,p_attribute_02=>'6'
,p_attribute_03=>'400'
,p_attribute_04=>'P258_COORDS'
,p_attribute_05=>'12'
,p_attribute_07=>'N'
,p_attribute_11=>'P258_ADRESS'
,p_attribute_12=>'N'
,p_attribute_17=>'auto'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175434283880727050)
,p_plug_name=>'VISOR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175430270295727010)
,p_plug_name=>'ARCHIVOS'
,p_parent_plug_id=>wwv_flow_imp.id(175434283880727050)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SEQ_ID_SEGUIMIENTO,',
'       C001 COD_EMPRESA,',
'       C002 TIP_COMPROBANTE,',
'       C003 SER_COMPROBANTE,',
'       C004 NRO_COMPROBANTE,',
'       C005 ID_FILE,',
'       C006 FILE_NAME,',
'       C007 DIR_NAME, ',
'       C008 DIRECTORIO, ',
'       C009 MYMETYPE,',
'       DBMS_LOB.GETLENGTH(BLOB001)  imagen,',
'       DBMS_LOB.GETLENGTH(BLOB001)  descargar,',
'       C021 ROW_ID,',
'       NULL CARGAR_IMAGEN/*,',
'       NULL VER_IMAGEN,',
'       ',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       NULL DETALLES',
'       */',
'FROM  APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ARCHIVOS_OBRAS''',
'----AND   nvl(c020, ''O'') <> ''B''',
'ORDER BY SEQ_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ARCHIVOS'
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
 p_id=>wwv_flow_imp.id(176436016752080817)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>176436016752080817
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436197340080818)
,p_db_column_name=>'SEQ_ID_SEGUIMIENTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Seguimiento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436265732080819)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436303066080820)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436443586080821)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436575776080822)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436677185080823)
,p_db_column_name=>'ID_FILE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Id File'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436723807080824)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Archivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436808402080825)
,p_db_column_name=>'DIR_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dir Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176436926898080826)
,p_db_column_name=>'DIRECTORIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Directorio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176437003073080827)
,p_db_column_name=>'MYMETYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Mymetype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176437125589080828)
,p_db_column_name=>'IMAGEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'ADJUNTO'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:VW_OBRAS_ARCHIVOS:FILE_BLOB:ID_FILE::::::::'
,p_static_id=>'Imagen'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176437235289080829)
,p_db_column_name=>'ROW_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176437314619080830)
,p_db_column_name=>'CARGAR_IMAGEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Desc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:VW_OBRAS_ARCHIVOS:FILE_BLOB:ID_FILE::::::inline:+:'
,p_static_id=>'desc'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176437655475080833)
,p_db_column_name=>'DESCARGAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Descargar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(176475017105993583)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1764751'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID_SEGUIMIENTO:COD_EMPRESA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:ID_FILE:FILE_NAME:DIR_NAME:DIRECTORIO:MYMETYPE:IMAGEN:ROW_ID:CARGAR_IMAGEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176434627085080803)
,p_plug_name=>'VISUALIZAR'
,p_parent_plug_id=>wwv_flow_imp.id(175434283880727050)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69363682381237013)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(68513272574865437)
,p_button_name=>'P258_BOTON_AGREGAR_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Factura'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67816079293427407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66892611932605414)
,p_button_name=>'P258_BOTON_AGREGAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Agregar Art\00EDculo')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128532422781125320)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'Nuevo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Nuevo'
,p_button_redirect_url=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:CR,258:P258_NRO_COMPROBANTE_RECIBIDO:'
,p_icon_css_classes=>'fa-window-plus'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68069034515884802)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_SEGUIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Seguimiento'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-bg u-color-43-text u-color-45-border'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66892792164605415)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_ANTEPROYECTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anteproyecto'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66893172271605419)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_APROBAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar Ppto.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66892936663605417)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_MODIFICAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modificar Ppto.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66893200330605420)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar Ppto.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66892849471605416)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_ANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular Obra'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66893054720605418)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Concluir Obra'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66893355679605421)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(66892476872605412)
,p_button_name=>'P258_BOTON_ENTREGA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70533585985217047)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_button_name=>'P258_BOTON_GUARDAR_PROYECTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Proyecto'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-31-bg u-warning-text'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(175429624844727004)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_button_name=>'CARGAR_ARCHIVO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Archivo'
,p_button_redirect_url=>'f?p=&APP_ID.:466:&SESSION.::&DEBUG.::P466_COD_MODULO,P466_OPERACION,P466_ID_IMAGEN:SM,OBRA,&P258_NRO_COMPROBANTE_RECIBIDO.'
,p_button_condition=>'P258_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(175430099047727008)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_button_name=>'DOCUMENTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Documentos'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-folder-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94034783542281246)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_button_name=>'P258_BTN_BUSCAR_COORD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Buscar Ubicaci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94031083167281209)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_button_name=>'P258_BOTON_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Valores a Facturar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67816890399427415)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_button_name=>'P258_BOTON_CERRAR_ART_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68072176878884833)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_button_name=>'P258_BOTON_CERRAR_AGENDA_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68514539388865450)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66769130500645414)
,p_button_name=>'P258_BOTON_CERRAR_CPROBRAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69363306979237010)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66771354117645436)
,p_button_name=>'P258_BOTON_CERRAR_CPROBRFACPAG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69365849123237035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_button_name=>'P258_BOTON_CERRAR_FACTURA_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71134271675280421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71133985334280418)
,p_button_name=>'P258_BOTON_CERRAR_SEGUIMIENTO_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94030649256281205)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(92976358394193149)
,p_button_name=>'P258_BOTON_CERRAR_FACTURAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67623658181389710)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(67622782879389701)
,p_button_name=>'P258_BOTON_CERRAR_TEC_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83794187282167944)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_button_name=>'P258_BTN_CERRAR_SOL_PAGO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67816915079427416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_button_name=>'P258_BOTON_ACEPTAR_ART_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68072292526884834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_button_name=>'P258_BOTON_ACEPTAR_AGENDA_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69365466307237031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_button_name=>'P258_BOTON_ACEPTAR_FACTURA_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71134510394280424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71133985334280418)
,p_button_name=>'P258_BOTON_ACEPTAR_SEGUIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67817070361427417)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_button_name=>'P258_BOTON_ACEPTAR_ART_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68072387392884835)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_button_name=>'P258_BOTON_ACEPTAR_AGENDA_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69365581824237032)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_button_name=>'P258_BOTON_ACEPTAR_FACTURA_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101170318525670826)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(101170044281670823)
,p_button_name=>'BTN_CERRAR_MAPA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67623458434389708)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(67622782879389701)
,p_button_name=>'P258_BOTON_ACEPTAR_TEC_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94030537201281204)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(92976358394193149)
,p_button_name=>'P258_BOTON_ACEPTAR_FACTURAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101171068907670833)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(101170044281670823)
,p_button_name=>'BTN_ACEPTAR_MAPA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67623583802389709)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(67622782879389701)
,p_button_name=>'P258_BOTON_ACEPTAR_TEC_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83794787014167950)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_button_name=>'P258_BTN_ACEPTAR_SOL_PAGO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
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
 p_id=>wwv_flow_imp.id(66895778190605445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66892540691605413)
,p_button_name=>'P258_BOTON_AGREGAR_TECNICO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Agregar T\00E9cnico')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68072668148884838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66891616813605404)
,p_button_name=>'P258_BOTON_AGREGAR_AGENDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Agenda'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68513550741865440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68513272574865437)
,p_button_name=>'P258_BOTON_GASTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Costos'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68513628957865441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(68513272574865437)
,p_button_name=>'P258_BOTON_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Extracto'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133463876633476649)
,p_branch_name=>'Go To Page 258'
,p_branch_action=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:258:P258_NRO_COMPROBANTE_RECIBIDO:&P258_NRO_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65269510866719702)
,p_name=>'P258_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65269627607719703)
,p_name=>'P258_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65269713560719704)
,p_name=>'P258_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65269837806719705)
,p_name=>'P258_SER_ORDEN_TRABAJO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65269953192719706)
,p_name=>'P258_RUBRO_MO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270013150719707)
,p_name=>'P258_CLIENTE_CONTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270173819719708)
,p_name=>'P258_RUBRO_SERV_TECNICO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270251071719709)
,p_name=>'P258_COD_MONEDA_BASE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270378388719710)
,p_name=>'P258_TIP_MOTIVO_ANULACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270439486719711)
,p_name=>'P258_VALOR_FACTURACION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270575996719712)
,p_name=>'P258_MODIFICA_FECHA_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270659200719713)
,p_name=>'P258_REIMPRIME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270744053719714)
,p_name=>'P258_FECHAOT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270869105719715)
,p_name=>'P258_CONSULTA_FECHAOT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65270961512719716)
,p_name=>'P258_CONSULTA_FEC_CIERRE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65271005516719717)
,p_name=>'P258_CARGA_NROOT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65271181071719718)
,p_name=>'P258_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65271293213719719)
,p_name=>'P258_PORC_IVA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65273862043719745)
,p_name=>'P258_NRO_COMPROBANTE_RECIBIDO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65716383959241750)
,p_name=>'P258_INDICADOR_SMOBRCOSTOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66767885632645401)
,p_name=>'P258_INDICADOR_CPROBRFACPAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66767991584645402)
,p_name=>'P258_INDICADOR_CPROBRAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66893430507605422)
,p_name=>'P258_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>unistr('N\00B0 Proyecto')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66893549569605423)
,p_name=>'P258_IND_VRF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'VRF'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-sm:margin-left-none:margin-right-none'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66893606183605424)
,p_name=>'P258_FEC_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(66893703843605425)
,p_name=>'P258_IND_MANTENIMIENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Mantenimiento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-left-none:margin-right-none'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66893845242605426)
,p_name=>'P258_NOMBRE_PROY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Nombre Proyecto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66893985891605427)
,p_name=>'P258_COD_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_SMOTOBRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente ||''  - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) ||''  - '' || I.NUMERO D,',
'       c.cod_cliente R',
'FROM   cc_clientes c, personas p, ident_personas i',
'WHERE  c.cod_empresa = :p_cod_empresa',
'AND    c.cod_persona = p.cod_persona ',
'AND    i.cod_persona(+) = p.cod_persona',
'AND    i.cod_ident(+) = ''CI''',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66894093196605428)
,p_name=>'P258_COD_VENDEDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR_SMOTOBRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  v.cod_vendedor || '' - '' || nvl( v.descripcion, ltrim(p.nombre) ) D, ',
'        v.cod_vendedor R',
'        ',
'FROM fv_vendedores v, personas p ',
'WHERE v.cod_empresa = :p_cod_empresa ',
'AND v.cod_persona = p.cod_persona ',
'AND v.estado = ''A'' ',
'ORDER BY ltrim(p.nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66894165575605429)
,p_name=>'P258_DATOS_CONTACTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Contacto'
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
 p_id=>wwv_flow_imp.id(66894227300605430)
,p_name=>'P258_CORREO_CONTACTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Correo'
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
 p_id=>wwv_flow_imp.id(66894360759605431)
,p_name=>'P258_CELULAR_CONTACTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>unistr('N\00BA Telefonico')
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
 p_id=>wwv_flow_imp.id(66894429795605432)
,p_name=>'P258_COD_CONDICION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>unistr('Condici\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION_SMOTOBRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta || '' - '' || c.descripcion D,',
'       c.cod_condicion_venta R',
'FROM cc_condiciones_ventas c ',
'WHERE c.cod_empresa = :p_cod_empresa',
'AND c.estado = ''A'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66894598097605433)
,p_name=>'P258_DIRECCION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(66894646740605434)
,p_name=>'P258_COORDENADAS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Coordenadas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66894716701605435)
,p_name=>'P258_COD_SUPERVISOR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUPERVISOR_SMOTOBRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT u.cod_usuario || '' - '' || nvl(p.nombre,p.nomb_fantasia) D,',
'       u.cod_usuario R',
'       --P.COD_PERSONA,',
'       --P.DIREC_ELECTRONICA',
'from usuarios u, personas p',
'WHERE u.cod_persona=p.cod_persona',
'AND u.cod_usuario in  (  Select cod_usuario',
'FROM permisos_opciones',
'WHERE nom_forma = ''SMOTOBRA''',
'AND parametro = ''SUPERVISOR_OBRA'');'))
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
 p_id=>wwv_flow_imp.id(66894906672605437)
,p_name=>'P258_DURACION_OBRA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>unistr('Duraci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CORTO PLAZO;CORTO PLAZO,MEDIANO PLAZO;MEDIANO PLAZO,LARGO PLAZO;LARGO PLAZO,NN'
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(66895046937605438)
,p_name=>'P258_COD_ART_FAC'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>unistr('C\00F3digo Artic.')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'re readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66895161199605439)
,p_name=>'P258_COMENTARIO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Det. Fact.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'re readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66895225398605440)
,p_name=>'P258_RB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66896271944605450)
,p_name=>'P258_INDICADOR_REPORT_TECNICOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67622832724389702)
,p_name=>'P258_COD_PROVEEDOR_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67622782879389701)
,p_prompt=>unistr('C\00F3digo - Nombre')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS_SMOTOBRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_proveedor ||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_proveedor R, ',
'       c.cod_rubro',
'  FROM cm_proveedores c, personas p',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_rubro = :P258_RUBRO_SERV_TECNICO',
'   AND c.cod_persona = p.cod_persona',
'',
'UNION ALL',
'   SELECT c.cod_proveedor ||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'          c.cod_proveedor R,',
'          ''99''',
'  FROM cm_proveedores c, personas p',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND nvl(c.cod_rubro,''99'') <> :P258_RUBRO_SERV_TECNICO',
'   AND c.cod_persona = p.cod_persona',
' ORDER BY 3,1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67622981696389703)
,p_name=>'P258_TIPO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67622782879389701)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67623051267389704)
,p_name=>'P258_OBS_PROVEEDOR_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67622782879389701)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67624388262389717)
,p_name=>'P258_INDICADOR_ALERT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67625484546389728)
,p_name=>'P258_SEQ_ID_EDITAR_TECNICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67625322212389727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67625578061389729)
,p_name=>'P258_SEQ_ID_ELIMINAR_TECNICO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67625322212389727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67627204598389746)
,p_name=>'P258_INDICADOR_REPORT_ART'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67815829549427405)
,p_name=>'P258_SEQ_ID_EDITAR_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68071202761884824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67815997217427406)
,p_name=>'P258_SEQ_ID_ELIMINAR_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68071202761884824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67817597776427422)
,p_name=>'P258_COD_ARTICULO_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_prompt=>'Cod Articulo Cr Ed'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67817695136427423)
,p_name=>'P258_TIP_FACTURA_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67817773212427424)
,p_name=>'P258_SER_FACTURA_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67817817680427425)
,p_name=>'P258_NRO_FACTURA_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67816789635427414)
,p_prompt=>'Nro'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67820344377427450)
,p_name=>'P258_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;N,PRESUP.ENVIADO;P,APROBADO;C,RECHAZADO;R,ANULADO;A,CONCLUIDO;F,VERIFICADO;V,FINALIZADO;E,ANTEPROYECTO;S'
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
 p_id=>wwv_flow_imp.id(68068938704884801)
,p_name=>'P258_PORC_AVANCE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_item_default=>'0'
,p_prompt=>'% Avance'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textEnd'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069130426884803)
,p_name=>'P258_FEC_TENTA_PROY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_prompt=>'Fecha Tentativa'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069273252884804)
,p_name=>'P258_MONTO_PRESUPUESTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_prompt=>'Monto Presupuesto'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textEnd'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069396498884805)
,p_name=>'P258_COSTO_PREVISTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_prompt=>'Costo Previsto'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textEnd'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069471196884806)
,p_name=>'P258_MARGEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_item_default=>'0'
,p_prompt=>'% Margen Real'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textEnd'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069553071884807)
,p_name=>'P258_COSTO_FINAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_prompt=>'Costo Total'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textEnd'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069670750884808)
,p_name=>'P258_CREADO_POR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>unistr('Creaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069781083884809)
,p_name=>'P258_VERIFICADO_POR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Ppto. Verificado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069862255884810)
,p_name=>'P258_PRESUPUESTADO_POR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Presupuestado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68069989032884811)
,p_name=>'P258_APROBADO_POR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Aprobado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070017612884812)
,p_name=>'P258_FEC_RECHAZO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Fecha Rechazado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070124434884813)
,p_name=>'P258_FEC_CREACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>unistr('Fecha Creaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070227605884814)
,p_name=>'P258_FEC_VERIFICADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Fecha Verificado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070396360884815)
,p_name=>'P258_FEC_PRESUPUESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Fecha Presupuestado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070495750884816)
,p_name=>'P258_RECHAZADO_POR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Rechazado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(68070533637884817)
,p_name=>'P258_FINALIZADO_POR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Concluido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070699595884818)
,p_name=>'P258_FEC_APROBACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Fecha Aprobado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070798333884819)
,p_name=>'P258_FEC_FINALIZADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Fecha Finalizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070840286884820)
,p_name=>'P258_ENTREGADO_POR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Finalizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68070965266884821)
,p_name=>'P258_FEC_ENTREGADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_prompt=>'Fecha Finalizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68071098636884822)
,p_name=>'P258_SEQ_ID_EDITAR_AGENDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68071387019884825)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68071148734884823)
,p_name=>'P258_SEQ_ID_ELIMINAR_AGENDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(68071387019884825)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68071468977884826)
,p_name=>'P258_INDICADOR_REPORT_AGENDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68071706292884829)
,p_name=>'P258_FECHA_AGENDA_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68071846742884830)
,p_name=>'P258_PORC_AVANCE_AGEN_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_prompt=>'% Avance'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,10;10,20;20,30;30,40;40,50;50,60;60,70;70,75;75,80;80,90;90,95;95,100;100'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68071910579884831)
,p_name=>'P258_ESTADO_AGENDA_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AGENDADO;A,VISITADO;V'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68072050773884832)
,p_name=>'P258_OBSER_AGENDA_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(68071581635884827)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68514350600865448)
,p_name=>'P258_TIP_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68514445211865449)
,p_name=>'P258_SER_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69363814556237015)
,p_name=>'P258_SEQ_ID_EDITAR_FACTURA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69363789273237014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69363942684237016)
,p_name=>'P258_SEQ_ID_ELIMINAR_FACTURA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69363789273237014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69364109565237018)
,p_name=>'P258_NRO_FACTURA_FAC_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_prompt=>'Nro Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69364274261237019)
,p_name=>'P258_COD_PROVEEDOR_FAC_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDOR_SMOTOBRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c.cod_proveedor || '' - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'        c.cod_proveedor R, ',
'        c.cod_rubro rubro',
'FROM cm_proveedores c, personas p',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.cod_rubro = :P258_RUBRO_SERV_TECNICO',
'AND c.cod_persona = p.cod_persona',
'',
'UNION ALL',
'   ',
'SELECT c.cod_proveedor || '' - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_proveedor R,',
'       ''99'' rubro',
'FROM cm_proveedores c, personas p',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND nvl(c.cod_rubro,''99'') <> :P258_RUBRO_SERV_TECNICO',
'AND c.cod_persona = p.cod_persona',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69364319782237020)
,p_name=>'P258_FECHA_FACTURA_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69364406453237021)
,p_name=>'P258_COD_USUARIO_FAC_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69364580952237022)
,p_name=>'P258_MONTO_FAC_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69364616264237023)
,p_name=>'P258_FECHA_ALTA_FAC_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69364049249237017)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69366865004237045)
,p_name=>'P258_INDICADOR_REPORT_FACTURA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69601726285997324)
,p_name=>'P258_CERRADO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69601835081997325)
,p_name=>'P258_ANULADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69603328150997340)
,p_name=>'P258_TELEFONO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66892064330605408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69603456132997341)
,p_name=>'P258_COD_MOTIVO_ANU'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69603578160997342)
,p_name=>'P258_NRO_ORDEN_ANT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69603728097997344)
,p_name=>'P258_TOT_COSTO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69603839926997345)
,p_name=>'P258_MARGEN20'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69603982966997346)
,p_name=>'P258_MARGEN25'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69604067056997347)
,p_name=>'P258_MARGEN30'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(65269472202719701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70529354050217005)
,p_name=>'P258_INDICADOR_BOTONES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70533274024217044)
,p_name=>'P258_INDICADOR_PESTANIAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71132626036280405)
,p_name=>'P258_INDICADOR_REP_SEGUIMIENTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71134855114280427)
,p_name=>'P258_OBS_SEGUIMIENTO_CR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71133985334280418)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71134964581280428)
,p_name=>'P258_PORC_AVANCE_SEG_CR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71133985334280418)
,p_prompt=>'Porcentaje de Avance de la Obra'
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
 p_id=>wwv_flow_imp.id(72119215752096522)
,p_name=>'P258_INDICADOR_SEC_TECNICOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72119391110096523)
,p_name=>'P258_INDICADOR_SEC_ARTICULOS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83791542608167918)
,p_name=>'P258_INDICADOR_BTN_GUARDAR_PRO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83792122072167924)
,p_name=>'P258_INDICADOR_REPORT_COMPROB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83793441782167937)
,p_name=>'P258_SEQ_ID_PAGO_FACTURA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69363789273237014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83793623938167939)
,p_name=>'P258_ORDEN_DE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_prompt=>'Orden De'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83793738373167940)
,p_name=>'P258_SOL_OBSERV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83793832434167941)
,p_name=>'P258_VALOR_PAGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_prompt=>'Monto a Pagar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83793963119167942)
,p_name=>'P258_PORC_PAGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_prompt=>'Porc. Pago'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83794051436167943)
,p_name=>'P258_AVANCE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(83793506479167938)
,p_prompt=>'Porc. Avance'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92973407102193120)
,p_name=>'P258_MENSAJE_ERROR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(65716240928241749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92975181774193137)
,p_name=>'P258_COD_USUARIO_ANU'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92975292140193138)
,p_name=>'P258_FEC_ANULADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(66892309304605411)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94030207264281201)
,p_name=>'P258_DESCRIPCION_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92976358394193149)
,p_prompt=>'Descripcion Articulo'
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
 p_id=>wwv_flow_imp.id(94030341176281202)
,p_name=>'P258_IMPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(92976358394193149)
,p_prompt=>'Importe'
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
 p_id=>wwv_flow_imp.id(94030473760281203)
,p_name=>'P258_IMP_PENDIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(92976358394193149)
,p_prompt=>'Pendiente a facturar'
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
 p_id=>wwv_flow_imp.id(94033814532281237)
,p_name=>'P258_FEC_TENTA_PROY_MOSTRAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_prompt=>'Fecha Tentativa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101170829192670831)
,p_name=>'P258_COORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101170044281670823)
,p_prompt=>'Coordenadas'
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
 p_id=>wwv_flow_imp.id(101170987713670832)
,p_name=>'P258_ADRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(101170044281670823)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(832978216612065747)
,p_name=>'P258_MARGEN_PREVISTO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(66892293933605410)
,p_item_default=>'0'
,p_prompt=>'% Margen Previsto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textEnd'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94031914070281218)
,p_validation_name=>'VL_NOM_PROYECTO'
,p_validation_sequence=>20
,p_validation=>'P258_NOMBRE_PROY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El nombre del proyecto no puede ser nulo.'
,p_associated_item=>wwv_flow_imp.id(66893845242605426)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94032056837281219)
,p_validation_name=>'VL_COD_CLIENTE'
,p_validation_sequence=>30
,p_validation=>'P258_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El cliente no puede ser nulo.'
,p_associated_item=>wwv_flow_imp.id(66893985891605427)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94032186629281220)
,p_validation_name=>'VL_COD_VENDEDOR'
,p_validation_sequence=>40
,p_validation=>'P258_COD_VENDEDOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El Vendedor no puede ser nulo.'
,p_associated_item=>wwv_flow_imp.id(66894093196605428)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94032243872281221)
,p_validation_name=>'VL_COD_CONDICION'
,p_validation_sequence=>50
,p_validation=>'P258_COD_CONDICION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('La condici\00F3n no puede ser nulo.')
,p_associated_item=>wwv_flow_imp.id(66894429795605432)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94032357767281222)
,p_validation_name=>'VL_FECHA_TENTATIVA'
,p_validation_sequence=>60
,p_validation=>'P258_FEC_TENTA_PROY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha tentativa no puede ser nulo.'
,p_associated_item=>wwv_flow_imp.id(68069130426884803)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67623122888389705)
,p_name=>'DA_ABRIR_TECNICO_CR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66895778190605445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67623334131389707)
,p_event_id=>wwv_flow_imp.id(67623122888389705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_COD_PROVEEDOR_CR_ED,P258_TIPO_CR_ED,P258_OBS_PROVEEDOR_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67623748676389711)
,p_event_id=>wwv_flow_imp.id(67623122888389705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67623458434389708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67623835256389712)
,p_event_id=>wwv_flow_imp.id(67623122888389705)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67623583802389709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67623235626389706)
,p_event_id=>wwv_flow_imp.id(67623122888389705)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67622782879389701)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67623944602389713)
,p_name=>'DA_CERRAR_TECNICO_CR_ED'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67623658181389710)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67624057360389714)
,p_event_id=>wwv_flow_imp.id(67623944602389713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67622782879389701)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67624115400389715)
,p_name=>'DA_CREAR_TECNICO'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67623458434389708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67624234930389716)
,p_event_id=>wwv_flow_imp.id(67624115400389715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_COD_PROVEEDOR_CR_ED IS NULL OR',
'       :P258_OBS_PROVEEDOR_CR_ED IS NULL',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_TECNICOS := ''1'';',
'        SMOTOBRA.PR_AGREGAR_COL_TECNICOS (:P258_COD_PROVEEDOR_CR_ED,',
'                                          :P258_TIPO_CR_ED,',
'                                          :P258_OBS_PROVEEDOR_CR_ED);',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_COD_PROVEEDOR_CR_ED,P258_TIPO_CR_ED,P258_OBS_PROVEEDOR_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_TECNICOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67624487937389718)
,p_event_id=>wwv_flow_imp.id(67624115400389715)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67624546482389719)
,p_event_id=>wwv_flow_imp.id(67624115400389715)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892540691605413)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67624689777389720)
,p_event_id=>wwv_flow_imp.id(67624115400389715)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67622782879389701)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67625057956389724)
,p_name=>'DA_EDITAR_TECNICO_ED'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67623583802389709)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626280452389736)
,p_event_id=>wwv_flow_imp.id(67625057956389724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_COD_PROVEEDOR_CR_ED IS NULL OR',
'       :P258_OBS_PROVEEDOR_CR_ED IS NULL',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_TECNICOS := ''1'';',
'        SMOTOBRA.PR_MODIFICAR_MIEMB_TECNICOS (:P258_SEQ_ID_EDITAR_TECNICO,',
'                                              :P258_COD_PROVEEDOR_CR_ED,',
'                                              :P258_TIPO_CR_ED,',
'                                              :P258_OBS_PROVEEDOR_CR_ED);                                          ',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_TECNICO,P258_COD_PROVEEDOR_CR_ED,P258_TIPO_CR_ED,P258_OBS_PROVEEDOR_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_TECNICOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626382425389737)
,p_event_id=>wwv_flow_imp.id(67625057956389724)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626475251389738)
,p_event_id=>wwv_flow_imp.id(67625057956389724)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892540691605413)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626587039389739)
,p_event_id=>wwv_flow_imp.id(67625057956389724)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67622782879389701)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67625699946389730)
,p_name=>'DA_ELIMINAR_TECNICO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_ELIMINAR_TECNICO'
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
 p_id=>wwv_flow_imp.id(67625771931389731)
,p_event_id=>wwv_flow_imp.id(67625699946389730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626056399389734)
,p_event_id=>wwv_flow_imp.id(67625699946389730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SMOTOBRA.PR_ELIMINAR_MIEMB_TECNICOS (:P258_SEQ_ID_ELIMINAR_TECNICO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_ELIMINAR_TECNICO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626153889389735)
,p_event_id=>wwv_flow_imp.id(67625699946389730)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892540691605413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67625882275389732)
,p_name=>'DA_ABRIR_TECNICO_ED'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_EDITAR_TECNICO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626742425389741)
,p_event_id=>wwv_flow_imp.id(67625882275389732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67623583802389709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626819057389742)
,p_event_id=>wwv_flow_imp.id(67625882275389732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67623458434389708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67626610847389740)
,p_event_id=>wwv_flow_imp.id(67625882275389732)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'',
'       c001 COD_PROVEEDOR,',
'       c002 TIPO,',
'       c003 OBSERVACION',
'',
'    INTO :P258_COD_PROVEEDOR_CR_ED, :P258_TIPO_CR_ED, :P258_OBS_PROVEEDOR_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''TECNICOS''',
'    AND SEQ_ID = :P258_SEQ_ID_EDITAR_TECNICO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_TECNICO'
,p_attribute_03=>'P258_COD_PROVEEDOR_CR_ED,P258_TIPO_CR_ED,P258_OBS_PROVEEDOR_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67625979245389733)
,p_event_id=>wwv_flow_imp.id(67625882275389732)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67622782879389701)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67626908429389743)
,p_name=>'DA_OCULTAR_BOTONES'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67627094840389744)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67623458434389708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67627128917389745)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67623583802389709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67817336744427420)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816915079427416)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67817416879427421)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67817070361427417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073325919884845)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072292526884834)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073416202884846)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072387392884835)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69365672438237033)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(69365466307237031)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69365741746237034)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(69365581824237032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133463763149476648)
,p_event_id=>wwv_flow_imp.id(67626908429389743)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P258_ESTADO").readOnly=true;',
'$(''#P258_ESTADO'').css(''pointer-events'',''none'');',
'',
'',
'document.getElementById("P258_MONTO_PRESUPUESTO").readOnly=true; ',
'document.getElementById("P258_COSTO_PREVISTO").readOnly=true; ',
'document.getElementById("P258_COSTO_FINAL").readOnly=true; ',
'document.getElementById("P258_MARGEN").readOnly=true; ',
'document.getElementById("P258_MARGEN_PREVISTO").readOnly=true; ',
'document.getElementById("P258_PORC_AVANCE").readOnly=true; '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67816117682427408)
,p_name=>'DA_ABRIR_ARTICULO_CR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67816079293427407)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67816334965427410)
,p_event_id=>wwv_flow_imp.id(67816117682427408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_COD_ARTICULO_CR_ED,P258_TIP_FACTURA_CR_ED,P258_SER_FACTURA_CR_ED,P258_FECHA_FACTURA_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67816499077427411)
,p_event_id=>wwv_flow_imp.id(67816117682427408)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816915079427416)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67816530821427412)
,p_event_id=>wwv_flow_imp.id(67816117682427408)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67817070361427417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67816684095427413)
,p_event_id=>wwv_flow_imp.id(67816117682427408)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67816789635427414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67817172563427418)
,p_name=>'DA_CERRAR_ART_CR_ED'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67816890399427415)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67817229528427419)
,p_event_id=>wwv_flow_imp.id(67817172563427418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67816789635427414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67818022787427427)
,p_name=>'DA_CREAR_ARTICULO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67816915079427416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67818271429427429)
,p_event_id=>wwv_flow_imp.id(67818022787427427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_COD_ARTICULO_CR_ED IS NULL OR',
'        :P258_TIP_FACTURA_CR_ED IS NULL OR',
'        :P258_SER_FACTURA_CR_ED IS NULL OR',
'        :P258_NRO_FACTURA_CR_ED IS NULL ',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_ART := ''1'';',
'        SMOTOBRA.PR_AGREGAR_COL_ARTICULOS  (:P258_COD_ARTICULO_CR_ED,',
'                                            :P258_TIP_FACTURA_CR_ED,',
'                                            :P258_SER_FACTURA_CR_ED,',
'                                            :P258_NRO_FACTURA_CR_ED);',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P258_COD_ARTICULO_CR_ED,P258_TIP_FACTURA_CR_ED,P258_SER_FACTURA_CR_ED,P258_FECHA_FACTURA_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67818387558427430)
,p_event_id=>wwv_flow_imp.id(67818022787427427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67818494369427431)
,p_event_id=>wwv_flow_imp.id(67818022787427427)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892611932605414)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67818113078427428)
,p_event_id=>wwv_flow_imp.id(67818022787427427)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67816789635427414)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67818672313427433)
,p_name=>'DA_ELIMINAR_ARTICULO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_ELIMINAR_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67818869803427435)
,p_event_id=>wwv_flow_imp.id(67818672313427433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67818914477427436)
,p_event_id=>wwv_flow_imp.id(67818672313427433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SMOTOBRA.PR_ELIMINAR_MIEMB_ARTICULOS (:P258_SEQ_ID_ELIMINAR_ARTICULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_ELIMINAR_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67819050493427437)
,p_event_id=>wwv_flow_imp.id(67818672313427433)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892611932605414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67819185310427438)
,p_name=>'DA_ABRIR_ARTICULO_ED'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_EDITAR_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67819385678427440)
,p_event_id=>wwv_flow_imp.id(67819185310427438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67817070361427417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67819441808427441)
,p_event_id=>wwv_flow_imp.id(67819185310427438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816915079427416)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68511265902865417)
,p_event_id=>wwv_flow_imp.id(67819185310427438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT    c001 COD_ARTICULO, ',
'              c002 TIP_FACTURA,',
'              c003 SER_FACTURA,',
'              c004 NRO_FACTURA',
'',
'    INTO :P258_COD_ARTICULO_CR_ED, :P258_TIP_FACTURA_CR_ED,',
'         :P258_SER_FACTURA_CR_ED, :P258_NRO_FACTURA_CR_ED',
'                                    ',
'              FROM APEX_COLLECTIONS',
'              WHERE COLLECTION_NAME = ''ARTICULOS''',
'              AND SEQ_ID = :P258_SEQ_ID_EDITAR_ARTICULO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_ARTICULO'
,p_attribute_03=>'P258_COD_ARTICULO_CR_ED,P258_TIP_FACTURA_CR_ED,P258_SER_FACTURA_CR_ED,P258_FECHA_FACTURA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67819667319427443)
,p_event_id=>wwv_flow_imp.id(67819185310427438)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67816789635427414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67819762391427444)
,p_name=>'DA_EDITAR_ARTICULO_ED'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67817070361427417)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67819906291427446)
,p_event_id=>wwv_flow_imp.id(67819762391427444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_COD_ARTICULO_CR_ED IS NULL OR',
'        :P258_TIP_FACTURA_CR_ED IS NULL OR',
'        :P258_SER_FACTURA_CR_ED IS NULL OR',
'        :P258_NRO_FACTURA_CR_ED IS NULL ',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_ART := ''1'';',
'        SMOTOBRA.PR_MODIFICAR_MIEMB_ARTICULOS  (:P258_SEQ_ID_EDITAR_ARTICULO,',
'                                                :P258_COD_ARTICULO_CR_ED,',
'                                                :P258_TIP_FACTURA_CR_ED,',
'                                                :P258_SER_FACTURA_CR_ED,',
'                                                :P258_NRO_FACTURA_CR_ED);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_ARTICULO,P258_COD_ARTICULO_CR_ED,P258_TIP_FACTURA_CR_ED,P258_SER_FACTURA_CR_ED,P258_FECHA_FACTURA_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67820042961427447)
,p_event_id=>wwv_flow_imp.id(67819762391427444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67820161070427448)
,p_event_id=>wwv_flow_imp.id(67819762391427444)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892611932605414)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67820277634427449)
,p_event_id=>wwv_flow_imp.id(67819762391427444)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67816789635427414)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68072495706884836)
,p_name=>'DA_CERRAR_AGENDA_CR_ED'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68072176878884833)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68072534246884837)
,p_event_id=>wwv_flow_imp.id(68072495706884836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68071581635884827)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68072723287884839)
,p_name=>'DA_ABRIR_AGENDA_CR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68072668148884838)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68072989654884841)
,p_event_id=>wwv_flow_imp.id(68072723287884839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_FECHA_AGENDA_CR_ED,P258_ESTADO_AGENDA_CR_ED,P258_PORC_AVANCE_AGEN_CR_ED,P258_OBSER_AGENDA_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073026999884842)
,p_event_id=>wwv_flow_imp.id(68072723287884839)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072292526884834)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073184967884843)
,p_event_id=>wwv_flow_imp.id(68072723287884839)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072387392884835)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68513066103865435)
,p_event_id=>wwv_flow_imp.id(68072723287884839)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_ESTADO_AGENDA_CR_ED :=''A'';',
'    :P258_PORC_AVANCE_AGEN_CR_ED := NVL(:P258_PORC_AVANCE_AGEN_CR_ED, 0);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P258_PORC_AVANCE_AGEN_CR_ED'
,p_attribute_03=>'P258_ESTADO_AGENDA_CR_ED,P258_PORC_AVANCE_AGEN_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073290301884844)
,p_event_id=>wwv_flow_imp.id(68072723287884839)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68071581635884827)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68073582620884847)
,p_name=>'DA_CREAR_AGENDA'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68072292526884834)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073754321884849)
,p_event_id=>wwv_flow_imp.id(68073582620884847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_FECHA_AGENDA_CR_ED IS NULL OR',
'        :P258_PORC_AVANCE_AGEN_CR_ED IS NULL OR',
'        :P258_ESTADO_AGENDA_CR_ED IS NULL',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_AGENDA := ''1'';',
'',
'        INSERT INTO SM_OBRA_AGENDA (COD_EMPRESA,',
'                                    TIP_COMPROBANTE,',
'                                    SER_COMPROBANTE,',
'                                    NRO_COMPROBANTE,',
'                                    FECHA,',
'                                    PORC_AVANCE,',
'                                    ESTADO,',
'                                    OBSERVACION)',
'',
'        VALUES (:P_COD_EMPRESA,',
'                :P258_TIP_COMPROBANTE,',
'                :P258_SER_COMPROBANTE,',
'                :P258_NRO_COMPROBANTE,',
'                :P258_FECHA_AGENDA_CR_ED,',
'                :P258_PORC_AVANCE_AGEN_CR_ED,',
'                :P258_ESTADO_AGENDA_CR_ED,',
'                :P258_OBSER_AGENDA_CR_ED);',
'    END IF;',
' ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE ,P258_FECHA_AGENDA_CR_ED,P258_PORC_AVANCE_AGEN_CR_ED,P258_ESTADO_AGENDA_CR_ED,P258_OBSER_AGENDA_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_AGENDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68073842964884850)
,p_event_id=>wwv_flow_imp.id(68073582620884847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68509630794865401)
,p_event_id=>wwv_flow_imp.id(68073582620884847)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66891616813605404)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68509705332865402)
,p_event_id=>wwv_flow_imp.id(68073582620884847)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68071581635884827)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68510852715865413)
,p_name=>'DA_ABRIR_AGENDA_ED'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_EDITAR_AGENDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68511079867865415)
,p_event_id=>wwv_flow_imp.id(68510852715865413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072387392884835)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68511104228865416)
,p_event_id=>wwv_flow_imp.id(68510852715865413)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072292526884834)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67819551723427442)
,p_event_id=>wwv_flow_imp.id(68510852715865413)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'           FECHA,',
'           PORC_AVANCE,',
'           ESTADO,',
'           OBSERVACION',
'',
'    INTO :P258_FECHA_AGENDA_CR_ED, :P258_PORC_AVANCE_AGEN_CR_ED,',
'         :P258_ESTADO_AGENDA_CR_ED, :P258_OBSER_AGENDA_CR_ED',
'',
'    FROM  SM_OBRA_AGENDA',
'    WHERE ROWID = :P258_SEQ_ID_EDITAR_AGENDA;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_AGENDA'
,p_attribute_03=>'P258_FECHA_AGENDA_CR_ED,P258_PORC_AVANCE_AGEN_CR_ED,P258_ESTADO_AGENDA_CR_ED,P258_OBSER_AGENDA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68511378330865418)
,p_event_id=>wwv_flow_imp.id(68510852715865413)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68071581635884827)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68511457186865419)
,p_name=>'DA_ELIMINAR_AGENDA'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_ELIMINAR_AGENDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68512086887865425)
,p_event_id=>wwv_flow_imp.id(68511457186865419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68512165532865426)
,p_event_id=>wwv_flow_imp.id(68511457186865419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE FROM SM_OBRA_AGENDA',
'    WHERE ROWID = :P258_SEQ_ID_ELIMINAR_AGENDA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_ELIMINAR_AGENDA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68512252000865427)
,p_event_id=>wwv_flow_imp.id(68511457186865419)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66891616813605404)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68512311055865428)
,p_name=>'DA_EDITAR_AGENDA_ED'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68072387392884835)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68512957971865434)
,p_event_id=>wwv_flow_imp.id(68512311055865428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_FECHA_AGENDA_CR_ED IS NULL OR',
'        :P258_PORC_AVANCE_AGEN_CR_ED IS NULL OR',
'        :P258_ESTADO_AGENDA_CR_ED IS NULL',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_AGENDA := ''1'';',
'',
'        UPDATE SM_OBRA_AGENDA ',
'        SET    FECHA = :P258_FECHA_AGENDA_CR_ED,',
'               PORC_AVANCE = :P258_PORC_AVANCE_AGEN_CR_ED,',
'               ESTADO = :P258_ESTADO_AGENDA_CR_ED,',
'               OBSERVACION = :P258_OBSER_AGENDA_CR_ED',
'        WHERE ROWID = :P258_SEQ_ID_EDITAR_AGENDA;',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_AGENDA,P258_FECHA_AGENDA_CR_ED,P258_PORC_AVANCE_AGEN_CR_ED,P258_ESTADO_AGENDA_CR_ED,P258_OBSER_AGENDA_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_AGENDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68512665716865431)
,p_event_id=>wwv_flow_imp.id(68512311055865428)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
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
 p_id=>wwv_flow_imp.id(68512743762865432)
,p_event_id=>wwv_flow_imp.id(68512311055865428)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66891616813605404)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68512861730865433)
,p_event_id=>wwv_flow_imp.id(68512311055865428)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68071581635884827)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68513726867865442)
,p_name=>'DA_ABRIR_REPORT_CPROBRAS'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68513550741865440)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68513877278865443)
,p_event_id=>wwv_flow_imp.id(68513726867865442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_INDICADOR_CPROBRAS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_INDICADOR_CPROBRAS'
,p_attribute_03=>'P258_INDICADOR_CPROBRAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68514034305865445)
,p_event_id=>wwv_flow_imp.id(68513726867865442)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66769130500645414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68513965567865444)
,p_event_id=>wwv_flow_imp.id(68513726867865442)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66769130500645414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69362476585237001)
,p_name=>'DA_CERRAR_CPROBRAS'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68514539388865450)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69362506716237002)
,p_event_id=>wwv_flow_imp.id(69362476585237001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66769130500645414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69362685094237003)
,p_name=>'DA_SETEAR_NRO_COMP'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69362729387237004)
,p_event_id=>wwv_flow_imp.id(69362685094237003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
''))
,p_attribute_02=>'P258_NRO_COMPROBANTE,P258_SER_COMPROBANTE,P258_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83793276177167935)
,p_event_id=>wwv_flow_imp.id(69362685094237003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcosto_previsto     number;',
'    vmonto_presupuesto number;',
'BEGIN',
'    SELECT',
'            TIP_COMPROBANTE, SER_COMPROBANTE, NRO_COMPROBANTE,',
'            FEC_COMPROBANTE, COD_CLIENTE, DIRECCION,',
'            COORDENADAS, MONTO_PRESUPUESTO, COSTO_PREVISTO,',
'            COSTO_FINAL, COD_ART_FAC, ANULADO,',
'            ESTADO, CREADO_POR, FEC_CREACION, PRESUPUESTADO_POR,',
'            FEC_PRESUPUESTADO, APROBADO_POR, FEC_APROBACION,',
'            RECHAZADO_POR, FEC_RECHAZO, FINALIZADO_POR,',
'            FEC_FINALIZADO, CELULAR_CONTACTO,',
'            CORREO_CONTACTO, DATOS_CONTACTO,',
'            COD_VENDEDOR, PORC_AVANCE, SUPERVISOR,',
'            COD_CONDICION, DURACION_OBRA, VERIFICADO_POR,',
'            FEC_VERIFICADO, FEC_TENTA_PROY,',
'            NOMBRE_PROY, IND_MANTENIMIENTO,',
'            IND_VRF, CERRADO, COD_MOTIVO_ANU, COMENTARIO,',
'            FEC_ANULADO, COD_USUARIO_ANU',
'',
'    INTO',
'            :P258_TIP_COMPROBANTE,:P258_SER_COMPROBANTE,:P258_NRO_COMPROBANTE,:P258_FEC_COMPROBANTE,',
'            :P258_COD_CLIENTE, :P258_DIRECCION, :P258_COORDENADAS, vmonto_presupuesto,  vcosto_previsto, ',
'            :P258_COSTO_FINAL,:P258_COD_ART_FAC,  :P258_ANULADO, :P258_ESTADO, :P258_CREADO_POR,',
'            :P258_FEC_CREACION,  :P258_PRESUPUESTADO_POR,:P258_FEC_PRESUPUESTADO,:P258_APROBADO_POR,:P258_FEC_APROBACION, ',
'            :P258_RECHAZADO_POR,:P258_FEC_RECHAZO,:P258_FINALIZADO_POR,:P258_FEC_FINALIZADO,:P258_CELULAR_CONTACTO,',
'            :P258_CORREO_CONTACTO,:P258_DATOS_CONTACTO,:P258_COD_VENDEDOR,:P258_PORC_AVANCE,:P258_COD_SUPERVISOR,',
'            :P258_COD_CONDICION,:P258_DURACION_OBRA,:P258_VERIFICADO_POR,:P258_FEC_VERIFICADO,:P258_FEC_TENTA_PROY,',
'            :P258_NOMBRE_PROY,:P258_IND_MANTENIMIENTO,:P258_IND_VRF,',
'            :P258_CERRADO, :P258_COD_MOTIVO_ANU, :P258_COMENTARIO, :P258_FEC_ANULADO, :P258_COD_USUARIO_ANU',
'',
'    FROM SM_OT_OBRA',
'    WHERE cod_empresa = :P_COD_EMPRESA',
'    AND nro_comprobante = :P258_NRO_COMPROBANTE;',
'',
'     if nvl(vcosto_previsto,0)>0 and nvl(vmonto_presupuesto,0)>0 then',
'            :P258_MARGEN_PREVISTO := round(nvl(((nvl(vmonto_presupuesto,1) - nvl(vcosto_previsto,1)) / nvl(vmonto_presupuesto,0))*100,1),2);',
'    else',
'        :P258_MARGEN_PREVISTO:=0;',
'    end if;',
'',
'        :P258_MONTO_PRESUPUESTO:= nvl(vmonto_presupuesto,0);',
'        :P258_COSTO_PREVISTO:= nvl(vcosto_previsto,0);',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'',
'        :P258_TIP_COMPROBANTE := ''OBR'';',
'        :P258_SER_COMPROBANTE := :P258_SER_ORDEN_TRABAJO;',
'        :P258_FEC_COMPROBANTE := sysdate;',
'        :P258_COD_CLIENTE := NULL;',
'        :P258_DIRECCION := NULL;',
'        :P258_COORDENADAS := NULL;',
'        :P258_MONTO_PRESUPUESTO := NULL;',
'        :P258_COSTO_PREVISTO := NULL;',
'        :P258_COSTO_FINAL := NULL;',
'        :P258_COD_ART_FAC := NULL;',
'        :P258_ANULADO := NULL;',
'        :P258_ESTADO := ''N'';',
'        :P258_CREADO_POR := :P_COD_USUARIO;',
'        :P258_FEC_CREACION := sysdate;',
'        :P258_PRESUPUESTADO_POR := NULL;',
'        :P258_FEC_PRESUPUESTADO := NULL;',
'        :P258_APROBADO_POR := NULL;',
'        :P258_FEC_APROBACION := NULL;',
'        :P258_RECHAZADO_POR := NULL;',
'        :P258_FEC_RECHAZO := NULL;',
'        :P258_FINALIZADO_POR := NULL;',
'        :P258_FEC_FINALIZADO := NULL;',
'        :P258_CELULAR_CONTACTO := NULL;',
'        :P258_CORREO_CONTACTO := NULL;',
'        :P258_DATOS_CONTACTO := NULL;',
'        :P258_COD_VENDEDOR := NULL;',
'        :P258_PORC_AVANCE := NULL;',
'        :P258_COD_SUPERVISOR := NULL;',
'        :P258_COD_CONDICION := NULL;',
'        :P258_DURACION_OBRA := NULL;',
'        :P258_VERIFICADO_POR := NULL;',
'        :P258_FEC_VERIFICADO := NULL;',
'        :P258_FEC_TENTA_PROY := NULL;',
'        :P258_NOMBRE_PROY := NULL;',
'        :P258_IND_MANTENIMIENTO := NULL;',
'        :P258_IND_VRF := NULL;',
'        :P258_CERRADO := NULL;',
'        :P258_COD_MOTIVO_ANU := NULL;',
'        :P258_COMENTARIO := NULL;',
'        :P258_FEC_ANULADO := NULL;',
'        :P258_COD_USUARIO_ANU := NULL;',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_FEC_COMPROBANTE,P258_COD_CLIENTE,P258_DIRECCION,P258_COORDENADAS,P258_MONTO_PRESUPUESTO,P258_COSTO_PREVISTO,P258_COSTO_FINAL,P258_COD_ART_FAC,P258_ANULADO,P258_ESTADO,P258_CREADO_POR,P258_FEC_CREACION,P2'
||'58_PRESUPUESTADO_POR,P258_FEC_PRESUPUESTADO,P258_APROBADO_POR,P258_FEC_APROBACION,P258_RECHAZADO_POR,P258_FEC_RECHAZO,P258_FINALIZADO_POR,P258_FEC_FINALIZADO,P258_CELULAR_CONTACTO,P258_DATOS_CONTACTO,P258_COD_VENDEDOR,P258_PORC_AVANCE,P258_COD_SUPERV'
||'ISOR,P258_COD_CONDICION,P258_DURACION_OBRA,P258_VERIFICADO_POR,P258_FEC_VERIFICADO,P258_NOMBRE_PROY,P258_IND_MANTENIMIENTO,P258_IND_VRF,P258_CERRADO,P258_COD_MOTIVO_ANU,P258_FEC_TENTA_PROY,P258_COMENTARIO,P258_FEC_ANULADO,P258_COD_USUARIO_ANU,P258_MA'
||'RGEN_PREVISTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791660206167919)
,p_event_id=>wwv_flow_imp.id(69362685094237003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(70533585985217047)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BTN_GUARDAR_PRO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791968403167922)
,p_event_id=>wwv_flow_imp.id(69362685094237003)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(70533585985217047)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BTN_GUARDAR_PRO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69604315051997350)
,p_event_id=>wwv_flow_imp.id(69362685094237003)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_NRO_COMPROBANTE IS NOT NULL THEN',
'			BEGIN',
'					SELECT round(nvl(sum(tot),0),0)',
'					INTO 	:P258_COSTO_FINAL',
'					FROM (			',
'							SELECT ROUND( (NVL(sum(d.cantidad * d.costo),0))   ,0) tot',
'								FROM inv.st_entsal_cab c,',
'								     inv.st_entsal_det d',
'								WHERE c.cod_empresa= :P_COD_EMPRESA',
'								AND   c.tip_comprobante_ref = :P258_TIP_COMPROBANTE',
'								AND   c.ser_comprobante_ref = :P258_SER_COMPROBANTE',
'								AND   ( c.nro_comprobante_ref = :P258_NRO_COMPROBANTE)',
'								AND   c.cod_empresa = d.cod_empresa',
'								AND   c.num_ent_sal = d.num_ent_sal',
'								AND   c.ser_ent_sal = d.ser_ent_sal',
'								AND   c.tip_ent_sal = d.tip_ent_sal ',
'							',
'                            UNION ALL',
'							SELECT (c.tot_comprobante* nvl(c.tip_cambio,1)) tot',
'							FROM CP_COMPROBANTES_CABECERA c,',
'							     cp_conceptos e ,',
'							     cm_proveedores pr, ',
'							     personas pe',
'							WHERE c.cod_empresa = :P_COD_EMPRESA',
'							AND   c.tip_comprobante_ref = :P258_TIP_COMPROBANTE',
'							AND   c.ser_comprobante_ref = :P258_SER_COMPROBANTE',
'							AND   c.num_comprobante_ref = :P258_NRO_COMPROBANTE ',
'							AND   c.cod_empresa = e.cod_empresa',
'							AND   c.cod_concepto = e.cod_concepto',
'							AND   pr.cod_empresa = c.cod_empresa',
'							AND   pr.cod_proveedor = c.cod_proveedor',
'							AND   pr.cod_persona = pe.cod_persona',
'							AND   NVL(C.ANULADO,''N'')<>''S''',
'						    ',
'                            UNION ALL',
'              SELECT (c.tot_comprobante* nvl(c.tip_cambio,1)) tot',
'              FROM cm_compras_cabecera c ,',
'                   cm_proveedores pr, ',
'                   personas pe',
'              WHERE c.cod_empresa = :P_COD_EMPRESA',
'                AND   c.tip_obra = :P258_TIP_COMPROBANTE',
'                AND   c.ser_obra = :P258_SER_COMPROBANTE',
'                AND   c.nRO_obra = :P258_NRO_COMPROBANTE ',
'                AND   pr.cod_empresa = c.cod_empresa',
'                AND   pr.cod_proveedor = c.cod_proveedor',
'                AND   pr.cod_persona = pe.cod_persona	  ',
'				AND   NVL(C.ESTADO,''N'')<>''A'');',
'			',
'			',
'			EXCEPTION ',
'					WHEN OTHERS THEN',
'						APEX_DEBUG.ERROR(SQLERRM);',
'			END;',
'    END IF;',
'			 ',
'    IF nvl(:P258_MONTO_PRESUPUESTO,0)>0 AND nvl(:P258_COSTO_FINAL,0)>0 THEN',
'	    :P258_MARGEN := round(nvl(((nvl(:P258_MONTO_PRESUPUESTO,1) - nvl(:P258_COSTO_FINAL,1)) / nvl(:P258_MONTO_PRESUPUESTO,0))*100,1),2);',
'    else',
'      :P258_MARGEN :=0;',
'    END IF; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P258_MARGEN := NULL;',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_MONTO_PRESUPUESTO,P258_COSTO_FINAL'
,p_attribute_03=>'P258_COSTO_FINAL,P258_MARGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70528991686217001)
,p_event_id=>wwv_flow_imp.id(69362685094237003)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- PROCEDURE COSTEA --',
'DECLARE',
'	vcosto number;',
'	VM20 number;',
'	VM25 number;',
'	VM30 number;',
'	',
'BEGIN ',
'  ',
'  SELECT sum((O.CANT_EQUI * R.FACTOR * O.CANT_PART)*precio(A.COD_ARTICULO,0))',
'  INTO vcosto',
'	FROM  SM_OBRA_EQUIPOS O,',
'	      SM_RELACION_EQUIPOS R,',
'	      ST_ARTICULOS A',
'	WHERE O.COD_EMPRESA= :P_COD_EMPRESA',
'	AND   O.TIP_COMPROBANTE= :P258_TIP_COMPROBANTE',
'	AND   O.SER_COMPROBANTE= :P258_SER_COMPROBANTE',
'	AND   O.NRO_COMPROBANTE= :P258_NRO_COMPROBANTE',
'	AND   O.COD_EMPRESA = R.COD_EMPRESA',
'	AND   O.COD_EQUIPO = R.COD_EQUIPO',
'	AND   O.COD_PARTE = R.COD_PARTE',
'	AND   R.COD_EMPRESA = A.COD_EMPRESA',
'	AND   R.COD_ARTICULO = A.COD_ARTICULO;',
'',
'	VM20 := vcosto + ( vcosto * 0.2) ;',
'	VM25 := vcosto + ( vcosto * 0.25);',
'	VM30 := vcosto + ( vcosto * 0.3);',
'  ',
'  :P258_TOT_COSTO := vcosto;',
'  :P258_MARGEN20  := VM20;',
'  :P258_MARGEN25  := VM25;',
'  :P258_MARGEN30  := VM30;',
'  ',
'EXCEPTION',
'	WHEN OTHERS THEN',
'	  :P258_TOT_COSTO := NULL;',
'	  :P258_MARGEN20  := NULL;',
'	  :P258_MARGEN25  := NULL;',
'	  :P258_MARGEN30  := NULL;',
'		',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_TOT_COSTO,P258_MARGEN20,P258_MARGEN25,P258_MARGEN30'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69362801500237005)
,p_name=>'DA_ABRIR_REPORT_CPROBRFACPAG'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68513628957865441)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69363025613237007)
,p_event_id=>wwv_flow_imp.id(69362801500237005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_INDICADOR_CPROBRFACPAG := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P258_INDICADOR_CPROBRFACPAG'
,p_attribute_03=>'P258_INDICADOR_CPROBRFACPAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69363177268237008)
,p_event_id=>wwv_flow_imp.id(69362801500237005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66771354117645436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69363280095237009)
,p_event_id=>wwv_flow_imp.id(69362801500237005)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66771354117645436)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69363427080237011)
,p_name=>'DA_CERRAR_CPROBRFACPAG'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69363306979237010)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69363586835237012)
,p_event_id=>wwv_flow_imp.id(69363427080237011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66771354117645436)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69364762065237024)
,p_name=>'DA_ABRIR_FACTURA_CR'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69363682381237013)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69364922752237026)
,p_event_id=>wwv_flow_imp.id(69364762065237024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_NRO_FACTURA_FAC_CR_ED,P258_FECHA_FACTURA_CR_ED,P258_COD_PROVEEDOR_FAC_CR_ED,P258_MONTO_FAC_CR_ED,P258_COD_USUARIO_FAC_CR_ED,P258_FECHA_ALTA_FAC_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69366166605237038)
,p_event_id=>wwv_flow_imp.id(69364762065237024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_NRO_FACTURA_FAC_CR_ED := :P258_NRO_COMPROBANTE;',
'    :P258_FECHA_ALTA_FAC_CR_ED := sysdate;',
'    :P258_COD_USUARIO_FAC_CR_ED := :APP_USER;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P258_NRO_FACTURA_FAC_CR_ED,P258_FECHA_ALTA_FAC_CR_ED,P258_COD_USUARIO_FAC_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69365051836237027)
,p_event_id=>wwv_flow_imp.id(69364762065237024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(69365466307237031)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69365135788237028)
,p_event_id=>wwv_flow_imp.id(69364762065237024)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(69365581824237032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69365365633237030)
,p_event_id=>wwv_flow_imp.id(69364762065237024)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69364049249237017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69365991512237036)
,p_name=>'DA_CERRAR_FACTURA_CR_ED'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69365849123237035)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69366006755237037)
,p_event_id=>wwv_flow_imp.id(69365991512237036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69364049249237017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69366281100237039)
,p_name=>'DA_CREAR_FACTURA'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69365466307237031)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69366405998237041)
,p_event_id=>wwv_flow_imp.id(69366281100237039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_NRO_FACTURA_FAC_CR_ED IS NULL OR',
'        :P258_FECHA_FACTURA_CR_ED IS NULL OR',
'        :P258_COD_PROVEEDOR_FAC_CR_ED IS NULL OR',
'        :P258_MONTO_FAC_CR_ED IS NULL OR',
'        :P258_COD_USUARIO_FAC_CR_ED IS NULL OR',
'        :P258_FECHA_ALTA_FAC_CR_ED  IS NULL ',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_FACTURA := ''1'';',
'',
'        INSERT INTO SM_OBRA_FACT_PROV (COD_EMPRESA,',
'                                       TIP_COMPROBANTE,',
'                                       SER_COMPROBANTE,',
'                                       NRO_COMPROBANTE,',
'                                       NRO_FACTURA,',
'                                       FECHA_FACTURA,',
'                                       COD_PROVEEDOR,',
'                                       MONTO,',
'                                       COD_USUARIO,',
'                                       FECHA_ALTA)',
'',
'        VALUES (:P_COD_EMPRESA,',
'                :P258_TIP_COMPROBANTE,',
'                :P258_SER_COMPROBANTE,',
'                :P258_NRO_COMPROBANTE,',
'                :P258_NRO_FACTURA_FAC_CR_ED,',
'                :P258_FECHA_FACTURA_CR_ED,',
'                :P258_COD_PROVEEDOR_FAC_CR_ED,',
'                :P258_MONTO_FAC_CR_ED,',
'                :P258_COD_USUARIO_FAC_CR_ED,',
'                :P258_FECHA_ALTA_FAC_CR_ED);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE,P258_NRO_FACTURA_FAC_CR_ED,P258_FECHA_FACTURA_CR_ED,P258_COD_PROVEEDOR_FAC_CR_ED,P258_MONTO_FAC_CR_ED,P258_COD_USUARIO_FAC_CR_ED,P258_FECHA_ALTA_FAC_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69366555551237042)
,p_event_id=>wwv_flow_imp.id(69366281100237039)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69366609784237043)
,p_event_id=>wwv_flow_imp.id(69366281100237039)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69366786604237044)
,p_event_id=>wwv_flow_imp.id(69366281100237039)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69364049249237017)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69599932719997306)
,p_name=>'DA_ELIMINAR_FACTURA'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_ELIMINAR_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600186836997308)
,p_event_id=>wwv_flow_imp.id(69599932719997306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600202386997309)
,p_event_id=>wwv_flow_imp.id(69599932719997306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE FROM SM_OBRA_FACT_PROV',
'    WHERE ROWID = :P258_SEQ_ID_ELIMINAR_FACTURA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_ELIMINAR_FACTURA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600393996997310)
,p_event_id=>wwv_flow_imp.id(69599932719997306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69600419405997311)
,p_name=>'DA_ABRIR_FACTURA_ED'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_EDITAR_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600617762997313)
,p_event_id=>wwv_flow_imp.id(69600419405997311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(69365581824237032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600733607997314)
,p_event_id=>wwv_flow_imp.id(69600419405997311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(69365466307237031)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600811748997315)
,p_event_id=>wwv_flow_imp.id(69600419405997311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT NRO_FACTURA,',
'           FECHA_FACTURA,',
'           COD_PROVEEDOR,',
'           MONTO,',
'           COD_USUARIO,',
'           FECHA_ALTA',
'',
'    INTO    :P258_NRO_FACTURA_FAC_CR_ED, :P258_FECHA_FACTURA_CR_ED,',
'            :P258_COD_PROVEEDOR_FAC_CR_ED, :P258_MONTO_FAC_CR_ED,',
'            :P258_COD_USUARIO_FAC_CR_ED, :P258_FECHA_ALTA_FAC_CR_ED ',
'   ',
'    FROM  SM_OBRA_FACT_PROV',
'    WHERE ROWID = :P258_SEQ_ID_EDITAR_FACTURA;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END; '))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_FACTURA'
,p_attribute_03=>'P258_NRO_FACTURA_FAC_CR_ED,P258_FECHA_FACTURA_CR_ED,P258_COD_PROVEEDOR_FAC_CR_ED, :P258_MONTO_FAC_CR_ED,P258_COD_USUARIO_FAC_CR_ED,P258_FECHA_ALTA_FAC_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69600940028997316)
,p_event_id=>wwv_flow_imp.id(69600419405997311)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69364049249237017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69601042970997317)
,p_name=>'DA_EDITAR_FACTURA_ED'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69365581824237032)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69601281455997319)
,p_event_id=>wwv_flow_imp.id(69601042970997317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_NRO_FACTURA_FAC_CR_ED IS NULL OR',
'        :P258_FECHA_FACTURA_CR_ED IS NULL OR',
'        :P258_COD_PROVEEDOR_FAC_CR_ED IS NULL OR',
'        :P258_MONTO_FAC_CR_ED IS NULL OR',
'        :P258_COD_USUARIO_FAC_CR_ED IS NULL OR',
'        :P258_FECHA_ALTA_FAC_CR_ED IS NULL ',
'    ',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0'';',
'        :P258_INDICADOR_REPORT_FACTURA := ''1'';',
'',
'        UPDATE SM_OBRA_FACT_PROV',
'        SET COD_EMPRESA = :P_COD_EMPRESA,',
'            TIP_COMPROBANTE = :P258_TIP_COMPROBANTE,',
'            SER_COMPROBANTE = :P258_SER_COMPROBANTE,',
'            NRO_COMPROBANTE = :P258_NRO_COMPROBANTE,',
'            NRO_FACTURA = :P258_NRO_FACTURA_FAC_CR_ED,',
'            FECHA_FACTURA = :P258_FECHA_FACTURA_CR_ED,',
'            COD_PROVEEDOR = :P258_COD_PROVEEDOR_FAC_CR_ED,',
'            MONTO = :P258_MONTO_FAC_CR_ED,',
'            COD_USUARIO = :P258_COD_USUARIO_FAC_CR_ED,',
'            FECHA_ALTA = :P258_FECHA_ALTA_FAC_CR_ED',
'        WHERE ROWID = :P258_SEQ_ID_EDITAR_FACTURA;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P258_SEQ_ID_EDITAR_FACTURA,P258_NRO_FACTURA_FAC_CR_ED,P258_FECHA_FACTURA_CR_ED,P258_COD_PROVEEDOR_FAC_CR_ED,P258_MONTO_FAC_CR_ED,P258_COD_USUARIO_FAC_CR_ED,P258_FECHA_ALTA_FAC_CR_ED'
,p_attribute_03=>'P258_INDICADOR_ALERT,P258_INDICADOR_REPORT_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69601306690997320)
,p_event_id=>wwv_flow_imp.id(69601042970997317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69601472835997321)
,p_event_id=>wwv_flow_imp.id(69601042970997317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69601517185997322)
,p_event_id=>wwv_flow_imp.id(69601042970997317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69364049249237017)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
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
 p_id=>wwv_flow_imp.id(69602345769997330)
,p_name=>'DA_LLENAR_CAMPOS'
,p_event_sequence=>320
,p_condition_element=>'P258_NRO_COMPROBANTE_RECIBIDO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69602416336997331)
,p_event_id=>wwv_flow_imp.id(69602345769997330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcosto_previsto     number;',
'    vmonto_presupuesto number;',
'BEGIN',
'',
'    SELECT',
'            TIP_COMPROBANTE,',
'            SER_COMPROBANTE,',
'            NRO_COMPROBANTE,',
'            FEC_COMPROBANTE,',
'            COD_CLIENTE,',
'            DIRECCION,',
'            COORDENADAS,',
'            MONTO_PRESUPUESTO,',
'            COSTO_PREVISTO,',
'            COSTO_FINAL,',
'            COD_ART_FAC,',
'            ANULADO,',
'            ESTADO,',
'            CREADO_POR,',
'            FEC_CREACION,',
'            PRESUPUESTADO_POR,',
'            FEC_PRESUPUESTADO,',
'            APROBADO_POR,',
'            FEC_APROBACION,',
'            RECHAZADO_POR,',
'            FEC_RECHAZO,',
'            FINALIZADO_POR,',
'            FEC_FINALIZADO,',
'            CELULAR_CONTACTO,',
'            CORREO_CONTACTO,',
'            DATOS_CONTACTO,',
'            COD_VENDEDOR,',
'            PORC_AVANCE,',
'            SUPERVISOR,',
'            COD_CONDICION,',
'            DURACION_OBRA,',
'            VERIFICADO_POR,',
'            FEC_VERIFICADO,',
'            FEC_TENTA_PROY,',
'            NOMBRE_PROY,',
'            IND_MANTENIMIENTO,',
'            IND_VRF,',
'            CERRADO,',
'            COD_MOTIVO_ANU,',
'            COMENTARIO,',
'            FEC_ANULADO,            ',
'            COD_USUARIO_ANU',
'',
'    INTO',
'            :P258_TIP_COMPROBANTE,',
'            :P258_SER_COMPROBANTE,',
'            :P258_NRO_COMPROBANTE,',
'            :P258_FEC_COMPROBANTE,',
'            :P258_COD_CLIENTE,',
'            :P258_DIRECCION,',
'            :P258_COORDENADAS,',
'            vmonto_presupuesto,---:P258_MONTO_PRESUPUESTO,',
'            vcosto_previsto,---:P258_COSTO_PREVISTO,',
'            :P258_COSTO_FINAL,',
'            :P258_COD_ART_FAC,',
'            :P258_ANULADO,',
'            :P258_ESTADO,',
'            :P258_CREADO_POR,',
'            :P258_FEC_CREACION,',
'            :P258_PRESUPUESTADO_POR,',
'            :P258_FEC_PRESUPUESTADO,',
'            :P258_APROBADO_POR,',
'            :P258_FEC_APROBACION, ',
'            :P258_RECHAZADO_POR,',
'            :P258_FEC_RECHAZO,',
'            :P258_FINALIZADO_POR,',
'            :P258_FEC_FINALIZADO,',
'            :P258_CELULAR_CONTACTO,',
'            :P258_CORREO_CONTACTO,',
'            :P258_DATOS_CONTACTO,',
'            :P258_COD_VENDEDOR,',
'            :P258_PORC_AVANCE,',
'            :P258_COD_SUPERVISOR,',
'            :P258_COD_CONDICION,',
'            :P258_DURACION_OBRA,',
'            :P258_VERIFICADO_POR,',
'            :P258_FEC_VERIFICADO,',
'            :P258_FEC_TENTA_PROY,',
'            :P258_NOMBRE_PROY,',
'            :P258_IND_MANTENIMIENTO,',
'            :P258_IND_VRF,',
'            :P258_CERRADO,',
'            :P258_COD_MOTIVO_ANU,',
'            :P258_COMENTARIO,',
'            :P258_FEC_ANULADO,',
'            :P258_COD_USUARIO_ANU',
'',
'    FROM SM_OT_OBRA',
'    WHERE cod_empresa = :P_COD_EMPRESA',
'    AND (nro_comprobante = :P258_NRO_COMPROBANTE_RECIBIDO ',
'         OR :P258_NRO_COMPROBANTE_RECIBIDO IS NULL);',
'  ',
'    if nvl(vcosto_previsto,0)>0 and nvl(vmonto_presupuesto,0)>0 then',
'            :P258_MARGEN_PREVISTO := round(nvl(((nvl(vmonto_presupuesto,1) - nvl(vcosto_previsto,1)) / nvl(vmonto_presupuesto,0))*100,1),2);',
'    else',
'        :P258_MARGEN_PREVISTO:=0;',
'    end if;',
'',
'',
'        :P258_MONTO_PRESUPUESTO:= nvl(vmonto_presupuesto,0);',
'        :P258_COSTO_PREVISTO:= nvl(vcosto_previsto,0);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_TIP_COMPROBANTE,P258_NRO_COMPROBANTE_RECIBIDO,P258_NRO_COMPROBANTE,P258_FEC_COMPROBANTE,P258_COD_CLIENTE,P258_DIRECCION,P258_COORDENADAS,P258_MONTO_PRESUPUESTO,P258_COSTO_PREVISTO,P258_COSTO_FINAL,P258_COD_ART_FAC,P258_COD_SUPERVISOR,P258_ANULAD'
||'O,P258_ESTADO,P258_CREADO_POR,P258_FEC_CREACION,P258_PRESUPUESTADO_POR,P258_FEC_PRESUPUESTADO,P258_APROBADO_POR,P258_FEC_APROBACION, P258_RECHAZADO_POR,P258_FEC_RECHAZO,P258_FINALIZADO_POR,P258_FEC_FINALIZADO,P258_CELULAR_CONTACTO,P258_CORREO_CONTACT'
||'O,P258_DATOS_CONTACTO,P258_COD_VENDEDOR,P258_PORC_AVANCE,P258_COD_SUPERVISOR,P258_COD_CONDICION,P258_DURACION_OBRA,P258_VERIFICADO_POR,P258_FEC_VERIFICADO,P258_FEC_TENTA_PROY,P258_NOMBRE_PROY,P258_IND_MANTENIMIENTO,P258_IND_VRF,P258_CERRADO,P258_COD_'
||'MOTIVO_ANU,P258_COMENTARIO,P258_FEC_ANULADO,P258_COD_USUARIO_ANU,P258_MARGEN_PREVISTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69602561459997332)
,p_event_id=>wwv_flow_imp.id(69602345769997330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_NRO_COMPROBANTE IS NOT NULL THEN',
'			BEGIN',
'					SELECT round(nvl(sum(tot),0),0)',
'					INTO 	:P258_COSTO_FINAL',
'					FROM (			',
'							SELECT ROUND( (NVL(sum(d.cantidad * d.costo),0))   ,0) tot',
'								FROM inv.st_entsal_cab c,',
'								     inv.st_entsal_det d',
'								WHERE c.cod_empresa= :P_COD_EMPRESA',
'								AND   c.tip_comprobante_ref = :P258_TIP_COMPROBANTE',
'								AND   c.ser_comprobante_ref = :P258_SER_COMPROBANTE',
'								AND   ( c.nro_comprobante_ref = :P258_NRO_COMPROBANTE)',
'								AND   c.cod_empresa = d.cod_empresa',
'								AND   c.num_ent_sal = d.num_ent_sal',
'								AND   c.ser_ent_sal = d.ser_ent_sal',
'								AND   c.tip_ent_sal = d.tip_ent_sal ',
'							',
'                            UNION ALL',
'							SELECT (c.tot_comprobante* nvl(c.tip_cambio,1)) tot',
'							FROM CP_COMPROBANTES_CABECERA c,',
'							     cp_conceptos e ,',
'							     cm_proveedores pr, ',
'							     personas pe',
'							WHERE c.cod_empresa = :P_COD_EMPRESA',
'							AND   c.tip_comprobante_ref = :P258_TIP_COMPROBANTE',
'							AND   c.ser_comprobante_ref = :P258_SER_COMPROBANTE',
'							AND   c.num_comprobante_ref = :P258_NRO_COMPROBANTE ',
'							AND   c.cod_empresa = e.cod_empresa',
'							AND   c.cod_concepto = e.cod_concepto',
'							AND   pr.cod_empresa = c.cod_empresa',
'							AND   pr.cod_proveedor = c.cod_proveedor',
'							AND   pr.cod_persona = pe.cod_persona',
'							AND   NVL(C.ANULADO,''N'')<>''S''',
'						    ',
'                            UNION ALL',
'              SELECT (c.tot_comprobante* nvl(c.tip_cambio,1)) tot',
'              FROM cm_compras_cabecera c ,',
'                   cm_proveedores pr, ',
'                   personas pe',
'              WHERE c.cod_empresa = :P_COD_EMPRESA',
'                AND   c.tip_obra = :P258_TIP_COMPROBANTE',
'                AND   c.ser_obra = :P258_SER_COMPROBANTE',
'                AND   c.nRO_obra = :P258_NRO_COMPROBANTE ',
'                AND   pr.cod_empresa = c.cod_empresa',
'                AND   pr.cod_proveedor = c.cod_proveedor',
'                AND   pr.cod_persona = pe.cod_persona	  ',
'				AND   NVL(C.ESTADO,''N'')<>''A'');',
'			',
'			',
'			EXCEPTION ',
'					WHEN OTHERS THEN',
'						APEX_DEBUG.ERROR(SQLERRM);',
'			END;',
'    END IF;',
'			 ',
'    IF nvl(:P258_MONTO_PRESUPUESTO,0)>0 AND nvl(:P258_COSTO_FINAL,0)>0 THEN',
'	    :P258_MARGEN := round(nvl(((nvl(:P258_MONTO_PRESUPUESTO,1) - nvl(:P258_COSTO_FINAL,1)) / nvl(:P258_MONTO_PRESUPUESTO,0))*100,1),2);',
'    END IF; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE_RECIBIDO,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_MONTO_PRESUPUESTO,P258_COSTO_FINAL'
,p_attribute_03=>'P258_COSTO_FINAL,P258_MARGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69603621576997343)
,p_event_id=>wwv_flow_imp.id(69602345769997330)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- PROCEDURE COSTEA --',
'DECLARE',
'	vcosto number;',
'	VM20 number;',
'	VM25 number;',
'	VM30 number;',
'	',
'BEGIN ',
'  ',
'  SELECT sum((O.CANT_EQUI * R.FACTOR * O.CANT_PART)*precio(A.COD_ARTICULO,0))',
'  INTO vcosto',
'	FROM  SM_OBRA_EQUIPOS O,',
'	      SM_RELACION_EQUIPOS R,',
'	      ST_ARTICULOS A',
'	WHERE O.COD_EMPRESA= :P_COD_EMPRESA',
'	AND   O.TIP_COMPROBANTE= :P258_TIP_COMPROBANTE',
'	AND   O.SER_COMPROBANTE= :P258_SER_COMPROBANTE',
'	AND   O.NRO_COMPROBANTE= :P258_NRO_COMPROBANTE',
'	AND   O.COD_EMPRESA = R.COD_EMPRESA',
'	AND   O.COD_EQUIPO = R.COD_EQUIPO',
'	AND   O.COD_PARTE = R.COD_PARTE',
'	AND   R.COD_EMPRESA = A.COD_EMPRESA',
'	AND   R.COD_ARTICULO = A.COD_ARTICULO;',
'',
'	VM20 := vcosto + ( vcosto * 0.2) ;',
'	VM25 := vcosto + ( vcosto * 0.25);',
'	VM30 := vcosto + ( vcosto * 0.3);',
'  ',
'  :P258_TOT_COSTO := vcosto;',
'  :P258_MARGEN20  := VM20;',
'  :P258_MARGEN25  := VM25;',
'  :P258_MARGEN30  := VM30;',
'  ',
'EXCEPTION',
'	WHEN OTHERS THEN',
'	  :P258_TOT_COSTO := NULL;',
'	  :P258_MARGEN20  := NULL;',
'	  :P258_MARGEN25  := NULL;',
'	  :P258_MARGEN30  := NULL;',
'		',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_TOT_COSTO,P258_MARGEN20,P258_MARGEN25,P258_MARGEN30'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69603151903997338)
,p_name=>'DA_SETEAR_TELEFONO'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69603237679997339)
,p_event_id=>wwv_flow_imp.id(69603151903997338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'	 IF :P258_COD_CLIENTE <>''00000'' THEN',
'		IF :P258_TELEFONO IS NULL THEN',
'					BEGIN',
'    					SELECT T.CODIGO_AREA||''-''||T.NUM_TELEFONO',
'    					 INTO :P258_TELEFONO',
'    					 FROM CC_CLIENTES C, TELEF_PERSONAS T',
'    					WHERE C.COD_PERSONA = T.COD_PERSONA',
'    					AND C.COD_CLIENTE=:P258_COD_CLIENTE',
'    					AND C.COD_EMPRESA = :P_COD_EMPRESA',
'    					AND ROWNUM=1;',
'',
'					EXCEPTION',
'					   WHEN OTHERS THEN',
'					      :P258_TELEFONO := null ;',
'					END;',
'		END IF;',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_COD_CLIENTE'
,p_attribute_03=>'P258_TELEFONO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70529183711217003)
,p_name=>'DA_DESHABILITAR_BOTONES'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529261920217004)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     	IF :P258_NRO_COMPROBANTE IS NULL  OR',
'		    nvl( :P258_CERRADO, ''N'' ) = ''S'' OR',
'		    nvl( :P258_ANULADO, ''N'' ) = ''S''	OR',
'		    nvl( :P258_ESTADO, ''N'' ) = ''R''',
'		THEN',
'',
'            :P258_INDICADOR_BOTONES := ''1'';',
'        ELSE',
'            :P258_INDICADOR_BOTONES := ''0'';',
'        END IF;',
'        ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_NRO_COMPROBANTE,P258_CERRADO,P258_ANULADO,P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_BOTONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529424790217006)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893172271605419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529506523217007)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892936663605417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529665468217008)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893054720605418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529770924217009)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893200330605420)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529864283217010)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893355679605421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70529904997217011)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892792164605415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70531141016217023)
,p_event_id=>wwv_flow_imp.id(70529183711217003)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892849471605416)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70530245737217014)
,p_name=>'DA_HABILITAR_BOTON_ANULAR'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530350993217015)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     	IF nvl( :P258_ANULADO, ''N'' ) <> ''S'' THEN		',
'            :P258_INDICADOR_BOTONES := ''1'';',
'        ELSE',
'            :P258_INDICADOR_BOTONES := ''0'';',
'        END IF;        ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_ANULADO'
,p_attribute_03=>'P258_INDICADOR_BOTONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530427217217016)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893172271605419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530560761217017)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892936663605417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530681620217018)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893054720605418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530751451217019)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893200330605420)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530839045217020)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893355679605421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70530930482217021)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892792164605415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70531015083217022)
,p_event_id=>wwv_flow_imp.id(70530245737217014)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892849471605416)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70531289938217024)
,p_name=>'DA_HABILITAR_BOTONES'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70531368667217025)
,p_event_id=>wwv_flow_imp.id(70531289938217024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	IF :P258_ESTADO = ''P'' THEN',
'		 :P258_INDICADOR_BOTONES := ''2'';',
'	ELSE',
'        :P258_INDICADOR_BOTONES := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_BOTONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532024844217032)
,p_event_id=>wwv_flow_imp.id(70531289938217024)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893172271605419)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BOTONES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532181816217033)
,p_event_id=>wwv_flow_imp.id(70531289938217024)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893200330605420)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BOTONES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532201604217034)
,p_event_id=>wwv_flow_imp.id(70531289938217024)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892792164605415)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BOTONES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532311588217035)
,p_event_id=>wwv_flow_imp.id(70531289938217024)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66892936663605417)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BOTONES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70532456621217036)
,p_name=>'DA_HABILITAR_BOTON_CERRAR'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532545019217037)
,p_event_id=>wwv_flow_imp.id(70532456621217036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_ESTADO = ''C'' THEN			',
'        :P258_INDICADOR_BOTONES := ''3'';',
'    ELSE',
'        :P258_INDICADOR_BOTONES := ''0'';',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
' END;'))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_BOTONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532697628217038)
,p_event_id=>wwv_flow_imp.id(70532456621217036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893054720605418)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BOTONES'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70532708961217039)
,p_name=>'DA_HABILITAR_BOTON_ENTREGA'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532828298217040)
,p_event_id=>wwv_flow_imp.id(70532708961217039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_ESTADO = ''F'' THEN',
'        :P258_INDICADOR_BOTONES := ''4'';',
'    ELSE',
'        :P258_INDICADOR_BOTONES := ''0'';  ',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
' END;'))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_BOTONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70532966306217041)
,p_event_id=>wwv_flow_imp.id(70532708961217039)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66893355679605421)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_BOTONES'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70533004285217042)
,p_name=>'DA_HABILITAR_GASTOS'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70533187441217043)
,p_event_id=>wwv_flow_imp.id(70533004285217042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF	:P258_ESTADO <> ''C'' THEN',
'        :P258_INDICADOR_PESTANIAS := ''1'';',
'    ELSE',
'        :P258_INDICADOR_PESTANIAS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_PESTANIAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117462955096504)
,p_event_id=>wwv_flow_imp.id(70533004285217042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117530185096505)
,p_event_id=>wwv_flow_imp.id(70533004285217042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513457088865439)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117613788096506)
,p_event_id=>wwv_flow_imp.id(70533004285217042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117732152096507)
,p_event_id=>wwv_flow_imp.id(70533004285217042)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513457088865439)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70533777824217049)
,p_name=>'DA_GUARDAR_PROYECTO_CREADO'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70533585985217047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71132387395280402)
,p_event_id=>wwv_flow_imp.id(70533777824217049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar el proyecto?')
,p_attribute_02=>'GUARDAR PROYECTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70533892709217050)
,p_event_id=>wwv_flow_imp.id(70533777824217049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDARPROYECTOCREADO'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71132485131280403)
,p_name=>'DA_BUSCAR_LLAMADAS'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71132565194280404)
,p_event_id=>wwv_flow_imp.id(71132485131280403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'      ',
'    SMOTOBRA.PR_BUSCA_LLAMADAS (:P_COD_EMPRESA,',
'                                :P258_TIP_COMPROBANTE,',
'                                :P258_SER_COMPROBANTE,',
'                                :P258_NRO_COMPROBANTE);',
'',
'    :P258_INDICADOR_REP_SEGUIMIENTO := ''1'';',
'        ',
'    IF nvl( :P258_NRO_ORDEN_ANT, 0 ) <> :P258_NRO_COMPROBANTE THEN',
'        :P258_NRO_ORDEN_ANT := :P258_NRO_COMPROBANTE;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_INDICADOR_REP_SEGUIMIENTO,P258_NRO_ORDEN_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71132708165280406)
,p_event_id=>wwv_flow_imp.id(71132485131280403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66891896756605406)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_REP_SEGUIMIENTO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71134000045280419)
,p_name=>'DA_CARGAR_SEGUIMIENTO'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68069034515884802)
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71135342293280432)
,p_event_id=>wwv_flow_imp.id(71134000045280419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_OBS_SEGUIMIENTO_CR,P258_PORC_AVANCE_SEG_CR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171355703333796109)
,p_event_id=>wwv_flow_imp.id(71134000045280419)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe crear la Obra/Proyecto previamente.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71134171517280420)
,p_event_id=>wwv_flow_imp.id(71134000045280419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71133985334280418)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71134332064280422)
,p_name=>'DA_CERRAR_SEGUIMIENTO_CR'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71134271675280421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71134435408280423)
,p_event_id=>wwv_flow_imp.id(71134332064280422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71133985334280418)
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
 p_id=>wwv_flow_imp.id(71134661996280425)
,p_name=>'DA_GUARDAR_SEGUIMIENTO_BD'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71134510394280424)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71134797851280426)
,p_event_id=>wwv_flow_imp.id(71134661996280425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'	 vnumero NUMBER(12);',
'BEGIN',
'    BEGIN',
'	  SELECT max( nro_movimiento )',
'	    INTO vnumero',
'	    FROM CA_LLAMADAS_SALIENTES',
'	   WHERE cod_empresa = :P_COD_EMPRESA;				',
'	   vnumero := nvl( vnumero, 0 ) + 1;',
'',
'	EXCEPTION',
'	  WHEN NO_DATA_FOUND THEN',
'	    vnumero := 1;',
'',
'	  WHEN OTHERS THEN',
'	    APEX_DEBUG.ERROR(SQLERRM);',
'	END;',
'',
'	INSERT INTO CA_LLAMADAS_SALIENTES (cod_empresa, ',
'                                       tip_movimiento, ',
'                                       nro_movimiento,',
'                                       fec_movimiento,',
'                                       cod_cliente, ',
'                                       tip_compRobante, ',
'                                       ser_comprobante,',
'                                       nro_comprobante, ',
'                                       observacion,',
'                                       cod_usuario, ',
'                                       cod_motivo, ',
'                                       nro_telefono,',
'                                       hora_llamada, ',
'                                       movimiento, ',
'                                       calificacion,                                        ',
'                                       empresa)',
'            VALUES (:P_COD_EMPRESA,',
'                    ''INF'',',
'                    VNUMERO,',
'                    TO_DATE(to_char(SYSDATE,''dd/mm/yyyy''),''dd/mm/yyyy''),',
'                    :P258_COD_CLIENTE,',
'                    ''OBR'',',
'                    :P258_SER_COMPROBANTE,',
'                    :P258_NRO_COMPROBANTE,',
'                    :P258_OBS_SEGUIMIENTO_CR||chr(10)||''Avance:''||:P258_PORC_AVANCE_SEG_CR||''%'',',
'                    :APP_USER,',
'                    ''89'',',
'                    NULL,',
'                    to_char(sysdate,''hh24:mi:ss''),',
'                    ''S'',',
'                    ''3'',',
'                    :P258_DATOS_CONTACTO);',
'',
'	EXCEPTION',
'	  WHEN OTHERS THEN',
'	    APEX_DEBUG.ERROR(SQLERRM);',
'	END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_COD_CLIENTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE,P258_OBS_SEGUIMIENTO_CR,P258_PORC_AVANCE_SEG_CR,APP_USER,P258_DATOS_CONTACTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71135157403280430)
,p_event_id=>wwv_flow_imp.id(71134661996280425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71133985334280418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71135486383280433)
,p_event_id=>wwv_flow_imp.id(71134661996280425)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SMOTOBRA.PR_BUSCA_LLAMADAS (:P_COD_EMPRESA,',
'                                :P258_TIP_COMPROBANTE,',
'                                :P258_SER_COMPROBANTE,',
'                                :P258_NRO_COMPROBANTE);',
'',
'    :P258_INDICADOR_REP_SEGUIMIENTO := ''1'';',
'        ',
'    IF nvl( :P258_NRO_ORDEN_ANT, 0 ) <> :P258_NRO_COMPROBANTE THEN',
'        :P258_NRO_ORDEN_ANT := :P258_NRO_COMPROBANTE;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_INDICADOR_REP_SEGUIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71135065425280429)
,p_event_id=>wwv_flow_imp.id(71134661996280425)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66891896756605406)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_REP_SEGUIMIENTO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71135559767280434)
,p_name=>'DA_HABILITAR_AGENDA'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71135651241280435)
,p_event_id=>wwv_flow_imp.id(71135559767280434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF	:P258_ESTADO <> ''C'' THEN',
'        :P258_INDICADOR_PESTANIAS := ''1'';',
'    ELSE',
'        :P258_INDICADOR_PESTANIAS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_PESTANIAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117807225096508)
,p_event_id=>wwv_flow_imp.id(71135559767280434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072668148884838)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117952253096509)
,p_event_id=>wwv_flow_imp.id(71135559767280434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072668148884838)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72120080159096530)
,p_name=>'DA_HABILITAR_TECNICOS'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72120477505096534)
,p_event_id=>wwv_flow_imp.id(72120080159096530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF:P258_ESTADO <> ''C'' THEN',
'        :P258_INDICADOR_SEC_TECNICOS := ''1'';',
'    ELSE',
'        :P258_INDICADOR_SEC_TECNICOS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_SEC_TECNICOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72120582597096535)
,p_event_id=>wwv_flow_imp.id(72120080159096530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66895778190605445)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_TECNICOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72120600798096536)
,p_event_id=>wwv_flow_imp.id(72120080159096530)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66895778190605445)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_TECNICOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71135964625280438)
,p_name=>'DA_OCULTAR_PESTANIAS_LOAD'
,p_event_sequence=>480
,p_condition_element=>'P258_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71136142846280440)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'--APEX_DEBUG.ERROR(:P258_ESTADO);',
'--APEX_DEBUG.ERROR(:P258_INDICADOR_PESTANIAS);',
'',
'    IF:P258_ESTADO <> ''C'' THEN',
'        :P258_INDICADOR_PESTANIAS := ''1'';',
'       --APEX_DEBUG.ERROR(:P258_INDICADOR_PESTANIAS || ''IF'');',
'        --APEX_DEBUG.ERROR(:P258_INDICADOR_PESTANIAS);',
'    ELSE',
'        :P258_INDICADOR_PESTANIAS := ''0'';',
'        --APEX_DEBUG.ERROR(:P258_INDICADOR_PESTANIAS || ''ELSE'');',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO,P258_INDICADOR_PESTANIAS'
,p_attribute_03=>'P258_INDICADOR_PESTANIAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71136238121280441)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71136640751280445)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513457088865439)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71136752877280446)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71136843293280447)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513457088865439)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71136476766280443)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072668148884838)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72117376828096503)
,p_event_id=>wwv_flow_imp.id(71135964625280438)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68072668148884838)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_PESTANIAS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72119433655096524)
,p_name=>'DA_HABILITAR_ARTICULOS'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72120781017096537)
,p_event_id=>wwv_flow_imp.id(72119433655096524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF:P258_ESTADO <>''C'' THEN',
'        :P258_INDICADOR_SEC_ARTICULOS := ''1'';',
'    ELSE',
'        :P258_INDICADOR_SEC_ARTICULOS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO,P258_INDICADOR_SEC_ARTICULOS'
,p_attribute_03=>'P258_INDICADOR_SEC_ARTICULOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72120889480096538)
,p_event_id=>wwv_flow_imp.id(72119433655096524)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816079293427407)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_ARTICULOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72120979458096539)
,p_event_id=>wwv_flow_imp.id(72119433655096524)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816079293427407)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_ARTICULOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72118053599096510)
,p_name=>'DA_OCULTAR_SECCION_TECNICOS'
,p_event_sequence=>490
,p_condition_element=>'P258_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72118175362096511)
,p_event_id=>wwv_flow_imp.id(72118053599096510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF:P258_ESTADO <> ''C'' THEN',
'        :P258_INDICADOR_SEC_TECNICOS := ''1'';',
'    ELSE',
'        :P258_INDICADOR_SEC_TECNICOS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO'
,p_attribute_03=>'P258_INDICADOR_SEC_TECNICOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72118284210096512)
,p_event_id=>wwv_flow_imp.id(72118053599096510)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66895778190605445)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_TECNICOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72118781131096517)
,p_event_id=>wwv_flow_imp.id(72118053599096510)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66895778190605445)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_TECNICOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72118805315096518)
,p_name=>'DA_OCULTAR_SECCION_ARTICULOS'
,p_event_sequence=>500
,p_condition_element=>'P258_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72118945833096519)
,p_event_id=>wwv_flow_imp.id(72118805315096518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF:P258_ESTADO <>''C'' THEN',
'        :P258_INDICADOR_SEC_ARTICULOS := ''1'';',
'    ELSE',
'        :P258_INDICADOR_SEC_ARTICULOS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ESTADO,P258_INDICADOR_SEC_ARTICULOS'
,p_attribute_03=>'P258_INDICADOR_SEC_ARTICULOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72119012040096520)
,p_event_id=>wwv_flow_imp.id(72118805315096518)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816079293427407)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_ARTICULOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72119168424096521)
,p_event_id=>wwv_flow_imp.id(72118805315096518)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67816079293427407)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_SEC_ARTICULOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79901974992686301)
,p_name=>'DA_ANTEPROYECTO'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66892792164605415)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79902078112686302)
,p_event_id=>wwv_flow_imp.id(79901974992686301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_ESTADO := ''S'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_03=>'P258_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79902154045686303)
,p_name=>'DA_APROBAR'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66893172271605419)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92973730765193123)
,p_event_id=>wwv_flow_imp.id(79902154045686303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAprobar presupuesto?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79902289067686304)
,p_event_id=>wwv_flow_imp.id(79902154045686303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'  IF :P258_VERIFICADO_POR IS NOT NULL THEN',
'    IF :P258_VERIFICADO_POR IS NOT NULL THEN',
'	  BEGIN',
'		IF nvl(:P258_IND_VRF,''N'')=''N'' AND nvl(:P258_IND_MANTENIMIENTO,''N'') = ''N'' THEN',
'			INSERT INTO st_articulos',
'							 (     cod_articulo, descripcion,cod_grupo_art,cod_marca,cod_rubro,cod_familia,cod_linea,cod_iva,',
'							       ind_maneja_stock,cod_unidad_medida,cod_moneda_costo,cod_empresa,estado,precio_base,cod_moneda_base,',
'							       ind_modifica_precio,alto_cm,largo_cm,ancho_cm,peso_gr,maneja_costo,ind_maneja_lotes,cod_art_corto,',
'							       fec_alta,serie,garantia,serie_garantia,duracion_garantia,cod_usuario,cod_categoria,',
'							       cod_division,en_oferta_web,ind_no_descuento,ind_muestra_web,cod_categoria_ant,cod_linea_ant,COD_RELACION_UM',
'							       ,IND_DISCONTINUADO )',
'			VALUES (:P258_TIP_COMPROBANTE||:P258_SER_COMPROBANTE||''-''||:P258_NRO_COMPROBANTE,:P258_COMENTARIO,	''0'',	''TOA'',	''INST'',	''F25'',	''293'',	''1'',',
'							 	''N'',	''UN'',	''1'',	:P_COD_EMPRESA,	''A'',0,	''1'',',
'							 	''S'',	''0'',	''0'',	''0'',	''0'',	''S'',	''S'',	:P258_TIP_COMPROBANTE||:P258_SER_COMPROBANTE||:P258_NRO_COMPROBANTE,	',
'							 	SYSDATE,	''N'',	''S'',	''N'',	''0'',	USER,	''C67'',	''T8'',	''N'',	''N'',	''S'',	''110'',	''40'',''1'',''S''',
'							);		',
'	',
'	        INSERT INTO inv.sm_obra_articulos',
'	          (cod_empresa, tip_comprobante, ser_comprobante, nro_comprobante, cod_articulo, fecha_alta, cod_usuario)',
'	        VALUES',
'	          (:P_COD_EMPRESA, :P258_TIP_COMPROBANTE, :P258_SER_COMPROBANTE, :P258_NRO_COMPROBANTE, :P258_TIP_COMPROBANTE||:P258_SER_COMPROBANTE||''-''||:P258_NRO_COMPROBANTE, sysdate, :APP_USER);',
'				',
'			 :P258_COD_ART_FAC := :P258_TIP_COMPROBANTE||:P258_SER_COMPROBANTE||''-''||:P258_NRO_COMPROBANTE;',
'		END IF;',
'',
'	    :P258_APROBADO_POR := :APP_USER;',
'	 	:P258_FEC_APROBACION  := sysdate;   ',
'	    :P258_ESTADO :=''C'';',
'        :P258_INDICADOR_ALERT := ''0'';',
'        ',
'',
'	  EXCEPTION',
'			WHEN OTHERS THEN',
'					APEX_DEBUG.ERROR (SQLERRM);',
'	  END;',
'	ELSE',
unistr('        :P258_MENSAJE_ERROR := ''Debe cargar la descripcion del detalle de la factura que se generara como Art\00EDculo.'';'),
'        :P258_INDICADOR_ALERT := ''1'';',
'	END IF;',
'	',
'  ELSE',
'        :P258_MENSAJE_ERROR := ''La Obra debe estar VERIFICADO.'';',
'        :P258_INDICADOR_ALERT := ''1'';',
'  END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P258_VERIFICADO_POR,P258_VERIFICADO_POR,P258_IND_VRF,P258_IND_MANTENIMIENTO,P258_TIP_COMPROBANTE,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE,P258_COMENTARIO,P_COD_EMPRESA,APP_USER'
,p_attribute_03=>'P258_COD_ART_FAC,P258_APROBADO_POR,P258_FEC_APROBACION,P258_ESTADO,P258_MENSAJE_ERROR,P258_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92973558761193121)
,p_event_id=>wwv_flow_imp.id(79902154045686303)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P258_MENSAJE_ERROR.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92973697827193122)
,p_event_id=>wwv_flow_imp.id(79902154045686303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Presupuesto aprobado.'
,p_attribute_02=>'PRESUPUESTO APROBADO'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83792283348167925)
,p_name=>'DA_BUSCAR_COMPROBANTES'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_NRO_COMPROBANTE'
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83792388268167926)
,p_event_id=>wwv_flow_imp.id(83792283348167925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513457088865439)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90900310735307119)
,p_name=>'DA_BUSCAR_AGENDA'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_NRO_COMPROBANTE'
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90900631684307122)
,p_event_id=>wwv_flow_imp.id(90900310735307119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    :P258_INDICADOR_REPORT_AGENDA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P258_INDICADOR_REPORT_AGENDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90900473462307120)
,p_event_id=>wwv_flow_imp.id(90900310735307119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66891616813605404)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83792541857167928)
,p_name=>'DA_BUSCAR_FACTURAS'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_NRO_COMPROBANTE'
,p_condition_element=>'P258_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83792611189167929)
,p_event_id=>wwv_flow_imp.id(83792541857167928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    :P258_INDICADOR_REPORT_FACTURA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE'
,p_attribute_03=>'P258_INDICADOR_REPORT_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83792730025167930)
,p_event_id=>wwv_flow_imp.id(83792541857167928)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68513272574865437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83794212827167945)
,p_name=>'DA_CERRAR_SOL_PAGO'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83794187282167944)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83794396179167946)
,p_event_id=>wwv_flow_imp.id(83794212827167945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(83793506479167938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83794414957167947)
,p_name=>'DA_ABRIR_SOL_PAGO'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_SEQ_ID_PAGO_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90899403201307110)
,p_event_id=>wwv_flow_imp.id(83794414957167947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_SOL_OBSERV,P258_PORC_PAGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83794606443167949)
,p_event_id=>wwv_flow_imp.id(83794414957167947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cod_proveedor varchar2(100);',
'    v_nom_proveedor varchar2(100);',
'',
'BEGIN',
'',
'    SELECT COD_PROVEEDOR',
'    INTO   v_cod_proveedor',
'    FROM   SM_OBRA_FACT_PROV',
'    WHERE  ROWID = :P258_SEQ_ID_PAGO_FACTURA;',
'',
'    SELECT nvl(NOM_RAZ_SOC_PROV,P.nombre)',
'      INTO v_nom_proveedor',
'      FROM cm_proveedores pr, personas p',
'     WHERE pr.cod_empresa = :P_COD_EMPRESA',
'       AND pr.cod_proveedor = v_cod_proveedor',
'       AND pr.cod_persona = p.cod_persona;',
'',
'    :P258_ORDEN_DE := ''A la orden de ''||v_nom_proveedor||''(''||v_cod_proveedor||'')'';',
'    :P258_VALOR_PAGO := 0;',
'    :P258_AVANCE := :P258_PORC_AVANCE;',
'',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_nom_proveedor := NULL;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_SEQ_ID_PAGO_FACTURA'
,p_attribute_03=>'P258_ORDEN_DE ,P258_VALOR_PAGO,P258_AVANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83794525954167948)
,p_event_id=>wwv_flow_imp.id(83794414957167947)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(83793506479167938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90898575269307101)
,p_name=>'DA_ACEPTAR_SOL_PAGO'
,p_event_sequence=>580
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83794787014167950)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90899586783307111)
,p_event_id=>wwv_flow_imp.id(90898575269307101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_ORDEN_DE IS NULL OR',
'       :P258_VALOR_PAGO IS NULL OR',
'       :P258_PORC_PAGO IS NULL OR',
'       :P258_AVANCE IS NULL ',
'    THEN',
'        :P258_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''0''; ',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_ORDEN_DE,P258_VALOR_PAGO,P258_AVANCE,P258_PORC_PAGO'
,p_attribute_03=>'P258_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90899641917307112)
,p_event_id=>wwv_flow_imp.id(90898575269307101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no se encuentren vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
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
 p_id=>wwv_flow_imp.id(90898699928307102)
,p_event_id=>wwv_flow_imp.id(90898575269307101)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF nvl(:P258_VALOR_PAGO,0) > 0 AND :P258_AVANCE IS NOT NULL THEN',
'   --APEX_DEBUG.ERROR (''entra'');    ',
'    DECLARE',
'        vhost varchar2(400) := BS_BUSCA_PARAMETRO(''BS'',''HOST_CORREO'');',
'        vcontenido varchar2(1500);',
'        v_nro_factura varchar2(200);    ',
'    BEGIN',
'        SELECT NRO_FACTURA',
'        INTO v_nro_factura ',
'        FROM   SM_OBRA_FACT_PROV',
'        WHERE  ROWID = :P258_SEQ_ID_PAGO_FACTURA;',
'',
'        vcontenido := ''Obra Nro: ''|| :P258_SER_COMPROBANTE ||'' - ''|| :P258_NRO_COMPROBANTE ||',
'        				   chr(10)||:P258_ORDEN_DE||',
unistr('                           chr(10)||''Factura N\00BA:''||v_nro_factura|| '),
'                           chr(10)||''Monto Solicitado:''||to_char(:P258_VALOR_PAGO,''999G999G999G999G999'')||',
'                           chr(10)||''Porcentaje de Pago:''||:P258_PORC_PAGO||''%''||',
'                           chr(10)||''Avance de Obras:''||:P258_AVANCE||''%''||',
'                           chr(10)||:P258_SOL_OBSERV||',
'                           chr(10)||''Solicitado por:''||:APP_USER;',
'                 ',
'    	ENVIARCORREO(''mail@ngosaeca.com.py'',''yanini.touchet@ngosaeca.com'',''SOLICITUD DE PAGO A PROVEEDOR'',',
'                     vcontenido,vhost);',
'    	ENVIARCORREO( ''mail@ngosaeca.com.py'',''silvio.alfonso@ngosaeca.com'',''SOLICITUD DE PAGO A PROVEEDOR'',',
'                     vcontenido,vhost);',
'        ENVIARCORREO( ''mail@ngosaeca.com.py'',''armando.cantero@ngosaeca.com'',''SOLICITUD DE PAGO A PROVEEDOR'',',
'                     vcontenido,vhost);                 ',
'        ENVIARCORREO( ''mail@ngosaeca.com.py'',''alma_villalba@ngosaeca.com'',''SOLICITUD DE PAGO A PROVEEDOR'',',
'                     vcontenido,vhost);      ',
'        ENVIARCORREO( ''mail@ngosaeca.com.py'',''rosa_burgos@ngosaeca.com.py'',''SOLICITUD DE PAGO A PROVEEDOR'',',
'                     vcontenido,vhost); ',
'        EnviarCorreo( ''mail@ngosaeca.com.py'',''auxiliar_ganaderia@ngosaeca.com.py'',''SOLICITUD DE PAGO A PROVEEDOR'',',
'                     vcontenido,vhost);           ',
'    END;',
'---------- Agregar como seguimiento',
'    DECLARE ',
'	    vnumero NUMBER(12);',
'        v_nom_cliente varchar2(200);',
'    BEGIN',
'		BEGIN',
'				  Select max( nro_movimiento )',
'				    into vnumero',
'				    from CA_LLAMADAS_SALIENTES',
'				   where cod_empresa = :P_COD_EMPRESA;				',
'				   vnumero := nvl( vnumero, 0 ) + 1;',
'',
'		EXCEPTION',
'',
'			  WHEN NO_DATA_FOUND THEN',
'			    vnumero := 1;',
'			',
'			  WHEN OTHERS THEN',
'			     raise_application_error(-20000,SQLERRM);',
'		END;',
'',
'        SELECT ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'        INTO v_nom_cliente',
'        FROM  cc_clientes c, personas p',
'        WHERE c.cod_empresa = :P_COD_EMPRESA',
'          AND c.cod_cliente = :P258_COD_CLIENTE',
'          AND c.cod_persona = p.cod_persona ;',
' ',
'  		INSERT INTO CA_LLAMADAS_SALIENTES(cod_empresa, tip_movimiento, nro_movimiento ,fec_movimiento,',
'                   cod_cliente, tip_compRobante, ser_comprobante,nro_comprobante, observacion,',
'                   cod_usuario, cod_motivo, nro_telefono,hora_llamada, movimiento, calificacion,',
'                   Nombre , empresa)',
'        VALUES     (''1'',''INF'',VNUMERO,TO_DATE(to_char(SYSDATE,''dd/mm/yyyy''),''dd/mm/yyyy''),:P258_COD_CLIENTE,',
'         			''OBR'',:P258_SER_COMPROBANTE, :P258_NRO_COMPROBANTE,''Solicitud de Pago ''||:P258_ORDEN_DE||chr(10)||'' Monto Solicitado:''||:P258_VALOR_PAGO||''     Avance:''||:P258_AVANCE||''%''||chr(10)||:P258_SOL_OBSERV,',
'                    user,''89'',NULL,to_char(sysdate,''hh24:mi:ss''),''S'',''3'',v_nom_cliente, :P258_DATOS_CONTACTO);',
'',
'	 	IF nvl(:P258_AVANCE,0)> nvl(:P258_PORC_AVANCE,0) THEN',
'	 			:P258_PORC_AVANCE := :P258_AVANCE;',
'	 	END IF;',
'		:P258_PORC_AVANCE := NULL;',
'     	EXCEPTION',
'			WHEN OTHERS THEN',
'			   raise_application_error(-20000,SQLERRM);',
'	    END;       ',
'  ELSE',
'    :P258_PORC_AVANCE := NULL;',
'END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P258_VALOR_PAGO,P258_AVANCE,P258_SEQ_ID_PAGO_FACTURA,P258_SER_COMPROBANTE,P258_NRO_COMPROBANTE,P258_ORDEN_DE,P258_VALOR_PAGO,P258_PORC_PAGO,P258_AVANCE,P258_SOL_OBSERV,APP_USER,P_COD_EMPRESA,P258_COD_CLIENTE,P258_COD_CLIENTE,P258_SER_COMPROBANTE,P258'
||'_NRO_COMPROBANTE,P258_ORDEN_DE,P258_VALOR_PAGO,P258_AVANCE,P258_SOL_OBSERV,P258_DATOS_CONTACTO,P258_AVANCE,P258_PORC_AVANCE'
,p_attribute_03=>'P258_PORC_AVANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90898784839307103)
,p_event_id=>wwv_flow_imp.id(90898575269307101)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(83793506479167938)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90898892148307104)
,p_event_id=>wwv_flow_imp.id(90898575269307101)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Solicitud de pago registrada.'
,p_attribute_02=>'SOLICITUD DE PAGO ENVIADA'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92973989030193125)
,p_name=>'DA_MODIFICAR'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66892936663605417)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974127335193127)
,p_event_id=>wwv_flow_imp.id(92973989030193125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea modificar el proyecto?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974019754193126)
,p_event_id=>wwv_flow_imp.id(92973989030193125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_fec_tentativa DATE;',
'BEGIN',
'',
'    SELECT FEC_TENTA_PROY',
'    INTO v_fec_tentativa',
'    FROM SM_OT_OBRA',
'    WHERE NRO_COMPROBANTE = :P258_NRO_COMPROBANTE;',
'',
'	IF :P258_FEC_TENTA_PROY IS NOT NULL AND v_fec_tentativa <> :P258_FEC_TENTA_PROY  THEN',
'		 :P258_FEC_PRESUPUESTADO := 1 ;',
'		 :P258_PRESUPUESTADO_POR := 2;  ',
'		 :P258_ESTADO := ''N'';',
'         :P258_INDICADOR_ALERT := ''0'';',
'	ELSE',
'         :P258_MENSAJE_ERROR := ''Debe cargar previamente una nueva Fecha Tentativa de Entrega de Presupuesto.'';',
'         :P258_INDICADOR_ALERT := ''1'';',
'	END IF;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P258_NRO_COMPROBANTE,P258_FEC_TENTA_PROY,P258_FEC_TENTA_PROY'
,p_attribute_03=>'P258_FEC_PRESUPUESTADO,P258_PRESUPUESTADO_POR,P258_ESTADO,P258_INDICADOR_ALERT,P258_MENSAJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974239971193128)
,p_event_id=>wwv_flow_imp.id(92973989030193125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P258_MENSAJE_ERROR.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974315671193129)
,p_event_id=>wwv_flow_imp.id(92973989030193125)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Proyecto modificado.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92974491443193130)
,p_name=>'DA_RECHAZAR'
,p_event_sequence=>600
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66893200330605420)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974668021193132)
,p_event_id=>wwv_flow_imp.id(92974491443193130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea rechazar el proyecto?')
,p_attribute_02=>'RECHAZAR PROYECTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974573035193131)
,p_event_id=>wwv_flow_imp.id(92974491443193130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_RECHAZADO_POR := :APP_USER;    ',
'    :P258_FEC_RECHAZO := sysdate; ',
'    :P258_ESTADO :=''R'';',
'    :P258_COMENTARIO :=''Presupuesto Rechazado'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'APP_USER'
,p_attribute_03=>'P258_RECHAZADO_POR,P258_FEC_RECHAZO,P258_ESTADO,P258_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92974755831193133)
,p_name=>'DA_ANULAR'
,p_event_sequence=>610
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66892849471605416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92974916949193135)
,p_event_id=>wwv_flow_imp.id(92974755831193133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea anular el proyecto?')
,p_attribute_02=>'ANULAR PROYECTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92975022227193136)
,p_event_id=>wwv_flow_imp.id(92974755831193133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF nvl( :P258_ANULADO, ''N'' ) = ''N'' and nvl(:P258_ESTADO,''N'') NOT IN ( ''A'',''F'',''V'',''E'') THEN    ',
'',
'    :P258_ESTADO := ''A'';',
'    :P258_ANULADO := ''S'';',
'    :P258_FEC_ANULADO := SYSDATE;',
'    :P258_COD_USUARIO_ANU := :APP_USER;',
'',
'END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_ANULADO,P258_ESTADO'
,p_attribute_03=>'P258_ANULADO,P258_ESTADO,P258_FEC_ANULADO,P258_COD_USUARIO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92975375544193139)
,p_name=>'DA_CERRAR'
,p_event_sequence=>620
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66893054720605418)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92975567148193141)
,p_event_id=>wwv_flow_imp.id(92975375544193139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea cerrar el proyecto?')
,p_attribute_02=>'CERRAR PROYECTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92975695716193142)
,p_event_id=>wwv_flow_imp.id(92975375544193139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --APEX_DEBUG.ERROR(:P258_COSTO_FINAL);',
'    --APEX_DEBUG.ERROR(:P258_PORC_AVANCE);',
'	IF nvl(:P258_COSTO_FINAL,0)>0 AND :P258_PORC_AVANCE = ''100'' THEN ',
'	 :P258_FINALIZADO_POR := :APP_USER;		 ',
'     :P258_FEC_FINALIZADO := SYSDATE;',
'     :P258_ESTADO := ''F'';',
'     :P258_CERRADO :=''S'';     ',
'	 :P258_INDICADOR_ALERT := ''0'';',
'	',
'    ELSE',
'		:P258_MENSAJE_ERROR := ''Debe cargar el Costo Total y Avance 100%'';',
'        :P258_INDICADOR_ALERT := ''1'';',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_COSTO_FINAL,P258_PORC_AVANCE,APP_USER'
,p_attribute_03=>'P258_FINALIZADO_POR,P258_FEC_FINALIZADO,P258_ESTADO,P258_CERRADO,P258_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92975709916193143)
,p_event_id=>wwv_flow_imp.id(92975375544193139)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P258_MENSAJE_ERROR.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92975879226193144)
,p_name=>'DA_ENTREGA'
,p_event_sequence=>630
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66893355679605421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92976164029193147)
,p_event_id=>wwv_flow_imp.id(92975879226193144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea entregarel proyecto?')
,p_attribute_02=>'ENTREGAR PROYECTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92975906567193145)
,p_event_id=>wwv_flow_imp.id(92975879226193144)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_FEC_ENTREGADO IS NULL AND :P258_ESTADO = ''F'' THEN ',
'     :P258_ENTREGADO_POR  := :APP_USER;',
'     :P258_FEC_ENTREGADO := SYSDATE;',
'     :P258_ESTADO := ''E'';',
'     :P258_INDICADOR_ALERT := ''0'';',
'    ELSE',
'      :P258_MENSAJE_ERROR := ''El proyecto ya ha sido entregado.'';',
'      :P258_INDICADOR_ALERT := ''1'';',
'	END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'   '))
,p_attribute_02=>'P258_FEC_ENTREGADO ,P258_ESTADO'
,p_attribute_03=>'P258_ENTREGADO_POR,P258_FEC_ENTREGADO,P258_ESTADO,P258_INDICADOR_ALERT,P258_MENSAJE_ERROR,P258_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92976285200193148)
,p_event_id=>wwv_flow_imp.id(92975879226193144)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P258_MENSAJE_ERROR.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94030759795281206)
,p_name=>'DA_CERRAR_FACTURAR'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94030649256281205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94030860443281207)
,p_event_id=>wwv_flow_imp.id(94030759795281206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92976358394193149)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94031167016281210)
,p_name=>'DA_VALORES_A_FACTURAR'
,p_event_sequence=>650
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94031083167281209)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94031260293281211)
,p_event_id=>wwv_flow_imp.id(94031167016281210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DECLARE',
'    	VTOT_FACT NUMBER(18);',
'    BEGIN',
'    	SELECT  sum(NVL(total,0))',
'    	INTO VTOT_FACT',
'    	FROM inv.VW_OBRAS_COMPROBANTES  C',
'    	WHERE  C.DB=''I''',
'        AND C.TIPO=''INGRESO''',
'        AND C.TIP_OBRA like ''OB%''',
'    	AND to_number(C.NRO_OBRA) = :P258_NRO_COMPROBANTE;',
'    	',
'    	:P258_IMP_PENDIENTE := NVL(:P258_MONTO_PRESUPUESTO,0) - nvl(VTOT_FACT,0);',
'',
'    	EXCEPTION',
'    		WHEN OTHERS THEN ',
'    	    :P258_IMP_PENDIENTE := 0;',
'    	END;',
'	:P258_DESCRIPCION_ARTICULO := NULL;',
'    :P258_IMPORTE := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_NRO_COMPROBANTE,P258_MONTO_PRESUPUESTO'
,p_attribute_03=>'P258_IMP_PENDIENTE,P258_DESCRIPCION_ARTICULO,P258_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94031319840281212)
,p_event_id=>wwv_flow_imp.id(94031167016281210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92976358394193149)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94031400005281213)
,p_name=>'DA_ACEPTAR_FACTURAR'
,p_event_sequence=>660
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94030537201281204)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94031568448281214)
,p_event_id=>wwv_flow_imp.id(94031400005281213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P258_DESCRIPCION_ARTICULO IS NOT NULL THEN ',
'    		IF  NVL(:P258_IMPORTE,0)>0 THEN ',
'    							',
'    		IF  NVL(:P258_IMPORTE,0)<=NVL(:P258_IMP_PENDIENTE,0) THEN ',
'    			BEGIN',
'    				UPDATE st_articulos',
'    				SET precio_base = ROUND(NVL(:P258_IMPORTE - (:P258_IMPORTE/11),0),2),',
'                        descripcion= :P258_DESCRIPCION_ARTICULO',
'     				WHERE cod_empresa = :P_COD_EMPRESA',
'     				AND cod_articulo = :P258_COD_ART_FAC;',
'',
'                    :P258_INDICADOR_ALERT := ''0'';						 				',
'    					',
'    		    EXCEPTION',
'                    WHEN NO_DATA_FOUND THEN',
'                        :P258_INDICADOR_ALERT := ''1'';',
unistr('                        :P258_MENSAJE_ERROR := ''Debe cargar un articulo en la secci\00F3n principal.'';'),
'    				WHEN OTHERS THEN',
'    					APEX_DEBUG.ERROR(SQLERRM);',
'    			END; ',
'    				ELSE',
'                        :P258_INDICADOR_ALERT := ''1'';',
'                        :P258_MENSAJE_ERROR := ''El importe no debe exceder el Importe total Pendiente'';',
'    				END IF;',
'    		ELSE',
'                :P258_INDICADOR_ALERT := ''1'';',
'                :P258_MENSAJE_ERROR := ''Debe cargar correctamente el importe'';',
'    		END IF;',
'    ELSE',
'        :P258_INDICADOR_ALERT := ''1'';',
unistr('        :P258_MENSAJE_ERROR := ''Debe cargar la descripcion de Art\00EDculo'';'),
'',
'    END IF;',
'',
'EXCEPTION',
'	WHEN OTHERS THEN',
'		APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_DESCRIPCION_ARTICULO,P258_IMPORTE,P258_IMP_PENDIENTE,P_COD_EMPRESA,P258_COD_ART_FAC'
,p_attribute_03=>'P258_MENSAJE_ERROR,P258_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94031666311281215)
,p_event_id=>wwv_flow_imp.id(94031400005281213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P258_MENSAJE_ERROR.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94031735339281216)
,p_event_id=>wwv_flow_imp.id(94031400005281213)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92976358394193149)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P258_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94033989684281238)
,p_name=>'DA_SETEAR_FEC_TEN_MOSTRAR'
,p_event_sequence=>720
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_FEC_TENTA_PROY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94034085721281239)
,p_event_id=>wwv_flow_imp.id(94033989684281238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_FEC_TENTA_PROY_MOSTRAR := :P258_FEC_TENTA_PROY;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P258_FEC_TENTA_PROY'
,p_attribute_03=>'P258_FEC_TENTA_PROY_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94034169540281240)
,p_name=>'DA_HABILITAR_FEC_TENT'
,p_event_sequence=>730
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_ESTADO'
,p_condition_element=>'P258_ESTADO'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'C,R,A,F,V,S,E'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94034259607281241)
,p_event_id=>wwv_flow_imp.id(94034169540281240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_FEC_TENTA_PROY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94034554782281244)
,p_event_id=>wwv_flow_imp.id(94034169540281240)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_FEC_TENTA_PROY_MOSTRAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94034354123281242)
,p_event_id=>wwv_flow_imp.id(94034169540281240)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_FEC_TENTA_PROY_MOSTRAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94034411296281243)
,p_event_id=>wwv_flow_imp.id(94034169540281240)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P258_FEC_TENTA_PROY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94034851645281247)
,p_name=>'DA_BUSCAR_TECNICOS'
,p_event_sequence=>740
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P258_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94034930765281248)
,p_event_id=>wwv_flow_imp.id(94034851645281247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SMOTOBRA.PR_CREAR_COL_TECNICOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_NRO_COMPROBANTE => :P258_NRO_COMPROBANTE,',
'                                    PI_SER_COMPROBANTE => :P258_SER_COMPROBANTE,',
'                                    PI_TIP_COMPROBANTE => :P258_TIP_COMPROBANTE);',
'    :P258_INDICADOR_REPORT_TECNICOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN  ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P258_NRO_COMPROBANTE,P258_SER_COMPROBANTE,P258_TIP_COMPROBANTE'
,p_attribute_03=>'P258_INDICADOR_REPORT_TECNICOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94035085602281249)
,p_event_id=>wwv_flow_imp.id(94034851645281247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892540691605413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101170473073670827)
,p_name=>'DA_CERRAR_MAPA'
,p_event_sequence=>750
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(101170318525670826)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101170522179670828)
,p_event_id=>wwv_flow_imp.id(101170473073670827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101170044281670823)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101170629651670829)
,p_name=>'DA_ABRIR_MAPA'
,p_event_sequence=>760
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94034783542281246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101171134252670834)
,p_event_id=>wwv_flow_imp.id(101170629651670829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_COORDENADAS IS NOT NULL THEN',
'        :P258_COORDS := :P258_COORDENADAS;',
'        :P258_ADRESS := :P258_DIRECCION;',
'    ELSE',
'        :P258_COORDS := NULL;',
'        :P258_ADRESS := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_COORDENADAS,P258_DIRECCION'
,p_attribute_03=>'P258_COORDS ,P258_ADRESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101170783661670830)
,p_event_id=>wwv_flow_imp.id(101170629651670829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101170044281670823)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101171213891670835)
,p_name=>'DA_ACEPTAR_UBICACION'
,p_event_sequence=>770
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(101171068907670833)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101171306906670836)
,p_event_id=>wwv_flow_imp.id(101171213891670835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P258_DIRECCION := :P258_ADRESS;',
'    :P258_COORDENADAS := :P258_COORDS;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P258_ADRESS,P258_COORDS'
,p_attribute_03=>'P258_DIRECCION,P258_COORDENADAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101171404640670837)
,p_event_id=>wwv_flow_imp.id(101171213891670835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101170044281670823)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175429731512727005)
,p_name=>'After Dialog Close'
,p_event_sequence=>780
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(175429624844727004)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175429810999727006)
,p_event_id=>wwv_flow_imp.id(175429731512727005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66892309304605411)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(176488845447673714)
,p_name=>'da_carga_archivos'
,p_event_sequence=>800
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(175430099047727008)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(176488918799673715)
,p_event_id=>wwv_flow_imp.id(176488845447673714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  l_url VARCHAR2(4000);',
'BEGIN',
'     inv.smotobra.pr_carga_archivos(pi_cod_empresa => nvl(:P_COD_EMPRESA,''1''),',
'                                     pi_nro_comprobante => nvl(:P258_NRO_COMPROBANTE_RECIBIDO,:P258_NRO_COMPROBANTE),',
'                                     pi_ser_comprobante => nvl(:P258_SER_COMPROBANTE,''A''),',
'                                     pi_tip_comprobante => nvl(:P258_TIP_COMPROBANTE,''OBR''));',
'  ',
'EXCEPTION',
'    when others then',
'                raise_application_error(-20000, sqlerrm );',
'END;',
' '))
,p_attribute_02=>'P258_NRO_COMPROBANTE_RECIBIDO,P258_NRO_COMPROBANTE,P258_SER_COMPROBANTE,P258_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(176491871040673744)
,p_event_id=>wwv_flow_imp.id(176488845447673714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var url = ''f?p=&APP_ID.:552:&APP_SESSION.::NO::P552_TIPO,P552_SERIE,P552_NUMERO:''+$v("P258_TIP_COMPROBANTE")+'','' +$v("P258_SER_COMPROBANTE")+'','' +$v("P258_NRO_COMPROBANTE_RECIBIDO");',
'   ',
'',
'   window.open(url,''_blank'');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64636970197918850)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'----:P258_NRO_COMPROBANTE_RECIBIDO := ''600'';',
'',
'  :P258_COD_EMPRESA := ''1'' ;',
'  :P258_COD_MODULO := ''SM'' ;',
'  :P258_COD_FORMA := ''SMOTOBRA'';',
'  :P258_COD_USUARIO := :P_COD_USUARIO;',
'  :P258_NRO_COMPROBANTE := :P258_NRO_COMPROBANTE_RECIBIDO;',
'',
'  -- CASO DE PRUEBA',
'  --:P258_NRO_COMPROBANTE_RECIBIDO := ''250'';',
'  --:P258_NRO_COMPROBANTE := NULL;',
'',
'  -- INDICADOR REPORTES --',
'  :P258_INDICADOR_SMOBRCOSTOS := ''0'';',
'  :P258_INDICADOR_CPROBRAS := ''0'';',
'  :P258_INDICADOR_CPROBRFACPAG := ''0'';',
'',
'  :P258_SER_ORDEN_TRABAJO    := BS_BUSCA_PARAMETRO ( :P258_COD_MODULO, ''SERIE_ORDEN_TRAB'' ) ;',
'  :P258_RUBRO_MO           := BS_BUSCA_PARAMETRO ( :P258_COD_MODULO, ''RUBRO_MANO_OBRA''  ) ;',
'  :P258_CLIENTE_CONTADO     := BS_BUSCA_PARAMETRO ( :P258_COD_MODULO, ''CLIENTE_CONTADO''  ) ;',
'  :P258_RUBRO_SERV_TECNICO   := BS_BUSCA_PARAMETRO (''CM'', ''RUBRO_SERV_TECNICO'') ;',
'  :P258_COD_MONEDA_BASE     := BS_BUSCA_PARAMETRO (:P258_COD_MODULO, ''COD_MONEDA_BASE''  ) ;',
'  :P258_TIP_MOTIVO_ANULACION := BS_BUSCA_PARAMETRO (:P258_COD_MODULO, ''TIP_ANULACION_OT'' ) ;',
'',
'  :P258_VALOR_FACTURACION := BUSCA_PERMISO (  :P258_COD_EMPRESA, ',
'                                              :P258_COD_FORMA, ',
'                                              :P258_COD_USUARIO, ',
'                                              ''VALOR_FACTURACION'') ;',
'',
'  --* solo permite modificar fecha de entrega de ot anteriores al 2003',
' :P258_MODIFICA_FECHA_ENTREGA := BUSCA_PERMISO      ( :P258_COD_EMPRESA, ',
'                                                      ''SMORDMAN'', ',
'                                                      :P258_COD_USUARIO, ',
'                                                      ''MODIFICA FECHA ENTREGA'');',
'',
' :P258_REIMPRIME := BUSCA_PERMISO (   :P258_COD_EMPRESA, ',
'                                      ''SMORDMAN'', ',
'                                      :P258_COD_USUARIO, ',
'                                      ''REIMPRIME'' );  ',
' ',
'  :P258_FECHAOT := BUSCA_PERMISO( :P258_COD_EMPRESA, ',
'                                  ''SMORDMAN'', ',
'                                  :P258_COD_USUARIO, ',
'                                  ''MODIFICA_FECHAOT'' );',
'',
'  :P258_CONSULTA_FECHAOT:= BUSCA_PERMISO( :P258_COD_EMPRESA, ',
'                                          ''SMORDMAN'', ',
'                                          :P258_COD_USUARIO, ',
'                                          ''CONSULTA_FECHAOT'' ) ;  ',
' ',
' :P258_CONSULTA_FEC_CIERRE := BUSCA_PERMISO ( :P258_COD_EMPRESA, ',
'                                              ''SMORDMAN'', ',
'                                              :P258_COD_USUARIO, ',
'                                              ''CONSULTA_FEC_CIERRE'' ) ;',
'',
' :P258_CARGA_NROOT := 	BUSCA_PERMISO (   :P258_COD_EMPRESA,',
'                                          ''SMORDMAN'', ',
'                                          :P258_COD_USUARIO,',
'                                          ''CARGA_NROOT'' ) ;                                                   ',
'                                               ',
'',
'-- CARGAR COLLECTION DE EQUIPOS --                                                                                                   ',
'SMOTOBRA.PR_CARGA_EQUIPOS (:P_COD_EMPRESA);     ',
'',
':P258_RB := ''1'';',
'--propiedades;',
'--estado;',
'',
'      DECLARE',
'         viva VARCHAR2(5) ;',
'      BEGIN',
'         viva := BS_BUSCA_PARAMETRO (:P258_COD_MODULO, ''COD_IVA_GRAVADA''  ) ;',
'         SELECT porc_iva_venta',
'         INTO :P258_PORC_IVA',
'         FROM st_iva',
'         WHERE cod_iva = viva;',
'',
'      EXCEPTION',
'         WHEN OTHERS THEN',
'             raise_application_error(-20000, sqlerrm );',
'            :P258_PORC_IVA := 0 ;',
'      END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'    raise_application_error(-20000, sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(66895635047605444)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_COLLECTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SMOTOBRA.PR_CREAR_COL_TECNICOS (PI_COD_EMPRESA => NVL(:P_COD_EMPRESA,''1''),',
'                                    PI_NRO_COMPROBANTE => NVL(:P258_NRO_COMPROBANTE_RECIBIDO,:P258_NRO_COMPROBANTE),',
'                                    PI_SER_COMPROBANTE => NVL(:P258_SER_COMPROBANTE,''A''),',
'                                    PI_TIP_COMPROBANTE => NVL(:P258_TIP_COMPROBANTE,''OBR''));',
'    --SMOTOBRA.PR_CREAR_COL_ARTICULOS;',
'    --SMOTOBRA.PR_CREAR_COL_AGENDA;',
'    --SMOTOBRA.PR_CREAR_COL_FACTURAS (:P_COD_EMPRESA, :P258_NRO_COMPROBANTE);',
'',
'    SMOTOBRA.PR_CARGA_ARCHIVOS (    PI_COD_EMPRESA => NVL(:P_COD_EMPRESA,''1''),',
'                                    PI_NRO_COMPROBANTE => NVL(:P258_NRO_COMPROBANTE_RECIBIDO,:P258_NRO_COMPROBANTE),',
'                                    PI_SER_COMPROBANTE => NVL(:P258_SER_COMPROBANTE,''A''),',
'                                    PI_TIP_COMPROBANTE => NVL(:P258_TIP_COMPROBANTE,''OBR''));',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,  sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68514154064865446)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P258_NRO_COMPROBANTE_RECIBIDO IS NULL THEN',
'        :P258_COD_EMPRESA := :P_COD_EMPRESA;',
'        :P258_COD_USUARIO := :P_COD_USUARIO;',
'        :P258_TIP_COMPROBANTE := ''OBR'';',
'        :P258_SER_COMPROBANTE := :P258_SER_ORDEN_TRABAJO;',
'        :P258_FEC_COMPROBANTE := sysdate;',
'        :P258_CREADO_POR := :P_COD_USUARIO;',
'        :P258_FEC_CREACION := sysdate;',
'        :P258_ESTADO := ''N'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'    raise_application_error(-20000, sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71132231208280401)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_PROYECTO_CREADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vnumero number;',
'BEGIN',
'if :P258_NRO_COMPROBANTE is null  then',
'      BEGIN',
'        SELECT max( nvl(nro_comprobante,0 ))+1',
'          INTO vnumero',
'          FROM SM_OT_OBRA',
'         WHERE cod_empresa = :P_COD_EMPRESA',
'           AND tip_comprobante = :P258_TIP_COMPROBANTE',
'           AND ser_comprobante = :P258_SER_COMPROBANTE;       ',
'      EXCEPTION',
'        WHEN no_data_found THEN',
'          vnumero := 1;',
'      END;',
'     :P258_NRO_COMPROBANTE:= vnumero;',
'else',
'    vnumero:=:P258_NRO_COMPROBANTE;',
'end if;',
'    SMOTOBRA.PR_GUARDAR_PROYECTO ( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                   PI_TIP_COMPROBANTE => :P258_TIP_COMPROBANTE,',
'                                   PI_SER_COMPROBANTE => :P258_SER_COMPROBANTE,',
'                                   PI_NRO_COMPROBANTE => vnumero,----:P258_NRO_COMPROBANTE,',
'                                   PI_FEC_COMPROBANTE => :P258_FEC_COMPROBANTE,',
'                                   PI_COD_CLIENTE => :P258_COD_CLIENTE,',
'                                   PI_DIRECCION => :P258_DIRECCION,',
'                                   PI_COORDENADAS => :P258_COORDENADAS,',
'                                   PI_MONTO_PRESUPUESTO => :P258_MONTO_PRESUPUESTO,',
'                                   PI_COSTO_PREVISTO => :P258_COSTO_PREVISTO,',
'                                   PI_COSTO_FINAL => :P258_COSTO_FINAL,',
'                                   PI_COD_ART_FAC => :P258_COD_ART_FAC,',
'                                   PI_ANULADO => :P258_ANULADO,',
'                                   PI_ESTADO => :P258_ESTADO,',
'                                   PI_CREADO_POR => :P258_CREADO_POR,',
'                                   PI_FEC_CREACION => :P258_FEC_CREACION,',
'                                   PI_PRESUPUESTADO_POR => :P258_PRESUPUESTADO_POR,',
'                                   PI_FEC_PRESUPUESTADO => :P258_FEC_PRESUPUESTADO,',
'                                   PI_APROBADO_POR => :P258_APROBADO_POR,',
'                                   PI_FEC_APROBACION => :P258_FEC_APROBACION, ',
'                                   PI_RECHAZADO_POR => :P258_RECHAZADO_POR,',
'                                   PI_FEC_RECHAZO => :P258_FEC_RECHAZO,',
'                                   PI_FINALIZADO_POR => :P258_FINALIZADO_POR,',
'                                   PI_FEC_FINALIZADO => :P258_FEC_FINALIZADO,',
'                                   PI_CELULAR_CONTACTO => :P258_CELULAR_CONTACTO,',
'                                   PI_CORREO_CONTACTO => :P258_CORREO_CONTACTO,',
'                                   PI_DATOS_CONTACTO => :P258_DATOS_CONTACTO,',
'                                   PI_COD_VENDEDOR => :P258_COD_VENDEDOR,',
'                                   PI_PORC_AVANCE => :P258_AVANCE,',
'                                   PI_COD_SUPERVISOR => :P258_COD_SUPERVISOR,',
'                                   PI_COD_CONDICION => :P258_COD_CONDICION,',
'                                   PI_DURACION_OBRA => :P258_DURACION_OBRA,',
'                                   PI_VERIFICADO_POR => :P258_VERIFICADO_POR,',
'                                   PI_FEC_VERIFICADO => :P258_FEC_VERIFICADO, ',
'                                   PI_FEC_TENTA_PROY => TO_DATE(:P258_FEC_TENTA_PROY, ''DD/MM/YYYY''),',
'                                   PI_NOMBRE_PROY => :P258_NOMBRE_PROY,',
'                                   PI_IND_MANTENIMIENTO => :P258_IND_MANTENIMIENTO,',
'                                   PI_IND_VRF => :P258_IND_VRF,',
'                                   PI_CERRADO => :P258_CERRADO,',
'                                   PI_COD_MOTIVO_ANU => :P258_COD_MOTIVO_ANU,',
'                                   PI_COMENTARIO => :P258_COMENTARIO,',
'                                   PI_FEC_ANULADO => :P258_FEC_ANULADO,',
'                                   PI_COD_USUARIO_ANU => :P258_COD_USUARIO_ANU);',
'',
'',
'    SMOTOBRA.PR_CONFIRMAR_ACCION_TECNICO ( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                           PI_TIP_COMPROBANTE => :P258_TIP_COMPROBANTE,',
'                                           PI_SER_COMPROBANTE => :P258_SER_COMPROBANTE,',
'                                           PI_NRO_COMPROBANTE => :P258_NRO_COMPROBANTE);                           ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        ROLLBACK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ups!... Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDARPROYECTOCREADO'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00A1Datos guardados exitosamente!'),
unistr('Obra N\00BA &P258_NRO_COMPROBANTE.')))
);
wwv_flow_imp.component_end;
end;
/
