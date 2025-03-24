prompt --application/pages/page_00308
begin
--   Manifest
--     PAGE: 00308
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
 p_id=>308
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tablero General de Tecnicos - CAPANTEC'
,p_alias=>'CAPANTEC'
,p_step_title=>'Tablero General de Tecnicos - CAPANTEC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function obtenerRegistrosSeleccionados(){',
'  var gridView = apex.region("OTS_GESTION").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'    records = gridView.getSelectedRecords(); // te deja todos los items seleccionados en un arreglo',
'    console.log(''records'', records);',
'    var cod_art = "";',
'    var condicion= "";',
'    var desc_art = "";',
'    var nro_comprobante ="";',
'    var ser_comprobante ="";',
'    var fecha="";',
'    var depositero="";',
'    var tecnico="";',
'    // La variable acum guarda todos los items seleccionados separados por ":"',
'    for (let index = 0; index < records.length; index++) {',
'        if (index == 0) {',
'            cod_art = records[index][4];',
'            condicion = records[index][5];',
'            desc_art = records[index][15];',
'            nro_comprobante = records[index][1];',
'            ser_comprobante = records[index][0];',
'            fecha = records[index][16];',
'            depositero = records[index][18];',
'            tecnico = records[index][17];',
'        }else{',
'            cod_art = records[index][4];',
'            condicion = records[index][5];',
'            desc_art = records[index][15];',
'            nro_comprobante = records[index][1];',
'            ser_comprobante = records[index][0];',
'            fecha = records[index][16];',
'            depositero = records[index][18];',
'            tecnico = records[index][17];',
'        }',
'    }',
'    apex.item(''P308_COD_ART'').setValue(cod_art);',
'    apex.item(''P308_COD_ART'').refresh();',
'    apex.item(''P308_CONDICION'').setValue(condicion);',
'    apex.item(''P308_CONDICION'').refresh();',
'    apex.item(''P308_DESC_ART'').setValue(desc_art);',
'    apex.item(''P308_DESC_ART'').refresh();',
'    apex.item(''P308_NRO_COMPROBANTE_SELECT'').setValue(nro_comprobante);',
'    apex.item(''P308_NRO_COMPROBANTE_SELECT'').refresh();',
'    apex.item(''P308_SER_COMPROBANTE_SELEC'').setValue(ser_comprobante);',
'    apex.item(''P308_SER_COMPROBANTE_SELEC'').refresh();',
'    apex.item(''P308_FECHA'').setValue(fecha);',
'    apex.item(''P308_FECHA'').refresh();',
'    apex.item(''P308_DEPOSITERO'').setValue(depositero);',
'    apex.item(''P308_DEPOSITERO'').refresh();',
'    apex.item(''P308_TECNICO'').setValue(tecnico);',
'    apex.item(''P308_TECNICO'').refresh();',
'    ',
'  } catch (e) {',
'    apex.item(''P308_COD_ART'').setValue('''');',
'    apex.item(''P308_CONDICION'').setValue('''');',
'    apex.item(''P308_DESC_ART'').setValue('''');',
'    apex.item(''P308_NRO_COMPROBANTE_SELECT'').setValue('''');',
'    apex.item(''P308_SER_COMPROBANTE_SELEC'').setValue('''');',
'    apex.item(''P308_FECHA'').setValue('''');',
'    apex.item(''P308_DEPOSITERO'').setValue('''');',
'    apex.item(''P308_TECNICO'').setValue('''');',
'  } finally{',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_COD_ART''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_CONDICION''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_DESC_ART''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_NRO_COMPROBANTE_SELECT''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_SER_COMPROBANTE_SELEC''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_FECHA''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_DEPOSITERO''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_TECNICO''}, { dataType: "text" });',
'  }',
'}',
'',
'function obtenerRegistrosSeleccionado(){',
'  var gridView = apex.region("OTS_SOLICITADAS").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'    records = gridView.getSelectedRecords(); // te deja todos los items seleccionados en un arreglo',
'    console.log(''records'', records);',
'    var art_ot = "";',
'    // La variable acum guarda todos los items seleccionados separados por ":"',
'    for (let index = 0; index < records.length; index++) {',
'        if (index == 0) {',
'            art_ot = records[index][25];',
'        }else{',
'            art_ot = records[index][25];',
'        }',
'    }',
'    apex.item(''P308_ART_OTS_SOL'').setValue(art_ot);',
'    apex.item(''P308_ART_OTS_SOL'').refresh();',
'  } catch (e) {',
'    apex.item(''P308_ART_OTS_SOL'').setValue('''');',
'  } finally{',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_ART_OTS_SOL''}, { dataType: "text" });',
'  }',
'}',
'',
'var nro_ticket = null;',
'',
'function fn_actualiza_datos(p_cod_cliente, p_nro_comprobante, p_ser_comprobante, p_cod_articulo, p_origen, p_garantia) {',
'    apex.navigation.openInNewWindow(apex.util.makeApplicationUrl({',
'                    pageId:370,',
'                    itemNames: ["P370_COD_CLIENTE", "P370_PARAM_NRO_OT", "P370_PARAM_SER_OT", "P370_OPERACION", "P370_COD_ARTICULO_OT", "P370_COD_ARTICULO_OT_1", "P370_NRO_COMPROBANTE_REF", "P370_COD_ORIGEN_AUX","P370_GARANT","P370_NRO_TICKET"],',
'                    itemValues: [p_cod_cliente, p_nro_comprobante, p_ser_comprobante, "MODIFICAR", p_cod_articulo, p_cod_articulo, p_nro_comprobante,p_origen,p_garantia,nro_ticket]',
'                }));',
'',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PAN_GRAL{',
'   background-color:#d0e0f783 !important;}',
'   ',
'.t-Body-content{',
'   background-color:  #487ab8 !important;}',
'',
'',
'  .a-GV-header, .t-Report-colHead, .u-Report-sort a, .a-IRR-headerLink{',
'    background-color: #fff8b7 !important;',
'	  color:darkblue  !important;    }',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FERNANDODI'
,p_last_upd_yyyymmddhh24miss=>'20250324155153'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76655436980945328)
,p_plug_name=>'Panel General de Servicio'
,p_region_name=>'PAN_GRAL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76655247808945326)
,p_plug_name=>'Ots Solicitadas'
,p_region_name=>'OTS_SOLICITADAS'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_USUARIO_PED,',
'       FEC_ALTA,',
'       HORA_ALTA,',
'       ESTADO,',
'       COD_USUARIO_PROC,',
'       FEC_PROCESO,',
'       HORA_PROCESO,',
'       OBSERVACION,',
'       COD_GRUPO,',
'       TIPO,',
'       ORIGEN,',
'       PROCESADO,',
'       SOLICITUD_CREADO_POR,',
'       COD_MOTIVO,',
'       ID_SOLICITUD,',
'       ARTICULO_OT,',
'       CONDICION_OT,',
'       IND_MIGRADO_DM,',
'       FECHA_MIGRADO,',
'       RECHAZADO,',
'       (SELECT  ind_snc',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona) indsnc,',
'        (CASE WHEN TIPO=''E'' AND COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ''ENTREGA TECNICO''',
'               WHEN COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ''SOLICITUD TECNICO''',
'               WHEN TIPO=''E'' THEN ''INGRESO SALON''',
'               WHEN (SELECT  ind_snc',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona) =''S'' THEN ''SNC''',
'               ELSE ''SOLICITUD CAJA'' ',
'               END)TIPO_DESC,',
'       (SELECT  descripcion',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona)articulo,',
'           (select p.posicion',
'    	from CA_UBIC_PRODUCTOS p',
'    	where p.cod_empresa= :P_COD_EMPRESA--''1''',
'    	and p.tip_comprobante=ot.tip_comprobante',
'    	and p.ser_comprobante=ot.ser_comprobante',
'    	and p.nro_comprobante=ot.nro_comprobante) Posicion,',
'        (SELECT  GARANTIA_OT',
'     FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'    WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'    AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'    AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'    AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'    AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'    AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'    and c.cod_empresa=t.cod_empresa',
'    and c.cod_proveedor=t.cod_proveedor',
'    and t.cod_persona=p.cod_persona) garantia,',
'        (SELECT  p.nombre',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona) tecnico',
'from CA_SOLICITUD_OT ot',
'where  ot.cod_empresa = :p_cod_empresa ',
'AND :P308_PROVEEDOR IS NOT NULL ',
'AND NVL(ESTADO,''N'')=''P''',
'AND COD_GRUPO in (''TECNIC'',''TCNPV'') ',
'AND TIPO=''S''',
'AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'from vt_ordenes_trabajo A',
'where A.cod_empresa= :p_cod_empresa',
'and A.tip_comprobante=tip_comprobante',
'and A.ser_comprobante=ser_comprobante',
'and A.nro_comprobante=nro_comprobante',
'and a.cod_proveedor=:P308_PROVEEDOR',
'AND NVL(A.ANULADO,''N'')<>''S''',
'AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'--AND ( (nvl(:CHK_TKT,''N'')=''N'' AND COD_USUARIO_PED <>''TICKETS'') OR nvl(:CHK_TKT,''N'')=''S''  )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ots Solicitadas'
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
 p_id=>wwv_flow_imp.id(223020053611174427)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>223020053611174427
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020137771174428)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020216381174429)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020314186174430)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00BA OT')
,p_column_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:370:P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_OPERACION,P370_NRO_COMPROBANTE_REF,P370_COD_ORIGEN_AUX,P370_GARANT,P370_NRO_TICKET:#SER_COMPROBANTE#,#NRO_COMPROBANTE#,MODIFICAR,#NRO_COMPROBANTE#,,#GARANTIA#,'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020446138174431)
,p_db_column_name=>'COD_USUARIO_PED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Usuario Ped'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020599279174432)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020615280174433)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223107560593404502)
,p_db_column_name=>'TIPO_DESC'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Desc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223107633024404503)
,p_db_column_name=>'ARTICULO'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223107764327404504)
,p_db_column_name=>'POSICION'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Posicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223107860876404505)
,p_db_column_name=>'GARANTIA'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223107902510404506)
,p_db_column_name=>'TECNICO'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Tecnico'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020721804174434)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020865660174435)
,p_db_column_name=>'COD_USUARIO_PROC'
,p_display_order=>130
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario Proc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223020937364174436)
,p_db_column_name=>'FEC_PROCESO'
,p_display_order=>140
,p_column_identifier=>'I'
,p_column_label=>'Fec Proceso'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021018682174437)
,p_db_column_name=>'HORA_PROCESO'
,p_display_order=>150
,p_column_identifier=>'J'
,p_column_label=>'Hora Proceso'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021159516174438)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>160
,p_column_identifier=>'K'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021277395174439)
,p_db_column_name=>'COD_GRUPO'
,p_display_order=>170
,p_column_identifier=>'L'
,p_column_label=>'Cod Grupo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021389807174440)
,p_db_column_name=>'TIPO'
,p_display_order=>180
,p_column_identifier=>'M'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021461799174441)
,p_db_column_name=>'ORIGEN'
,p_display_order=>190
,p_column_identifier=>'N'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021516799174442)
,p_db_column_name=>'PROCESADO'
,p_display_order=>200
,p_column_identifier=>'O'
,p_column_label=>'Procesado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021654107174443)
,p_db_column_name=>'SOLICITUD_CREADO_POR'
,p_display_order=>210
,p_column_identifier=>'P'
,p_column_label=>'Solicitud Creado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021764185174444)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>220
,p_column_identifier=>'Q'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021803936174445)
,p_db_column_name=>'ID_SOLICITUD'
,p_display_order=>230
,p_column_identifier=>'R'
,p_column_label=>'Id Solicitud'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223021949298174446)
,p_db_column_name=>'ARTICULO_OT'
,p_display_order=>240
,p_column_identifier=>'S'
,p_column_label=>'Articulo Ot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223022012874174447)
,p_db_column_name=>'CONDICION_OT'
,p_display_order=>250
,p_column_identifier=>'T'
,p_column_label=>'Condicion Ot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223022185529174448)
,p_db_column_name=>'IND_MIGRADO_DM'
,p_display_order=>260
,p_column_identifier=>'U'
,p_column_label=>'Ind Migrado Dm'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223022288611174449)
,p_db_column_name=>'FECHA_MIGRADO'
,p_display_order=>270
,p_column_identifier=>'V'
,p_column_label=>'Fecha Migrado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223022313092174450)
,p_db_column_name=>'RECHAZADO'
,p_display_order=>280
,p_column_identifier=>'W'
,p_column_label=>'Rechazado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223107474442404501)
,p_db_column_name=>'INDSNC'
,p_display_order=>290
,p_column_identifier=>'X'
,p_column_label=>'Indsnc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(223136247147409688)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2231363'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:ARTICULO:POSICION:FEC_ALTA:HORA_ALTA:GARANTIA:TIPO_DESC:TIPO:ORIGEN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77977206623694306)
,p_plug_name=>unistr('Ots en Gesti\00F3n')
,p_region_name=>'OTS_GESTION'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIP_COMPROBANTE,SER_COMPROBANTE||NRO_COMPROBANTE Comprobante, SER_COMPROBANTE, NRO_COMPROBANTE,C.COD_CLIENTE||''-''||C. NOM_CLIENTE Cliente,C.COD_CLIENTE,C.fecha_ot FEC_COMPROBANTE,',
'C.COD_ARTICULO, CONDICION,C. NOM_CLIENTE,C.ANTIGUEDAD antiguedad, C.ANTIGUEDAD antiguedad2,C.fecha_ot fec_aprobacion,',
'NULL fec_autorizado_gar_por,C.ESTADO ESTADO_OT, C.COD_PROVEEDOR, GARANTIA, ( select decode(posicion,null, null,''EN_TALLER'')',
'                from CA_UBIC_PRODUCTOS u, ca_ubic_tecnicos ut',
'               where u.cod_empresa = ''1''',
'                 and tip_comprobante = c.tip_comprobante',
'                 and ser_comprobante = c.ser_comprobante',
'                 and (nro_comprobante = c.nro_comprobante OR',
'                     nro_comprobante_2 = c.nro_comprobante OR',
'                     nro_comprobante_3 =c.nro_comprobante OR',
'                     nro_comprobante_4 = c.nro_comprobante OR',
'                     nro_comprobante_5 = c.nro_comprobante)',
'                     and ut.cod_empresa= u.cod_empresa',
'                     and ut.cod_proveedor=c.cod_proveedor',
'                     and ut.piso=u.piso',
'                 and rownum = 1)Taller,',
'                 (select s.DESCRIPCION',
'                from st_articulos s',
'                where s.cod_empresa = :P_COD_EMPRESA',
'                and s.cod_articulo = C.COD_ARTICULO) DESC_ARTI,',
'                (select c.fecha',
'from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
'and (c.tip_comprobante_ref = (''ORT''))',
'and (c.ser_comprobante_ref = C.ser_comprobante)',
'and (c.nro_comprobante_ref = C.nro_comprobante)) fecha,',
'(select  c.tecnico',
'from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
'and (c.tip_comprobante_ref = (''ORT''))',
'and (c.ser_comprobante_ref = C.ser_comprobante)',
'and (c.nro_comprobante_ref = C.nro_comprobante)) tecnico,',
'(select c.depositero',
'from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
'and (c.tip_comprobante_ref = (''ORT''))',
'and (c.ser_comprobante_ref = C.ser_comprobante)',
'and (c.nro_comprobante_ref = C.nro_comprobante)) depositero,',
'APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                    p_value       => NRO_COMPROBANTE,',
'                    p_attributes  => (case  when c.antiguedad <=2 and c.garantia =''S'' then ''checked || style="width:40px;accent-color: green;"''',
'                                            when c.antiguedad <=5 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: green;"''',
'                                            when c.antiguedad < 3 and c.garantia =''S'' then ''checked || style="width:40px;accent-color: yellow;"''',
'                                            when c.antiguedad < 7 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: yellow;"''',
'                                            when c.antiguedad > 3 and c.garantia =''S'' then ''checked || style="width:40px;accent-color: red;"''',
'                                            when c.antiguedad >= 7 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: red;"''',
'                                      end ) )as Antiguedad_Comprobante,',
'(case when c.antiguedad <=2 and c.garantia =''S'' then ''V''',
'      when c.antiguedad <=5 and c.garantia =''N'' then ''V''',
'      when c.antiguedad < 3 and c.garantia =''S'' then ''Y''',
'      when c.antiguedad < 7 and c.garantia =''N'' then ''Y''',
'      when c.antiguedad > 3 and c.garantia =''S'' then ''R''',
'      when c.antiguedad >= 7 and c.garantia =''N'' then ''R''',
'                                      end) AS ANTIGUEDAD_COMPROBANTES,                                ',
'APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                    p_value       => NRO_COMPROBANTE,',
'                    p_attributes  => (case  when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=2 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: green;"''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=4 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: yellow;"''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=99999999999999 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: red;"''',
'                                      end ) )as Estado_por_ot,',
'(case  when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=2 and c.garantia =''N'' then ''V''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=4 and c.garantia =''N'' then ''Y''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=99999999999999 and c.garantia =''N'' then ''R''',
'                                      end) AS ESTADO_POR_ORDEN_TRABAJO,                                      ',
'null Link_form                                    ',
'from v_ots_tecnicos_TABLERO C',
'where  :P308_PROVEEDOR IS NOT NULL',
' AND C.fecha_ot>to_date(''01/01/2013'',''dd/mm/yyyy'') ',
' AND C.COD_PROVEEDOR = :P308_PROVEEDOR ',
' AND C.COD_EMPRESA = nvl(:P_COD_EMPRESA,''1'')',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Ots en Gesti\00F3n')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77978711041694321)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77978845995694322)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77978945749694323)
,p_name=>'COD_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979088348694324)
,p_name=>'FEC_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_COMPROBANTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979125286694325)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979231133694326)
,p_name=>'CONDICION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONDICION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Condicion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979389503694327)
,p_name=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre Cliente'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979429489694328)
,p_name=>'ANTIGUEDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Antiguedad'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979528700694329)
,p_name=>'ANTIGUEDAD2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Antiguedad2'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979646274694330)
,p_name=>'FEC_APROBACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_APROBACION'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Aprobacion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979717574694331)
,p_name=>'FEC_AUTORIZADO_GAR_POR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_AUTORIZADO_GAR_POR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fec Autorizado Gar Por'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979854324694332)
,p_name=>'ESTADO_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Estado Ot'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>600
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979990164694333)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Proveedor'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77980095778694334)
,p_name=>'GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Garantia'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77980189558694335)
,p_name=>'TALLER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TALLER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Taller'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90818956311003050)
,p_name=>'DESC_ARTI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ARTI'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Arti'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728146494208421)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728267922208422)
,p_name=>'TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728386071208423)
,p_name=>'DEPOSITERO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPOSITERO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Depositero'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754246901270211)
,p_name=>'ANTIGUEDAD_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Antiguedad Comprobante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754327801270212)
,p_name=>'ESTADO_POR_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_POR_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Estado Por Ot'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754470968270213)
,p_name=>'LINK_FORM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_FORM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:RP,370:P370_PARAM_NRO_OT,P370_PARAM_SER_OT,P370_COD_CLIENTE,P370_OPERACION,P370_COD_ARTICULO_OT,P370_COD_ARTICULO_OT_1,P370_NRO_COMPROBANTE_REF,P370_COD_ORIGEN_AUX,P370_GARANT,P370_NRO_TICKET:&NRO_COMPROBANTE.,&SER'
||'_COMPROBANTE.,&COD_CLIENTE.,MODIFICAR,&COD_ARTICULO.,&COD_ARTICULO.,&NRO_COMPROBANTE.,,&GARANTIA.,'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_link_attributes=>'target="_blank"'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754518271270214)
,p_name=>'COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comprobante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>41
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754625754270215)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754709874270216)
,p_name=>'CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>216
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98367936642250021)
,p_name=>'ANTIGUEDAD_COMPROBANTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD_COMPROBANTES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Antiguedad Comprobantes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98368038761250022)
,p_name=>'ESTADO_POR_ORDEN_TRABAJO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_POR_ORDEN_TRABAJO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado Por Orden Trabajo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(77978522855694319)
,p_internal_uid=>77978522855694319
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(78380012142031111)
,p_interactive_grid_id=>wwv_flow_imp.id(77978522855694319)
,p_static_id=>'783801'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(78380298571031112)
,p_report_id=>wwv_flow_imp.id(78380012142031111)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20983428002427)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(92754625754270215)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23915061007324)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(92754709874270216)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>257
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45412502010828)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(98368038761250022)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95904432128575)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(98367936642250021)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78381647812031119)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(77978711041694321)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78382532593031121)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(77978845995694322)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78383482243031123)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(77978945749694323)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78384326189031125)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(77979088348694324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78385223761031126)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(77979125286694325)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78386159086031128)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(77979231133694326)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78387046068031129)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(77979389503694327)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78387994000031131)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(77979429489694328)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78388864993031133)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(77979528700694329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78389792692031134)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(77979646274694330)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78390667210031136)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(77979717574694331)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78391568119031137)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(77979854324694332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78392437765031139)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(77979990164694333)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78393353408031141)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(77980095778694334)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78441810761149120)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(77980189558694335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91511721631610319)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(90818956311003050)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91916237975582493)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(91728146494208421)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91917192041582495)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(91728267922208422)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91918080740582497)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(91728386071208423)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93195337850478852)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(92754246901270211)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93196277651478854)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(92754327801270212)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93320390066579759)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(92754470968270213)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93353021980591905)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(92754518271270214)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(22911379011515)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>5
,p_name=>'Antiguedad'
,p_background_color=>'#f10404'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98367936642250021)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'R'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(58233984024351)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>20
,p_name=>'ESTADO_OT'
,p_background_color=>'#f10404'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98368038761250022)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'R'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(58703379024351)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>25
,p_name=>'ESTADO_OT'
,p_background_color=>'#fff760'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98368038761250022)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Y'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(59179387024351)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>30
,p_name=>'ESTADO_OT'
,p_background_color=>'#63ff60'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(77978711041694321)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'V'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(109227593150334)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>10
,p_name=>'Antiguedad'
,p_background_color=>'#63ff60'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98367936642250021)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'V'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(109728352150336)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>15
,p_name=>'Antiguedad'
,p_background_color=>'#fff760'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98367936642250021)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Y'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77980705101694341)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91726138749208401)
,p_plug_name=>'Problemas'
,p_parent_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROBLEMA ',
'    FROM VT_ORDENES_TRABAJO_PROBLEMA',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND TIP_COMPROBANTE = ''ORT''',
'    AND SER_COMPROBANTE = :P308_SER_COMPROBANTE_SELEC',
'    AND NRO_COMPROBANTE = :P308_NRO_COMPROBANTE_SELECT',
'union all ',
'    SELECT p.descripcion FROM vt_ordenes_trabajo_prob_gen c, ca_problemas p',
'    WHERE c.COD_EMPRESA = :P_COD_EMPRESA',
'    AND TIP_COMPROBANTE =''ORT''',
'    AND SER_COMPROBANTE = :P308_SER_COMPROBANTE_SELEC',
'    AND NRO_COMPROBANTE = :P308_NRO_COMPROBANTE_SELECT',
'    and c.cod_empresa=p.cod_empresa',
'    --and c.cod_problema=p.cod_problema;',
'    and c.cod_problema_cliente=p.cod_problema;	'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_SER_COMPROBANTE_SELEC,P308_NRO_COMPROBANTE_SELECT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91726352650208403)
,p_name=>'PROBLEMA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROBLEMA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Problema'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91726293364208402)
,p_internal_uid=>91726293364208402
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(91733296607215016)
,p_interactive_grid_id=>wwv_flow_imp.id(91726293364208402)
,p_static_id=>'917333'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(91733450310215017)
,p_report_id=>wwv_flow_imp.id(91733296607215016)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91733987458215019)
,p_view_id=>wwv_flow_imp.id(91733450310215017)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91726352650208403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91726703151208407)
,p_plug_name=>unistr('Observaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--accent6:t-Region--hiddenOverflow:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.nombre_apellido nombre, c.empresa, fec_llamada, hora ,d.cod_motivo,',
'       d.comentario,cod_usuario , C.calificacion               ',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d',
'where D.cod_empresa     = :P_cod_empresa',
'AND C.COD_EMPRESA = D.COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and (d.tip_comprobante = (''ORT''))',
' and (d.ser_comprobante = :P308_SER_COMPROBANTE_SELEC)',
' and (d.nro_comprobante = :P308_NRO_COMPROBANTE_SELECT) ',
'UNION ALL',
'select c.Nombre nombre, c.empresa, C.FEC_MOVIMIENTO FEC_LLAMADA, C.HORA_LLAMADA ,C.cod_motivo, ',
'       C.OBSERVACION,cod_usuario ,to_char(c.calificacion               )',
' from CA_LLAMADAS_SALIENTES c ',
'where c.cod_empresa     = :P_cod_empresa',
'  and c.tip_comprobante = (''ORT'')',
' and c.ser_comprobante = :P308_SER_COMPROBANTE_SELEC',
' and c.nro_comprobante = :P308_NRO_COMPROBANTE_SELECT;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_SER_COMPROBANTE_SELEC,P308_NRO_COMPROBANTE_SELECT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Observaci\00F3n')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91726947907208409)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727034458208410)
,p_name=>'EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727156283208411)
,p_name=>'FEC_LLAMADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_LLAMADA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Llamada'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727249862208412)
,p_name=>'HORA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727362101208413)
,p_name=>'COD_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Motivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727449316208414)
,p_name=>'COMENTARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMENTARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comentario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727515544208415)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727684562208416)
,p_name=>'CALIFICACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALIFICACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Calificacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91726890826208408)
,p_internal_uid=>91726890826208408
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(91771079251400048)
,p_interactive_grid_id=>wwv_flow_imp.id(91726890826208408)
,p_static_id=>'917711'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(91771244540400048)
,p_report_id=>wwv_flow_imp.id(91771079251400048)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91771711355400049)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(91726947907208409)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91772687268400051)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(91727034458208410)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91773536188400053)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91727156283208411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.875
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91774492840400055)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91727249862208412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62.875
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91775339765400056)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(91727362101208413)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91776256611400058)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(91727449316208414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91777103260400059)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(91727515544208415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91778059232400061)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(91727684562208416)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91729500617208435)
,p_plug_name=>'Devoluciones'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIP_ENVIO,',
'       SER_ENVIO,',
'       NRO_ENVIO,',
'       FECHA,',
'       COD_SUCURSAL_ENT,',
'       DESC_SUCUR_ENT,',
'       COD_SUCURSAL,',
'       DESC_SUCUR_SAL,',
'       OBS,',
'       COD_PROVEEDOR,',
'       null Ver',
'  from V_ENVIO_STNGO_REPUESTO',
' where :P308_PROVEEDOR IS NOT NULL',
' AND  COD_PROVEEDOR= :P308_PROVEEDOR',
' and cod_empresa = :P_COD_EMPRESA',
' '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Devoluciones'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729743215208437)
,p_name=>'TIP_ENVIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_ENVIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Envio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729892837208438)
,p_name=>'SER_ENVIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_ENVIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Env\00EDo')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>6
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729998674208439)
,p_name=>'NRO_ENVIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_ENVIO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('N\00FAmero')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730064540208440)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730138062208441)
,p_name=>'COD_SUCURSAL_ENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL_ENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entrada'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730229735208442)
,p_name=>'DESC_SUCUR_ENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SUCUR_ENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730399934208443)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Salida'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730486547208444)
,p_name=>'DESC_SUCUR_SAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SUCUR_SAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730557532208445)
,p_name=>'OBS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Obs'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730600214208446)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730703778208447)
,p_name=>'VER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Ver'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.:RP,339:P339_P_NRO_COMPROBANTE,P339_P_SER_COMPROBANTE,P339_C_FECHA,P339_C_COD_SUCURSAL_ENT,P339_COD_SUCURSAL,P339_P_COD_SUC_ENTRADA,P339_P_COD_SUC_SAL,P339_P_FECHA:&NRO_ENVIO.,&SER_ENVIO.,&FECHA.,&COD_SUCURSAL_ENT.,'
||'&COD_SUCURSAL.,&COD_SUCURSAL_ENT.,&COD_SUCURSAL.,&FECHA.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91729635571208436)
,p_internal_uid=>91729635571208436
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92105604641898918)
,p_interactive_grid_id=>wwv_flow_imp.id(91729635571208436)
,p_static_id=>'921057'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92105802732898918)
,p_report_id=>wwv_flow_imp.id(92105604641898918)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92106304187898919)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(91729743215208437)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92107264885898921)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91729892837208438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92108166907898923)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91729998674208439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92109086135898925)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(91730064540208440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92109950517898926)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91730138062208441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92110821919898928)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(91730229735208442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92111709404898930)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(91730399934208443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92112604292898931)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(91730486547208444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92113539619898933)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(91730557532208445)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92114479154898934)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(91730600214208446)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92134466143989219)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(91730703778208447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91730878475208448)
,p_name=>'Pedidos Repuestos'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       (SELECT rpad(''Tec:'',8,'' '') ||p.nombre ',
' FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S, VT_ordenes_trabajo vt,',
' cm_PROVEEDORES PRO, PERSONAS P',
'WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and vt.cod_empresa=c.cod_empresa',
'AND vt.TIP_COMPROBANTE=C.TIP_COMPROBANTE_REF',
'AND vt.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND vt.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF',
'AND VT.COD_EMPRESA=PRO.COD_EMPRESA',
'AND VT.COD_PROVEEDOR=PRO.COD_PROVEEDOR',
'AND P.COD_PERSONA=Pro.COD_PERSONA',
'AND C.NRO_COMPROBANTE= aa.NRO_COMPROBANTE',
'GROUP BY C.NRO_COMPROBANTE,C.observacion, C.NRO_COMPROBANTE_REF,vt.cod_articulo,',
'c.cod_empresa , c.TIP_COMPROBANTE ,c.SER_COMPROBANTE, c.NRO_COMPROBANTE,p.nombre) tecnico,',
'(SELECT ''Mod: ''||rpad(vt.cod_articulo,25,'' '')',
' FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S, VT_ordenes_trabajo vt,',
' cm_PROVEEDORES PRO, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and vt.cod_empresa=c.cod_empresa',
'AND vt.TIP_COMPROBANTE=C.TIP_COMPROBANTE_REF',
'AND vt.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND vt.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF',
'AND VT.COD_EMPRESA=PRO.COD_EMPRESA',
'AND VT.COD_PROVEEDOR=PRO.COD_PROVEEDOR',
'AND P.COD_PERSONA=Pro.COD_PERSONA',
'AND C.NRO_COMPROBANTE= aa.NRO_COMPROBANTE',
'GROUP BY C.NRO_COMPROBANTE,C.observacion, C.NRO_COMPROBANTE_REF,vt.cod_articulo,',
'c.cod_empresa  , c.TIP_COMPROBANTE , c.SER_COMPROBANTE, c.NRO_COMPROBANTE,p.nombre ) observacion_tec,',
'',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NRO_COMPROBANTE_REF,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       COD_USUARIO_AUTORIZACION,',
'       FECHA_AUTORIZACION,',
'       AUTORIZADO,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       OBSERVACION,',
'       PRESUPUESTO,',
'       DESC_ERROR,',
'       ANULADO,',
'       CONFIRMADO,',
'       FACTURADO,',
'       VERIFICADO,',
'       TRASLADO,',
'       HORA_ALTA,',
'       COD_SUCURSAL_ENV,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       FEC_CONFIMACION,',
'       HORA_CONFIRMACION,',
'       COD_PROVEEDOR,',
'       IND_RECEPCIONADO,',
'       FEC_RECEPCION,',
'       IND_PROCESADO,',
'       IND_REBOBINADO,',
'       RETIRA_DE,',
'        (select case when nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''N'' THEN ''EN ESPERA'' ',
'WHEN nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''N'' THEN ''EN PREPARACION'' ',
'WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'         FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'        WHERE C.COD_EMPRESA=''1''',
'        AND C.COD_EMPRESA=D.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'        AND NVL(C.ANULADO,''N'')<>''S''',
'        AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'        GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 AND nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''S'' THEN ''CONFIRMADO'' ',
'WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'         FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'        WHERE C.COD_EMPRESA=''1''',
'        AND C.COD_EMPRESA=D.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'        AND NVL(C.ANULADO,''N'')<>''S''',
'        AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'        GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 AND nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''S'' THEN ''SIN EXISTENCIA''                                                                                     ',
'        end',
'        from dual)ESTADO_PREPA,',
'         (SELECT ''<button type="button" formtarget="_blank" class="fa fa-search" id="btndet" onclick="fn_actualiza_datos('' ||',
'             ot.cod_cliente || '','' || ot.nro_comprobante || '','' || '''''''' ||',
'             ot.ser_comprobante || '''''''' || '','' || '''''''' || ot.cod_articulo || '''''''' || '','' || '''''''' ||',
'             ot.cod_origen || '''''''' || '','' || '''''''' ||',
'             nvl(ot.ind_garantia, ''N'') || '''''')"></button>'' FROM vt_ordenes_trabajo ot WHERE ot.cod_empresa = :P_COD_EMPRESA AND ot.nro_comprobante = aa.nro_comprobante_ref AND ot.ser_comprobante = aa.ser_comprobante_ref) ot',
'from CA_PEDIDO_REPUESTO_CAB aa',
'where cod_empresa = :p_cod_empresa ',
'AND :P308_PROVEEDOR IS NOT NULL ',
'AND NVL(ANULADO,''N'')<>''S''',
'AND NVL(ind_recepcionado,''N'')<>''S''',
'AND FEC_COMPROBANTE>SYSDATE-60',
'AND TIP_COMPROBANTE_REF=''ORT''',
'AND AA.SER_COMPROBANTE_REF IN(''A'',''P'')',
'AND NRO_COMPROBANTE_REF IN (SELECT C.NRO_COMPROBANTE',
'FROM VT_ORDENES_TRABAJO C',
'WHERE C.COD_EMPRESA=:p_cod_empresa ',
'AND C.TIP_COMPROBANTE=AA.TIP_COMPROBANTE_REF',
'AND C.SER_COMPROBANTE=AA.SER_COMPROBANTE_REF',
'AND C.NRO_COMPROBANTE=AA.NRO_COMPROBANTE_REF',
'AND NVL(C.CERRADO,''N'')<>''S''',
'AND NVL(C.anulado,''N'')<>''S''',
'and c.cod_proveedor = :P308_PROVEEDOR',
'AND c.COD_ORIGEN IN(''1'',''15'',''20'',''48'')',
'AND NVL(C.IND_ENTREGA,''N'')<>''S''',
'AND NVL(C.IND_RETIRADO,''N'')<>''S'')',
'and nro_comprobante in (select d.nro_comprobante',
'from  CA_PEDIDO_REPUESTO_det D',
'where 	 aa.COD_EMPRESA=D.COD_EMPRESA',
'				AND aa.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'				AND aa.SER_COMPROBANTE=D.SER_COMPROBANTE',
'				AND aa.NRO_COMPROBANTE=D.NRO_COMPROBANTE)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P308_PROVEEDOR,P_COD_EMPRESA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
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
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222939759713080904)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222939840817080905)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222939901117080906)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940034854080907)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940111984080908)
,p_query_column_id=>5
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940282190080909)
,p_query_column_id=>6
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940353161080910)
,p_query_column_id=>7
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940497856080911)
,p_query_column_id=>8
,p_column_alias=>'TECNICO'
,p_column_display_sequence=>60
,p_column_heading=>'Tecnico'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940539672080912)
,p_query_column_id=>9
,p_column_alias=>'OBSERVACION_TEC'
,p_column_display_sequence=>70
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940613065080913)
,p_query_column_id=>10
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940749988080914)
,p_query_column_id=>11
,p_column_alias=>'FEC_ESTADO'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940844928080915)
,p_query_column_id=>12
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222940928504080916)
,p_query_column_id=>13
,p_column_alias=>'FEC_ALTA'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941043965080917)
,p_query_column_id=>14
,p_column_alias=>'NRO_COMPROBANTE_REF'
,p_column_display_sequence=>50
,p_column_heading=>'OT'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941120707080918)
,p_query_column_id=>15
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>170
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941279026080919)
,p_query_column_id=>16
,p_column_alias=>'NOMBRE_CAB'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941325825080920)
,p_query_column_id=>17
,p_column_alias=>'COD_USUARIO_AUTORIZACION'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941474942080921)
,p_query_column_id=>18
,p_column_alias=>'FECHA_AUTORIZACION'
,p_column_display_sequence=>200
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941537153080922)
,p_query_column_id=>19
,p_column_alias=>'AUTORIZADO'
,p_column_display_sequence=>210
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941605262080923)
,p_query_column_id=>20
,p_column_alias=>'COD_USUARIO_ANU'
,p_column_display_sequence=>220
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941773576080924)
,p_query_column_id=>21
,p_column_alias=>'COD_MOTIVO_ANU'
,p_column_display_sequence=>230
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941805926080925)
,p_query_column_id=>22
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>240
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222941970681080926)
,p_query_column_id=>23
,p_column_alias=>'PRESUPUESTO'
,p_column_display_sequence=>250
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942055447080927)
,p_query_column_id=>24
,p_column_alias=>'DESC_ERROR'
,p_column_display_sequence=>260
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942126653080928)
,p_query_column_id=>25
,p_column_alias=>'ANULADO'
,p_column_display_sequence=>270
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942265884080929)
,p_query_column_id=>26
,p_column_alias=>'CONFIRMADO'
,p_column_display_sequence=>280
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942344072080930)
,p_query_column_id=>27
,p_column_alias=>'FACTURADO'
,p_column_display_sequence=>290
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942441273080931)
,p_query_column_id=>28
,p_column_alias=>'VERIFICADO'
,p_column_display_sequence=>300
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942537832080932)
,p_query_column_id=>29
,p_column_alias=>'TRASLADO'
,p_column_display_sequence=>310
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942630464080933)
,p_query_column_id=>30
,p_column_alias=>'HORA_ALTA'
,p_column_display_sequence=>320
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942745906080934)
,p_query_column_id=>31
,p_column_alias=>'COD_SUCURSAL_ENV'
,p_column_display_sequence=>330
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942803977080935)
,p_query_column_id=>32
,p_column_alias=>'TIP_COMPROBANTE_REF'
,p_column_display_sequence=>340
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222942959488080936)
,p_query_column_id=>33
,p_column_alias=>'SER_COMPROBANTE_REF'
,p_column_display_sequence=>350
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943080966080937)
,p_query_column_id=>34
,p_column_alias=>'FEC_CONFIMACION'
,p_column_display_sequence=>360
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943178638080938)
,p_query_column_id=>35
,p_column_alias=>'HORA_CONFIRMACION'
,p_column_display_sequence=>370
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943291022080939)
,p_query_column_id=>36
,p_column_alias=>'COD_PROVEEDOR'
,p_column_display_sequence=>380
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943316325080940)
,p_query_column_id=>37
,p_column_alias=>'IND_RECEPCIONADO'
,p_column_display_sequence=>390
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943498309080941)
,p_query_column_id=>38
,p_column_alias=>'FEC_RECEPCION'
,p_column_display_sequence=>400
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943512211080942)
,p_query_column_id=>39
,p_column_alias=>'IND_PROCESADO'
,p_column_display_sequence=>410
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943659670080943)
,p_query_column_id=>40
,p_column_alias=>'IND_REBOBINADO'
,p_column_display_sequence=>420
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943726497080944)
,p_query_column_id=>41
,p_column_alias=>'RETIRA_DE'
,p_column_display_sequence=>430
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222943811037080945)
,p_query_column_id=>42
,p_column_alias=>'ESTADO_PREPA'
,p_column_display_sequence=>80
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(627201984293991342)
,p_query_column_id=>43
,p_column_alias=>'OT'
,p_column_display_sequence=>440
,p_column_heading=>'Ot'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(223108149824404508)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91728420454208424)
,p_name=>'Resumen Estados'
,p_parent_plug_id=>wwv_flow_imp.id(223108149824404508)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select estado ESTADO_OT,',
'       COUNT(*)CANTIDAD',
'      from v_ots_tecnicos_TABLERO',
'where :P308_PROVEEDOR IS NOT NULL',
'AND COD_PROVEEDOR = :P308_PROVEEDOR',
'and cod_empresa = :P_COD_EMPRESA',
'GROUP BY estado;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213279328812599545)
,p_query_column_id=>1
,p_column_alias=>'ESTADO_OT'
,p_column_display_sequence=>10
,p_column_heading=>'Estado Ot'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213279451974599546)
,p_query_column_id=>2
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91729055871208430)
,p_name=>'Tipo Pedido'
,p_parent_plug_id=>wwv_flow_imp.id(223108149824404508)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIPO, SUM(cantidad) cantidad ',
'    FROM (select ',
'    decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')TIPO,',
'    sum(decode (tipo,''E'',1,0))cantidad',
'    from CA_SOLICITUD_OT cc',
'    where cod_empresa = :P_COD_EMPRESA ',
'    AND  :P308_PROVEEDOR IS NOT NULL',
'    AND NVL(ESTADO,''N'')=''P''',
'    AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'    from vt_ordenes_trabajo A',
'    where A.cod_empresa= :P_COD_EMPRESA',
'    and A.tip_comprobante=CC.tip_comprobante',
'    and A.ser_comprobante=CC.ser_comprobante',
'    and A.nro_comprobante=CC.nro_comprobante',
'    AND NVL(A.ANULADO,''N'')<>''S''',
'    --AND TIPO=''E''',
'    AND a.COD_PROVEEDOR = :P308_PROVEEDOR',
'    AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'    and cod_grupo in (''TECNIC'',''TCNPV'') ',
'    and tipo=''E''',
'    group by decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')',
'    union all',
'    select ',
'    decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')TIPO,',
'    sum(decode (tipo,''S'',1,0))cantidad',
'    from CA_SOLICITUD_OT cc',
'    where cod_empresa = :P_COD_EMPRESA ',
'    AND  :P308_PROVEEDOR IS NOT NULL',
'    AND NVL(ESTADO,''N'')=''P''',
'    AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'    from vt_ordenes_trabajo A',
'    where A.cod_empresa= :P_COD_EMPRESA',
'    and A.tip_comprobante=CC.tip_comprobante',
'    and A.ser_comprobante=CC.ser_comprobante',
'    and A.nro_comprobante=CC.nro_comprobante',
'    AND NVL(A.ANULADO,''N'')<>''S''',
'    --AND TIPO=''S''',
'    AND a.COD_PROVEEDOR = :P308_PROVEEDOR',
'    AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'    and cod_grupo in (''TECNIC'',''TCNPV'') ',
'    and tipo=''S''',
'    group by decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')',
'    union all',
'    select  ''SOLICITUD_TECNICO'' ,0   ',
'    FROM DUAL',
'    union all',
'    select  ''ENTREGA_TECNICO'' ,0  ',
'    FROM DUAL)',
'GROUP BY TIPO;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(223019816471174425)
,p_query_column_id=>1
,p_column_alias=>'TIPO'
,p_column_display_sequence=>10
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(223019914635174426)
,p_query_column_id=>2
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(92157739164142947)
,p_name=>unistr('Comisi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(223108149824404508)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.mo_monto_garantia, a.mo_monto_particular, a.cantidad_particular, a.cantidad_garantia',
'from v_comision_tecnico_stngo a',
'where :P308_PROVEEDOR IS NOT NULL',
'AND a.COD_PROVEEDOR= :P308_PROVEEDOR',
' AND   COD_EMPRESA = :P_COD_EMPRESA;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213279809768599550)
,p_query_column_id=>1
,p_column_alias=>'MO_MONTO_GARANTIA'
,p_column_display_sequence=>10
,p_column_heading=>'Mo Monto Garantia'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222939452641080901)
,p_query_column_id=>2
,p_column_alias=>'MO_MONTO_PARTICULAR'
,p_column_display_sequence=>20
,p_column_heading=>'Mo Monto Particular'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222939545432080902)
,p_query_column_id=>3
,p_column_alias=>'CANTIDAD_PARTICULAR'
,p_column_display_sequence=>30
,p_column_heading=>'Cantidad Particular'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222939659151080903)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD_GARANTIA'
,p_column_display_sequence=>40
,p_column_heading=>'Cantidad Garantia'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(92753470744270203)
,p_name=>'Cierres Semanales'
,p_parent_plug_id=>wwv_flow_imp.id(223108149824404508)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent15:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(ot.fec_cierre,''DAY'')dia,COUNT(1) cantidad, OT.COD_PROVEEDOR',
'from vt_ordenes_trabajo ot, ',
'     st_articulos aot ',
'where OT.cod_empresa = :P_COD_EMPRESA',
'AND  :P308_PROVEEDOR IS NOT NULL',
'AND ot.fec_cierre>=TRUNC(SYSDATE) -to_char(SYSDATE,''D'')',
'AND ot.fec_cierre >sysdate-15',
'and nvl( ot.cerrado, ''N'' ) =  ''S''',
'and nvl( ot.anulado, ''N'' ) <> ''S''',
'and ot.cod_empresa     = aot.cod_empresa',
'and ot.cod_articulo    = aot.cod_articulo',
'AND ot.COD_PROVEEDOR = :P308_PROVEEDOR',
'group by ot.cod_proveedor,  to_char(ot.fec_cierre,''DAY''), to_char(ot.fec_cierre,''D'');'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213279581893599547)
,p_query_column_id=>1
,p_column_alias=>'DIA'
,p_column_display_sequence=>10
,p_column_heading=>'Dia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213279679224599548)
,p_query_column_id=>2
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213279770654599549)
,p_query_column_id=>3
,p_column_alias=>'COD_PROVEEDOR'
,p_column_display_sequence=>30
,p_column_heading=>'Cod Proveedor'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1021514044510978323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77977206623694306)
,p_button_name=>'refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-35-bg u-color-7-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77977445676694308)
,p_name=>'P308_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cc.cod_proveedor||''-''||p.nombre D, cc.cod_proveedor R',
'FROM   cm_proveedores  cc, personas p, rh_empleados e ',
'where cc.cod_empresa= NVL(:p_cod_empresa ,''1'')',
'and cc.cod_persona=p.cod_persona',
'and cc.IND_SERVICIO_TECNICO=''STNGO''',
'and cc.cod_sucursal is not null ',
'AND (COD_PROVEEDOR = :P308_COD_PROVEEDOR_VIEW OR :P308_COD_PROVEEDOR_VIEW IS NULL) ',
'AND e.cod_empresa IN (''1'', ''18'')',
'AND p.COD_PERSONA = e.COD_PERSONA ',
'AND e.ACTIVO = ''S''',
'ORDER BY p.nombre;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione...'
,p_lov_cascade_parent_items=>'P308_COD_PROVEEDOR_VIEW'
,p_ajax_items_to_submit=>'P308_COD_PROVEEDOR_VIEW'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="color:darkblue;font-weight: bold;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77977553304694309)
,p_name=>'P308_COD_PROVEEDOR_VIEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77980485221694338)
,p_name=>'P308_COD_ART'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Codigo Articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77980533947694339)
,p_name=>'P308_DESC_ART'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>unistr('Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(77980876007694342)
,p_name=>'P308_CONDICION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Condicion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77981197817694345)
,p_name=>'P308_TECNICO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77981258516694346)
,p_name=>'P308_DEPOSITERO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Depositero'
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
 p_id=>wwv_flow_imp.id(77981324200694347)
,p_name=>'P308_FECHA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(91726416190208404)
,p_name=>'P308_SER_COMPROBANTE_SELEC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91726536428208405)
,p_name=>'P308_NRO_COMPROBANTE_SELECT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77978363670694317)
,p_name=>'da_chng_prov'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P308_PROVEEDOR'
,p_condition_element=>'P308_PROVEEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77978444651694318)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P308_PROVEEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77980292467694336)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77977206623694306)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77980399786694337)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76655247808945326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91728910052208429)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91728420454208424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369422607250036)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91729500617208435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369530838250037)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726703151208407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369624932250038)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726138749208401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369787817250039)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91729055871208430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369894139250040)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91730878475208448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369927524250041)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92157739164142947)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98370034589250042)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92753470744270203)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77981456481694348)
,p_name=>'Select'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(77977206623694306)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
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
 p_id=>wwv_flow_imp.id(77981506383694349)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionados();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91726645495208406)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726138749208401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91727738007208417)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726703151208407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814053685003001)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_DESC_ART'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION',
