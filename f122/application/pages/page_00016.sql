prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Listado de OTS entregadas'
,p_alias=>'LISTADO-OTS-ENTREGADAS'
,p_step_title=>'Listado de OTS entregadas'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bt_ejecutar{',
'    margin-top: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230512144425'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13900384465572448)
,p_plug_name=>'Listado de OTS entregadas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968075965783234)
,p_plug_name=>'Principal'
,p_parent_plug_id=>wwv_flow_imp.id(13900384465572448)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13895665399572401)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(13900384465572448)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13896602299572411)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(13900384465572448)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_empresa, c.nro_comprobante, c.cod_cliente,',
'      decode( nvl( anulado, ''N'' ), ''S'', ''A N U L A D A'', c.nom_cliente ) nom_cliente, c.direccion, c.telefono, c.ruc,',
'      c.fec_comprobante, c.fec_cierre, nvl(c.cod_articulo,c.cod_articulo_call) cod_articulo,',
'       a.descripcion, c.cod_familia, nvl(garantia_ot,c.garantia)garantia, ',
'       c.tip_comprobante, c.ser_comprobante,',
'      c.cerrado,',
'c.cod_proveedor, C.CONT_OT,  NVL(C.ENTREGADO_POR,RETIRADO_POR)  cod_usuario,',
'C.ind_retirado, c.ind_entrega, ORI.DESCRIPCION ORIGEN',
' from vt_ordenes_trabajo c, st_articulos a, monedas m, sucursales s,',
'  tipos_comprobantes tc, cc_clientes cl, personas p, VT_ORIGENES ORI',
'      ',
'where c.cod_empresa = :P16_COD_EMPRESA_VAR',
'  --and ( :p_ser_comprobante IS NULL OR c.ser_comprobante = :p_ser_comprobante )',
' -- and ( :p_cod_familia IS NULL OR a.cod_familia = :p_cod_familia )',
'  --and ( :p_cod_linea IS NULL OR a.cod_linea = :p_cod_linea )',
'  --and ( :p_cod_marca IS NULL OR a.cod_marca = :p_cod_marca )',
'  and ( :P16_COD_DISTRIBUIDOR IS NULL OR c.cod_distribuidor = :P16_COD_DISTRIBUIDOR )',
'  --and ( :p_cod_articulo IS NULL OR c.cod_articulo = :p_cod_articulo )',
'  and ( :P16_COD_CLIENTE IS NULL OR c.cod_cliente = :P16_COD_CLIENTE )',
'  and ( ( :P16_FEC_INICIAL IS NULL OR :P16_FEC_FINAL IS NULL ) OR',
'          nvl(c.fec_entrega,fecha_retirado) between to_date(:P16_FEC_INICIAL) and to_date(:P16_FEC_FINAL ))',
'  AND (NVL(C.ENTREGADO_POR,RETIRADO_POR) = :P16_COD_USUARIO OR :P16_COD_USUARIO IS NULL)',
'  and c.cod_empresa = tc.cod_empresa',
'  and nvl( c.tip_comprobante, ''DFL'' ) = tc.tip_comprobante',
'  --and ( :p_cod_sucursal IS NULL OR ''01'' = :p_cod_sucursal )',
'  and m.cod_moneda = ''1''',
'  AND C.COD_ORIGEN=ORI.COD_ORIGEN',
'AND C.COD_EMPRESA=ORI.COD_EMPRESA',
'AND ORI.ORIGEN=''STNGO''',
'  and c.cod_empresa = s.cod_empresa',
'  and (c.cod_origen = :P16_COD_ORIGEN or :P16_COD_ORIGEN is null)',
'  and ''01'' = s.cod_sucursal',
'  and c.cod_empresa = cl.cod_empresa',
'  and c.cod_cliente = cl.cod_cliente',
'  and cl.cod_persona = p.cod_persona',
'  and c.cod_empresa = a.cod_empresa',
'  and NVL(c.cod_articulo, C.COD_ARTICULO_CALL) = a.cod_articulo',
'  AND   NVL(C.IND_ENTREGA,''N'')=''S''',
'and    nvl(C.ind_retirado,''N'')<>''S'' ',
'',
'union all',
'select c.cod_empresa, c.nro_comprobante, c.cod_cliente,',
'      decode( nvl( anulado, ''N'' ), ''S'', ''A N U L A D A'', c.nom_cliente ) nom_cliente, c.direccion, c.telefono, c.ruc,',
'      c.fec_comprobante, c.fec_cierre, nvl(c.cod_articulo,c.cod_articulo_call) cod_articulo,',
'       a.descripcion, c.cod_familia, nvl(garantia_ot,c.garantia)garantia, ',
'       c.tip_comprobante, c.ser_comprobante,',
'      c.cerrado,',
'c.cod_proveedor, C.CONT_OT,  NVL(RETIRADO_POR,C.ENTREGADO_POR)  cod_usuario,',
'C.ind_retirado, c.ind_entrega, ORI.DESCRIPCION ORIGEN',
' from vt_ordenes_trabajo c, st_articulos a, monedas m, sucursales s,',
'  tipos_comprobantes tc, cc_clientes cl, personas p, VT_ORIGENES ORI',
'      ',
'where c.cod_empresa = :P16_COD_EMPRESA_VAR',
' -- and ( :p_ser_comprobante IS NULL OR c.ser_comprobante = :p_ser_comprobante )',
' -- and ( :p_cod_familia IS NULL OR a.cod_familia = :p_cod_familia )',
' -- and ( :p_cod_linea IS NULL OR a.cod_linea = :p_cod_linea )',
'--  and ( :p_cod_marca IS NULL OR a.cod_marca = :p_cod_marca )',
'  and ( :P16_COD_DISTRIBUIDOR IS NULL OR c.cod_distribuidor = :P16_COD_DISTRIBUIDOR )',
'--  and ( :p_cod_articulo IS NULL OR c.cod_articulo = :p_cod_articulo )',
'  and ( :P16_COD_CLIENTE IS NULL OR c.cod_cliente = :P16_COD_CLIENTE )',
'  and ( ( :P16_FEC_INICIAL IS NULL OR :P16_FEC_FINAL IS NULL ) OR',
'          nvl(trunc(fecha_retirado),c.fec_entrega) between to_date(:P16_FEC_INICIAL) and to_date(:P16_FEC_FINAL ))',
'  AND (NVL(RETIRADO_POR,C.ENTREGADO_POR) = :P16_COD_USUARIO OR :P16_COD_USUARIO IS NULL)',
'  and c.cod_empresa = tc.cod_empresa',
'  and nvl( c.tip_comprobante, ''DFL'' ) = tc.tip_comprobante',
'  --and ( :p_cod_sucursal IS NULL OR ''01'' = :p_cod_sucursal )',
'  and m.cod_moneda = ''1''',
'  AND C.COD_ORIGEN=ORI.COD_ORIGEN',
'AND C.COD_EMPRESA=ORI.COD_EMPRESA',
'AND ORI.ORIGEN=''STNGO''',
'  and c.cod_empresa = s.cod_empresa',
'  and (c.cod_origen = :P16_COD_ORIGEN or :P16_COD_ORIGEN is null)',
'  and ''01'' = s.cod_sucursal',
'  and c.cod_empresa = cl.cod_empresa',
'  and c.cod_cliente = cl.cod_cliente',
'  and cl.cod_persona = p.cod_persona',
'  and c.cod_empresa = a.cod_empresa',
'  and NVL(c.cod_articulo, C.COD_ARTICULO_CALL) = a.cod_articulo',
'  --AND   NVL(C.Ind_Facturado,''N'')<>''S''',
'and    nvl(C.ind_retirado,''N'')=''S'' ',
'',
'order by 1, 2'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P16_COD_USUARIO,P16_COD_DISTRIBUIDOR,P16_COD_EMPRESA_VAR,P16_COD_CLIENTE,P16_COD_ORIGEN,P16_FEC_INICIAL,P16_FEC_FINAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(13896736896572412)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>13896736896572412
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13896830179572413)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13896919085572414)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00FAmero OT')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897080228572415)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897152145572416)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897236711572417)
,p_db_column_name=>'DIRECCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897312193572418)
,p_db_column_name=>'TELEFONO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897431067572419)
,p_db_column_name=>'RUC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897530125572420)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897602306572421)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897704360572422)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897871075572423)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13897987627572424)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898006682572425)
,p_db_column_name=>'GARANTIA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898165733572426)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898253439572427)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898348633572428)
,p_db_column_name=>'CERRADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cerrado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898461081572429)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898594286572430)
,p_db_column_name=>'CONT_OT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cont Ot'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898698585572431)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898752557572432)
,p_db_column_name=>'IND_RETIRADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ind Retirado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898809215572433)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13898920245572434)
,p_db_column_name=>'ORIGEN'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13977251817095117)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139773'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:ORIGEN:COD_ARTICULO:DESCRIPCION:COD_USUARIO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13900167244572446)
,p_plug_name=>'TOTAL'
,p_parent_plug_id=>wwv_flow_imp.id(13900384465572448)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5968896241783242)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_button_name=>'BT_EJECUTAR'
,p_button_static_id=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5968139166783235)
,p_name=>'P16_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRPLACA',
'select cod_usuario R, cod_usuario|| '' - ''|| nombre D',
'from usuarios u, personas p',
'where   u.cod_persona=p.cod_persona',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5968268853783236)
,p_name=>'P16_COD_DISTRIBUIDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5968336637783237)
,p_name=>'P16_COD_TECNICO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  t.cod_tecnico R, t.cod_tecnico ||'' - ''||p.nombre D',
'  from vt_tecnicos t, personas p ',
' where t.cod_empresa = :P_COD_EMPRESA',
'   and t.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5968498579783238)
,p_name=>'P16_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5968547941783239)
,p_name=>'P16_COD_ORIGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_origen R, cod_origen||'' - ''|| descripcion D',
'from vt_origenes ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5968684948783240)
,p_name=>'P16_FEC_INICIAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(5968780997783241)
,p_name=>'P16_FEC_FINAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5968075965783234)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(13895845634572403)
,p_name=>'P16_COD_USUARIO_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13895940227572404)
,p_name=>'P16_COD_EMPRESA_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896021161572405)
,p_name=>'P16_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896137848572406)
,p_name=>'P16_COD_MODULO_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896298538572407)
,p_name=>'P16_NOM_EMPRESA_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896334816572408)
,p_name=>'P16_NOM_SUCURSAL_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13899099713572435)
,p_name=>'P16_COD_MONEDA_BASE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13899125602572436)
,p_name=>'P16_COD_MONEDA_US'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13899271636572437)
,p_name=>'P16_COD_TIP_CAMBIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13899367461572438)
,p_name=>'P16_COD_TIP_SENIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13899435260572439)
,p_name=>'P16_SALDO_INICIAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13899952890572444)
,p_name=>'P16_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13900167244572446)
,p_prompt=>'Total de productos'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14596447135343816)
,p_name=>'P16_AUX_MSJ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13895665399572401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5968960854783243)
,p_name=>'DA_SYSDATE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_FEC_INICIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5969092097783244)
,p_event_id=>wwv_flow_imp.id(5968960854783243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P16_FEC_INICIAL IS NULL THEN',
'        :P16_FEC_FINAL := SYSDATE;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P16_FEC_INICIAL'
,p_attribute_03=>'P16_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13899588948572440)
,p_name=>'DA_BEFOREREPORT'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5968896241783242)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13899635504572441)
,p_event_id=>wwv_flow_imp.id(13899588948572440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--BeforeReport del reporte, hasta el momento no le encuentro uso',
'BEGIN',
'    inv.vtrorent.BeforeReport(P_COD_EMPRESA     => :P16_COD_EMPRESA_VAR,',
'                              P_FEC_INICIAL     => :P16_FEC_INICIAL,',
'                              P_COD_SUCURSAL    => null,',
'                              P_COD_MONEDA_BASE => :P16_COD_MONEDA_BASE,',
'                              P_COD_MONEDA_US   => :P16_COD_MONEDA_US, ',
'                              P_TIP_CAMBIO      => :P16_COD_TIP_CAMBIO,',
'                              P_TIP_SENIA       => :P16_COD_TIP_SENIA,',
'                              P_SALDO_INICIAL   => :P16_SALDO_INICIAL);',
'END;'))
,p_attribute_02=>'P16_COD_EMPRESA_VAR,P16_FEC_INICIAL'
,p_attribute_03=>'P16_COD_MONEDA_BASE,P16_COD_MONEDA_US,P16_COD_TIP_CAMBIO,P16_COD_TIP_SENIA,P16_SALDO_INICIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13900010259572445)
,p_event_id=>wwv_flow_imp.id(13899588948572440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_DATE(:P16_FEC_FINAL) < TO_DATE(:P16_FEC_INICIAL) THEN',
'    :P16_AUX_MSJ := ''La fecha final debe ser mayor que la fecha inicial.'';',
'ELSE',
'    :P16_AUX_MSJ := NULL;',
'    select count(nro_comprobante)',
'    into :P16_TOTAL',
'    from (select c.nro_comprobante',
'         from vt_ordenes_trabajo c, st_articulos a, monedas m, sucursales s,tipos_comprobantes tc, cc_clientes cl, personas p, VT_ORIGENES ORI              ',
'        where c.cod_empresa = :P16_COD_EMPRESA_VAR',
'          and ( :P16_COD_DISTRIBUIDOR IS NULL OR c.cod_distribuidor = :P16_COD_DISTRIBUIDOR )',
'          and ( :P16_COD_CLIENTE IS NULL OR c.cod_cliente = :P16_COD_CLIENTE )',
'          and ( ( :P16_FEC_INICIAL IS NULL OR :P16_FEC_FINAL IS NULL ) OR nvl(c.fec_entrega,fecha_retirado) between to_date(:P16_FEC_INICIAL) and to_date(:P16_FEC_FINAL ))',
'          AND (NVL(C.ENTREGADO_POR,RETIRADO_POR) = :P16_COD_USUARIO OR :P16_COD_USUARIO IS NULL)',
'          and c.cod_empresa = tc.cod_empresa',
'          and nvl( c.tip_comprobante, ''DFL'' ) = tc.tip_comprobante',
'          and m.cod_moneda = ''1''',
'          AND C.COD_ORIGEN=ORI.COD_ORIGEN',
'        AND C.COD_EMPRESA=ORI.COD_EMPRESA',
'        AND ORI.ORIGEN=''STNGO''',
'          and c.cod_empresa = s.cod_empresa',
'          and (c.cod_origen = :P16_COD_ORIGEN or :P16_COD_ORIGEN is null)',
'          and ''01'' = s.cod_sucursal',
'          and c.cod_empresa = cl.cod_empresa',
'          and c.cod_cliente = cl.cod_cliente',
'          and cl.cod_persona = p.cod_persona',
'          and c.cod_empresa = a.cod_empresa',
'          and NVL(c.cod_articulo, C.COD_ARTICULO_CALL) = a.cod_articulo',
'          AND   NVL(C.IND_ENTREGA,''N'')=''S''',
'        and    nvl(C.ind_retirado,''N'')<>''S'' ',
'        union all',
'        select c.nro_comprobante',
'         from vt_ordenes_trabajo c, st_articulos a, monedas m, sucursales s,tipos_comprobantes tc, cc_clientes cl, personas p, VT_ORIGENES ORI              ',
'        where c.cod_empresa = :P16_COD_EMPRESA_VAR',
'          and ( :P16_COD_DISTRIBUIDOR IS NULL OR c.cod_distribuidor = :P16_COD_DISTRIBUIDOR )',
'          and ( :P16_COD_CLIENTE IS NULL OR c.cod_cliente = :P16_COD_CLIENTE )',
'          and ( ( :P16_FEC_INICIAL IS NULL OR :P16_FEC_FINAL IS NULL ) OR nvl(trunc(fecha_retirado),c.fec_entrega) between to_date(:P16_FEC_INICIAL) and to_date(:P16_FEC_FINAL ))',
'          AND (NVL(RETIRADO_POR,C.ENTREGADO_POR) = :P16_COD_USUARIO OR :P16_COD_USUARIO IS NULL)',
'          and c.cod_empresa = tc.cod_empresa',
'          and nvl( c.tip_comprobante, ''DFL'' ) = tc.tip_comprobante',
'          and m.cod_moneda = ''1''',
'          AND C.COD_ORIGEN=ORI.COD_ORIGEN',
'        AND C.COD_EMPRESA=ORI.COD_EMPRESA',
'        AND ORI.ORIGEN=''STNGO''',
'          and c.cod_empresa = s.cod_empresa',
'          and (c.cod_origen = :P16_COD_ORIGEN or :P16_COD_ORIGEN is null)',
'          and ''01'' = s.cod_sucursal',
'          and c.cod_empresa = cl.cod_empresa',
'          and c.cod_cliente = cl.cod_cliente',
'          and cl.cod_persona = p.cod_persona',
'          and c.cod_empresa = a.cod_empresa',
'          and NVL(c.cod_articulo, C.COD_ARTICULO_CALL) = a.cod_articulo',
'        and    nvl(C.ind_retirado,''N'')=''S'');',
'END IF;        '))
,p_attribute_02=>'P16_COD_USUARIO,P16_COD_DISTRIBUIDOR,P16_COD_EMPRESA_VAR,P16_COD_CLIENTE,P16_COD_ORIGEN,P16_FEC_INICIAL,P16_FEC_FINAL'
,p_attribute_03=>'P16_TOTAL,P16_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14596576589343817)
,p_event_id=>wwv_flow_imp.id(13899588948572440)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P16_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P16_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13899727649572442)
,p_event_id=>wwv_flow_imp.id(13899588948572440)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13896602299572411)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P16_AUX_MSJ'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13900215011572447)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
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
 p_id=>wwv_flow_imp.id(13895750870572402)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE FORM',
':P_COD_MODULO := ''VT'';',
'',
'--INICIALIZA GLOBALES',
':P16_COD_USUARIO_VAR := NVL(:P_COD_USUARIO, :APP_USER);',
':P16_COD_EMPRESA_VAR := NVL(:P_COD_EMPRESA, ''1'');',
':P16_NOM_EMPRESA_VAR := NVL(:P_NOM_EMPRESA, NULL);',
':P16_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, ''01'');',
':P16_NOM_SUCURSAL_VAR := NVL(:P_NOM_SUCURSAL, NULL);',
':P16_COD_MODULO_VAR := :P_COD_MODULO;',
'',
'--WHEN NEW FORM INSTANCE',
':P16_FEC_FINAL := sysdate;',
':P16_FEC_INICIAL := sysdate;'))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_imp.component_end;
end;
/