'from st_articulos',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_articulo = :P308_COD_ART;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814165545003002)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select NVL(c.fecha,null)',
'    into :P308_FECHA',
' from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and (c.tip_comprobante_ref = (''ORT''))',
' and (c.ser_comprobante_ref = :ser_comprobante)',
' and (c.nro_comprobante_ref = :nro_comprobante) ;',
' EXCEPTION WHEN OTHERS THEN ',
' :P308_FECHA:=NULL;',
'END;'))
,p_attribute_03=>'P308_FECHA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814200223003003)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_TECNICO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(c.tecnico,null)',
' from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and (c.tip_comprobante_ref = (''ORT''))',
' and (c.ser_comprobante_ref = :ser_comprobante)',
' and (c.nro_comprobante_ref = :nro_comprobante);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814342054003004)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_DEPOSITERO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(c.depositero,null)',
' from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and (c.tip_comprobante_ref = (''ORT''))',
' and (c.ser_comprobante_ref = :ser_comprobante)',
' and (c.nro_comprobante_ref = :nro_comprobante);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90817927031003040)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(76655247808945326)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90818091684003041)
,p_event_id=>wwv_flow_imp.id(90817927031003040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionado();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1021514169870978324)
,p_name=>'da_refresh_reg'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1021514044510978323)
,p_condition_element=>'P308_PROVEEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514360054978326)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77977206623694306)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021515300239978336)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar un T\00E9cnico.')
,p_attribute_02=>'Tecnico nulo'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514400998978327)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76655247808945326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514576755978328)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91728420454208424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514648127978329)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91729500617208435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514731631978330)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726703151208407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514891546978331)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726138749208401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021514971753978332)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91729055871208430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021515098794978333)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91730878475208448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021515186626978334)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92157739164142947)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021515276819978335)
,p_event_id=>wwv_flow_imp.id(1021514169870978324)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92753470744270203)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1017486184757915313)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'      :P308_PROVEEDOR :=  NULL;',
'BEGIN',
'    SELECT COD_PROVEEDOR',
'    INTO :P308_COD_PROVEEDOR_VIEW',
'    FROM CM_PROVEEDORES PROV, asp$usua0100 u',
'    WHERE PROV.COD_EMPRESA= NVL(:P_COD_EMPRESA,''1'')',
'    AND PROV.COD_PERSONA=U.COD_PERSONA',
'    AND PROV.ind_servicio_tecnico = ''STNGO''',
'    AND u.USRN = NVL(:APP_USER,:P_COD_USUARIO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      :P308_COD_PROVEEDOR_VIEW:=  NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
