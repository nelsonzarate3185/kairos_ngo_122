prompt --application/pages/page_00358
begin
--   Manifest
--     PAGE: 00358
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
 p_id=>358
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RPPLAPED - Pedidos para Reparto'
,p_alias=>'RPPLAPED-PEDIDOS-PARA-REPARTO'
,p_step_title=>'RPPLAPED - Pedidos para Reparto'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P358_ACCION'',''AGREGAR'');',
'      $s(''P358_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P358_ACCION'',''QUITAR'');',
'      $s(''P358_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'',
'',
'function doRpfactmaspla(p_cod_empresa, p_nro_planilla){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPTPEDIDO_COPY1.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_planilla +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241220082835'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98391388221430928)
,p_plug_name=>'Planilla de Pedidos para Reparto'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>930
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98391486883430929)
,p_plug_name=>'REPORTE_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id p_id,',
'    C001 COD_EMPRESA, ',
'    C002 COD_SUCURSAL,  ',
'    C003 tip_comprobante,',
'    C004 SER_comprobante,',
'    C005 NRO_comprobante,',
'    C006 V_SITUACION_PEDIDO,',
'    C007 V_COLOR,',
'    C008 ESTADO,       ',
'    C009 NRO_PLANILLA,',
'    C010 OBSERVACION,',
'    C011 FEC_CAMBIO_ESTADO,',
'    C012 COD_USUARIO_CAMBIO,',
'    C013 COD_MOTIVO_ANU,',
'    C014 HORA_ALTA,',
'    C015 VOLUMEN,',
'    C016 IMPORTE,',
'    C017 EMPRESA_ORIGEN,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                        p_value       => seq_id,',
'                        p_attributes  => (case c018',
'                                           when ''S'' then ''checked ''',
'                                          else null',
'                                         end ) ||''onclick="seleccionar(this)"'' )as IND_NO_FACTURAR_PEDIDO,',
'    C019 IND_SOLICITUD_REPOSICION,',
'    C020 FEC_SOLICITUD_REPOSICION,',
'    C021 RID,',
'    C022 V_nombre_cliente,',
'    C023 V_cod_cliente,',
'    C024 V_moneda,',
'    C025 V_cod_moneda,',
'    C026 V_obs_ped,',
'    C027 V_direc_cliente,',
'    C028 v_old_estado_reparto ,',
'    C029 v_departamento ,',
'    --P_C030 RESERVADO PARA ACCION ',
'    C031 v_ciudad,',
'    C032 v_desc_sucursal_cli,',
'    C033 v_direccion_sucursal_cli,',
'    C034 v_cod_sucursal_cli,',
'    C035 v_importe,',
'    null editar,',
'    null detalle,',
'    null eliminar,',
'    null email,',
'    NULL GESTIONAR_PEDIDO,',
'    NULL VER_REPOSICION',
'',
'  ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'and nvl(c030,''P'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P358_AUX_COD_EMP_REPOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE'
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
 p_id=>wwv_flow_imp.id(98891649270038743)
,p_report_id_item=>'P358_AUX_COD_EMP_REPOS'
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>98891649270038743
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98891705668038744)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98891954358038746)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98892017829038747)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99758734654812522)
,p_db_column_name=>'P_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99758822839812523)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759005354812525)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759196509812526)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759245850812527)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759362542812528)
,p_db_column_name=>'FEC_CAMBIO_ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fec Cambio Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759452911812529)
,p_db_column_name=>'COD_USUARIO_CAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Usuario Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759545092812530)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759693717812531)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759733175812532)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D99'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759890401812533)
,p_db_column_name=>'IMPORTE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99759920705812534)
,p_db_column_name=>'EMPRESA_ORIGEN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Empresa Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760079984812535)
,p_db_column_name=>'IND_NO_FACTURAR_PEDIDO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'NF'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760104778812536)
,p_db_column_name=>'IND_SOLICITUD_REPOSICION'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ind Solicitud Reposicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760234357812537)
,p_db_column_name=>'FEC_SOLICITUD_REPOSICION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fec Solicitud Reposicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760352086812538)
,p_db_column_name=>'EDITAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P358_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760450666812539)
,p_db_column_name=>'DETALLE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P358_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760534346812540)
,p_db_column_name=>'EMAIL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Email'
,p_column_link=>'javascript:$s(''P358_SEND_EMAIL'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-envelope" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760693223812541)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760786795812542)
,p_db_column_name=>'GESTIONAR_PEDIDO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'ANUPED'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P358_GESTIONAR_PEDIDO'',''#P_ID#'');">...</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99760852693812543)
,p_db_column_name=>'VER_REPOSICION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'REP'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P358_VER_REPOSICION'',''#P_ID#'');">+</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912267185588303)
,p_db_column_name=>'V_SITUACION_PEDIDO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'V Situacion Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912338273588304)
,p_db_column_name=>'V_COLOR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'V Color'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912408600588305)
,p_db_column_name=>'RID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912512683588306)
,p_db_column_name=>'V_NOMBRE_CLIENTE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912600603588307)
,p_db_column_name=>'V_COD_CLIENTE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'V Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912770907588308)
,p_db_column_name=>'V_MONEDA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912838804588309)
,p_db_column_name=>'V_COD_MONEDA'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100912980014588310)
,p_db_column_name=>'V_OBS_PED'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'V Obs Ped'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913010805588311)
,p_db_column_name=>'V_DIREC_CLIENTE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'V Direc Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913145185588312)
,p_db_column_name=>'V_OLD_ESTADO_REPARTO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'V Old Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913232616588313)
,p_db_column_name=>'V_DEPARTAMENTO'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913326905588314)
,p_db_column_name=>'V_CIUDAD'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913449106588315)
,p_db_column_name=>'V_DESC_SUCURSAL_CLI'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'V Desc Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913507523588316)
,p_db_column_name=>'V_DIRECCION_SUCURSAL_CLI'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'V Direccion Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913636196588317)
,p_db_column_name=>'V_COD_SUCURSAL_CLI'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'V Cod Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100913767988588318)
,p_db_column_name=>'V_IMPORTE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100914591856588326)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P358_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(99344371666347168)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'993444'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:GESTIONAR_PEDIDO:DETALLE:EMPRESA_ORIGEN:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:V_NOMBRE_CLIENTE:V_CIUDAD:V_MONEDA:IMPORTE:VOLUMEN:IND_NO_FACTURAR_PEDIDO:EMAIL:VER_REPOSICION:ELIMINAR:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
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
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(107096750024566065)
,p_report_id=>wwv_flow_imp.id(99344371666347168)
,p_name=>'STOCK PARCIAL'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'V_COLOR'
,p_operator=>'='
,p_expr=>'AMARILLO'
,p_condition_sql=>' (case when ("V_COLOR" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''AMARILLO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(107097105595566065)
,p_report_id=>wwv_flow_imp.id(99344371666347168)
,p_name=>'SIN STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'V_COLOR'
,p_operator=>'='
,p_expr=>'ROJO'
,p_condition_sql=>' (case when ("V_COLOR" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ROJO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(107097530486566066)
,p_report_id=>wwv_flow_imp.id(99344371666347168)
,p_name=>'STOCK.'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'V_COLOR'
,p_operator=>'='
,p_expr=>'VERDE'
,p_condition_sql=>' (case when ("V_COLOR" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VERDE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98391593220430930)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98391694555430931)
,p_plug_name=>'Detalle de Pedido'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100916465054588345)
,p_plug_name=>'HISTORICO REPOSICION'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100915939733588340)
,p_plug_name=>'REPORTE REPOSICION'
,p_parent_plug_id=>wwv_flow_imp.id(100916465054588345)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    SELECT   ',
'        C001 COD_EMPRESA, ',
'        C002 SER_PEDIDO,  ',
'        C003 NRO_PEDIDO,',
'        C004 COD_ARTICULO,',
'        C005 FEC_INGRESO,',
'        C006 REF_ENVIO,',
'        C007 cod_art_corto,',
'        C008 desc_articulo,  ',
'        C009 TIEMPO_REPOSICION',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_REPOSICION'' ;',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE REPOSICION'
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
 p_id=>wwv_flow_imp.id(100916012260588341)
,p_report_id_item=>'P358_AUX_COD_EMP_REPOS'
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>100916012260588341
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100916144728588342)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(100916304687588344)
,p_db_column_name=>'REF_ENVIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ref Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101883729845780202)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101883852930780203)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101883984601780204)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101884071831780205)
,p_db_column_name=>'FEC_INGRESO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Ingreso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101884149066780206)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101884273415780207)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101884371380780208)
,p_db_column_name=>'TIEMPO_REPOSICION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tiempo Reposicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(101860769234564668)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1018608'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:DESC_ARTICULO:REF_ENVIO:FEC_INGRESO:TIEMPO_REPOSICION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103704465717610908)
,p_plug_name=>'REPORTE_DETALLE_CONFIRMADO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id p_id,',
'    C001 COD_EMPRESA, ',
'    C002 COD_SUCURSAL,  ',
'    C003 tip_comprobante,',
'    C004 SER_comprobante,',
'    C005 NRO_comprobante,',
'    C006 V_SITUACION_PEDIDO,',
'    C007 V_COLOR,',
'    C008 ESTADO,       ',
'    C009 NRO_PLANILLA,',
'    C010 OBSERVACION,',
'    C011 FEC_CAMBIO_ESTADO,',
'    C012 COD_USUARIO_CAMBIO,',
'    C013 COD_MOTIVO_ANU,',
'    C014 HORA_ALTA,',
'    C015 VOLUMEN,',
'    C016 IMPORTE,',
'    C017 EMPRESA_ORIGEN,',
'   ',
'    C019 IND_SOLICITUD_REPOSICION,',
'    C020 FEC_SOLICITUD_REPOSICION,',
'    C021 RID,',
'    C022 V_nombre_cliente,',
'    C023 V_cod_cliente,',
'    C024 V_moneda,',
'    C025 V_cod_moneda,',
'    C026 V_obs_ped,',
'    C027 V_direc_cliente,',
'    C028 v_old_estado_reparto ,',
'    C029 v_departamento ,',
'    --P_C030 RESERVADO PARA ACCION ',
'    C031 v_ciudad,',
'    C032 v_desc_sucursal_cli,',
'    C033 v_direccion_sucursal_cli,',
'    C034 v_cod_sucursal_cli,',
'    C035 v_importe,',
'    ',
'    null detalle,',
'     ',
'    null email,',
'    NULL GESTIONAR_PEDIDO,',
'    NULL VER_REPOSICION',
'',
'  ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'and nvl(c030,''P'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P358_AUX_COD_EMP_REPOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE_CONFIRMADO'
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
 p_id=>wwv_flow_imp.id(103704576506610909)
,p_report_id_item=>'P358_AUX_COD_EMP_REPOS'
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>103704576506610909
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103704605046610910)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103704758766610911)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103704861823610912)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103704949367610913)
,p_db_column_name=>'P_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705041029610914)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705132676610915)
,p_db_column_name=>'ESTADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705276075610916)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705391533610917)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705495376610918)
,p_db_column_name=>'FEC_CAMBIO_ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fec Cambio Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705584284610919)
,p_db_column_name=>'COD_USUARIO_CAMBIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705670374610920)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705776933610921)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103705884992610922)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_imp.id(103705969502610923)
,p_db_column_name=>'IMPORTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706042773610924)
,p_db_column_name=>'EMPRESA_ORIGEN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Empresa Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706221484610926)
,p_db_column_name=>'IND_SOLICITUD_REPOSICION'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Ind Solicitud Reposicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706355033610927)
,p_db_column_name=>'FEC_SOLICITUD_REPOSICION'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Fec Solicitud Reposicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706559762610929)
,p_db_column_name=>'DETALLE'
,p_display_order=>200
,p_column_identifier=>'R'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P358_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706698315610930)
,p_db_column_name=>'EMAIL'
,p_display_order=>210
,p_column_identifier=>'S'
,p_column_label=>'Email'
,p_column_link=>'javascript:$s(''P358_SEND_EMAIL'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-envelope" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706746488610931)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>220
,p_column_identifier=>'T'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706899466610932)
,p_db_column_name=>'GESTIONAR_PEDIDO'
,p_display_order=>230
,p_column_identifier=>'U'
,p_column_label=>'ANUPED'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P358_GESTIONAR_PEDIDO'',''#P_ID#'');">...</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103706963136610933)
,p_db_column_name=>'VER_REPOSICION'
,p_display_order=>240
,p_column_identifier=>'V'
,p_column_label=>'REP'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P358_VER_REPOSICION'',''#P_ID#'');">+</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707072110610934)
,p_db_column_name=>'V_SITUACION_PEDIDO'
,p_display_order=>250
,p_column_identifier=>'W'
,p_column_label=>'V Situacion Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707173803610935)
,p_db_column_name=>'V_COLOR'
,p_display_order=>260
,p_column_identifier=>'X'
,p_column_label=>'V Color'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707267644610936)
,p_db_column_name=>'RID'
,p_display_order=>270
,p_column_identifier=>'Y'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707301548610937)
,p_db_column_name=>'V_NOMBRE_CLIENTE'
,p_display_order=>280
,p_column_identifier=>'Z'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707498583610938)
,p_db_column_name=>'V_COD_CLIENTE'
,p_display_order=>290
,p_column_identifier=>'AA'
,p_column_label=>'V Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707555431610939)
,p_db_column_name=>'V_MONEDA'
,p_display_order=>300
,p_column_identifier=>'AB'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707645735610940)
,p_db_column_name=>'V_COD_MONEDA'
,p_display_order=>310
,p_column_identifier=>'AC'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707737851610941)
,p_db_column_name=>'V_OBS_PED'
,p_display_order=>320
,p_column_identifier=>'AD'
,p_column_label=>'V Obs Ped'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707858564610942)
,p_db_column_name=>'V_DIREC_CLIENTE'
,p_display_order=>330
,p_column_identifier=>'AE'
,p_column_label=>'V Direc Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103707929123610943)
,p_db_column_name=>'V_OLD_ESTADO_REPARTO'
,p_display_order=>340
,p_column_identifier=>'AF'
,p_column_label=>'V Old Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103708025108610944)
,p_db_column_name=>'V_DEPARTAMENTO'
,p_display_order=>350
,p_column_identifier=>'AG'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103708161258610945)
,p_db_column_name=>'V_CIUDAD'
,p_display_order=>360
,p_column_identifier=>'AH'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103708296068610946)
,p_db_column_name=>'V_DESC_SUCURSAL_CLI'
,p_display_order=>370
,p_column_identifier=>'AI'
,p_column_label=>'V Desc Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103708312430610947)
,p_db_column_name=>'V_DIRECCION_SUCURSAL_CLI'
,p_display_order=>380
,p_column_identifier=>'AJ'
,p_column_label=>'V Direccion Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103708436205610948)
,p_db_column_name=>'V_COD_SUCURSAL_CLI'
,p_display_order=>390
,p_column_identifier=>'AK'
,p_column_label=>'V Cod Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103708597360610949)
,p_db_column_name=>'V_IMPORTE'
,p_display_order=>400
,p_column_identifier=>'AL'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103986914280998750)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1039870'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'GESTIONAR_PEDIDO:EMPRESA_ORIGEN:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:V_NOMBRE_CLIENTE:V_CIUDAD:V_MONEDA:IMPORTE:VOLUMEN:EMAIL:VER_REPOSICION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196498993698211553)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196502053486211584)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98392424051430939)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_button_name=>'BT_CONFIRMADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98887515747038702)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_button_name=>'BT_CARGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99356360547550532)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99356453552550533)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99356569841550534)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98889231614038719)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(347922664565606750)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_button_name=>'BT_Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98889399668038720)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99356658076550535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(98391486883430929)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98391763483430932)
,p_name=>'P358_DESC_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98391811627430933)
,p_name=>'P358_C_NRO_PLANILLA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Numero'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98391958692430934)
,p_name=>'P358_C_FEC_PLANILLA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98392089197430935)
,p_name=>'P358_C_HORA_ALTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98392169042430936)
,p_name=>'P358_C_TIPO_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Tipo entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cliente Retira;CR,Capital;CA,Interior;IN'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98392298251430937)
,p_name=>'P358_C_ESTADO_PLA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98392392337430938)
,p_name=>'P358_C_IND_ENTREGA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Ind. Entrega'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98392528453430940)
,p_name=>'P358_C_FEC_CONFIRMADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Fecha Confirmado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98392625714430941)
,p_name=>'P358_COD_VEHICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULO_RPPLAPED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select cod_vehiculo||'' - ''||descripcion d, tipo, volumen,chapa,peso_kg,largo,alto,ancho,marca , cod_vehiculo R',
'from rp_vehiculos',
'where cod_empresa = :P_COD_EMPRESA',
' ',
'and NVL(:P358_TOT_VOLUMEN ,''0'')<=nvl(volumen,0);'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P358_AUX_COD_EMP_REPOS'
,p_ajax_items_to_submit=>'P358_AUX_COD_EMP_REPOS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(98392764191430942)
,p_name=>'P358_C_DEPARTMENTO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DEPARTAMENTO_RPPLAPED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pro.COD_PROVINCIA codigo_rapido,pro.DESCRIPCION nombre, 2 orden',
'FROM provinCIas pro, ciudades ci',
'where ci.cod_pais = ''PAR''',
'and pro.cod_pais=ci.cod_pais',
'and pro.cod_provincia=ci.cod_provincia--:variables.sector_tarjetas',
'group by pro.COD_PROVINCIA  ,pro.DESCRIPCION',
' ',
' UNION ALL',
' SELECT ''T'' codigo_rapido,''TODOS'' nombre,1 ORDEN',
'FROM DUAL',
'',
' order by 3,2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P358_AUX_COD_EMP_REPOS'
,p_ajax_items_to_submit=>'P358_AUX_COD_EMP_REPOS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(98392845145430943)
,p_name=>'P358_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(98392942215430944)
,p_name=>'P358_C_MARCA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98393078455430945)
,p_name=>'P358_C_VOLUMEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Volumen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98393159636430946)
,p_name=>'P358_C_CHAPA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Chapa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98393240596430947)
,p_name=>'P358_C_PESOKG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Peso KG.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98393348226430948)
,p_name=>'P358_C_LARGO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Largo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98393495821430949)
,p_name=>'P358_C_ANCHO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Ancho'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98393504357430950)
,p_name=>'P358_C_ALTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Alto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98741253968768644)
,p_name=>'P358_P_IND_LOGISTICA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(196498993698211553)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98741641780768645)
,p_name=>'P358_P_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(196498993698211553)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98753765771768659)
,p_name=>'P358_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98754101045768659)
,p_name=>'P358_CANTIDAD_LINEAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98754576581768659)
,p_name=>'P358_DERECHOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98754934370768659)
,p_name=>'P358_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98755351996768660)
,p_name=>'P358_NOM_MODULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98755716566768660)
,p_name=>'P358_COD_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98756143247768660)
,p_name=>'P358_NOM_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98756522919768660)
,p_name=>'P358_COD_MONEDA_BASE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98756940647768661)
,p_name=>'P358_SER_CONTADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98757316185768661)
,p_name=>'P358_SER_CREDITO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98757747208768661)
,p_name=>'P358_ESTADO_REPARTO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98758194975768661)
,p_name=>'P358_FAC_CONTADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98758552301768661)
,p_name=>'P358_FAC_CREDITO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98758990498768662)
,p_name=>'P358_NOTA_REMISION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98759386176768662)
,p_name=>'P358_COD_EMPRESA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98759766941768662)
,p_name=>'P358_NOM_EMPRESA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98760196631768662)
,p_name=>'P358_COD_SUCURSAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98760592348768662)
,p_name=>'P358_NOM_SUCURSAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98761354783768663)
,p_name=>'P358_COD_IDIOMA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98761749877768663)
,p_name=>'P358_CODSISMENU'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98762121907768663)
,p_name=>'P358_TIPO_TRANS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98762577988768664)
,p_name=>'P358_SER_RECIBO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98762963250768664)
,p_name=>'P358_FEC_ACTUAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98763318819768664)
,p_name=>'P358_MAX_DIAS_RENDICION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98887482685038701)
,p_name=>'P358_C_CIUDAD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CIUDAD_RPPLAPED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CIUDAD codigo_rapido,DESCRIPCION nombre, 2 orden',
'FROM CIUDADES',
'where cod_pais = ''PAR''--:variables.sector_tarjetas',
' AND COD_PROVINCIA= :P358_C_DEPARTMENTO',
' UNION ALL',
' SELECT ''T'' codigo_rapido,''TODOS'' nombre,1 orden',
'FROM DUAL',
'',
' order by 3,2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P358_C_DEPARTMENTO'
,p_ajax_items_to_submit=>'P358_AUX_COD_EMP_REPOS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(98887671866038703)
,p_name=>'P358_C_PORTON'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Celda'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98887753101038704)
,p_name=>'P358_C_COMENTARIO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98887810698038705)
,p_name=>'P358_OBS_PED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(98887998557038706)
,p_name=>'P358_DESC_SUCURSAL_CLI'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(98888052156038707)
,p_name=>'P358_TOT_GUARANIES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Total  importe'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(98888160269038708)
,p_name=>'P358_TOT_VOLUMEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Total Volumen'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(98888247003038709)
,p_name=>'P358_DIRECCION_SUCURSAL_CLI'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Direccion Sucursal'
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
 p_id=>wwv_flow_imp.id(98888332682038710)
,p_name=>'P358_COD_USUARIO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'User'
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
 p_id=>wwv_flow_imp.id(98888417900038711)
,p_name=>'P358_DIREC_CLIENTE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(98888569140038712)
,p_name=>'P358_DEPARTAMENTO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Departamento'
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
 p_id=>wwv_flow_imp.id(98888615767038713)
,p_name=>'P358_EMPRESA_ORIGEN'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(98888757369038714)
,p_name=>'P358_SITUACION_PEDIDO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>unistr('Situaci\00F3n')
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
 p_id=>wwv_flow_imp.id(98888843989038715)
,p_name=>'P358_IND_SOLICITUD_REPOSICION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_prompt=>'Email enviado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98889888101038725)
,p_name=>'P358_FEC_RENDICION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98889951382038726)
,p_name=>'P358_FEC_RENDICION_ORIG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890000872038727)
,p_name=>'P358_COD_ZONA_REPARTO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890191388038728)
,p_name=>'P358_COD_REPARTIDOR'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890279272038729)
,p_name=>'P358_ESTADO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890353808038730)
,p_name=>'P358_KM_SALIDA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890445577038731)
,p_name=>'P358_KM_ESTIMADO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890563298038732)
,p_name=>'P358_KM_LLEGADA'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890632828038733)
,p_name=>'P358_CONFIRMADO_DISTRIBU'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98890736926038734)
,p_name=>'P358_A_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
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
 p_id=>wwv_flow_imp.id(98890887845038735)
,p_name=>'P358_A_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(98890987214038736)
,p_name=>'P358_A_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(98892338826038750)
,p_name=>'P358_A_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353267799550501)
,p_name=>'P358_A_CIUDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353379015550502)
,p_name=>'P358_A_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353427011550503)
,p_name=>'P358_A_IMPORTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353531827550504)
,p_name=>'P358_A_VOLUMEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353678211550505)
,p_name=>'P358_A_IND_NO_FAC_PED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353858561550507)
,p_name=>'P358_IMPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99353905595550508)
,p_name=>'P358_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99354055136550509)
,p_name=>'P358_DET_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99354186193550510)
,p_name=>'P358_COD_MONEDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99354271432550511)
,p_name=>'P358_FEC_CAMBIO_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99354331703550512)
,p_name=>'P358_COD_USUARIO_CAMBIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99354468827550513)
,p_name=>'P358_OLD_ESTADO_REPARTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99354526294550514)
,p_name=>'P358_DET_HORA_ALTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_prompt=>'Hora Alta'
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
 p_id=>wwv_flow_imp.id(99354612798550515)
,p_name=>'P358_VOLUMEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99355013663550519)
,p_name=>'P358_CIUDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99355336284550522)
,p_name=>'P358_COD_SUCURSAL_CLI'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99355654958550525)
,p_name=>'P358_IND_NO_FACTURAR_PED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99355916485550528)
,p_name=>'P358_FEC_SOL_REPOSICION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(98391694555430931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99358109156550550)
,p_name=>'P358_A_NOMBRE_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757272081812507)
,p_name=>'P358_A_EMPRESA_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_prompt=>'Empresa Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NGO;NGO,CPH;CPH'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757382814812508)
,p_name=>'P358_A_OBS_PED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757450564812509)
,p_name=>'P358_A_TOT_GUARANIES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757555671812510)
,p_name=>'P358_A_TOT_VOLUMEN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757614465812511)
,p_name=>'P358_A_COD_SUCURSAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757735851812512)
,p_name=>'P358_A_DIRECCION_SUCURSAL_CLI'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757815838812513)
,p_name=>'P358_A_PIE_COD_USUARIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99757955309812514)
,p_name=>'P358_A_DIREC_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99758070495812515)
,p_name=>'P358_A_DEPARTAMENTO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99758214171812517)
,p_name=>'P358_A_SITUACION_PEDIDO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99758302041812518)
,p_name=>'P358_A_IND_SOLICITUD_REPOSICION'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99758462107812519)
,p_name=>'P358_A_ESTADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99758545621812520)
,p_name=>'P358_A_COD_MONEDA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99758622931812521)
,p_name=>'P358_A_COD_SUCURSAL_CLI'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99760908684812544)
,p_name=>'P358_ACCION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99761089585812545)
,p_name=>'P358_SEQ_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99761548562812550)
,p_name=>'P358_SEND_EMAIL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100912066348588301)
,p_name=>'P358_VER_REPOSICION'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100912121505588302)
,p_name=>'P358_GESTIONAR_PEDIDO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100914072702588321)
,p_name=>'P358_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100914161145588322)
,p_name=>'P358_SEQ_ID_DETALLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100914991386588330)
,p_name=>'P358_SER_VTANUPED'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100915028119588331)
,p_name=>'P358_NRO_VTANUPED'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100915102334588332)
,p_name=>'P358_EMP_ORIGEN_VTANUPED'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100915379818588334)
,p_name=>'P358_AUX_IR_VTANUPED'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100915459211588335)
,p_name=>'P285_URL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100915875633588339)
,p_name=>'P358_AUX_MOSTRAR_REPOSICION'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100916504617588346)
,p_name=>'P358_AUX_COD_EMP_REPOS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100916635385588347)
,p_name=>'P358_AUX_SER_REPOS'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100916755138588348)
,p_name=>'P358_AUX_NRO_REPOS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100916827784588349)
,p_name=>'P358_AUX_FEC_SOL_REPOS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101885368215780218)
,p_name=>'P358_AUX_MSJ_CONTROL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101886110375780226)
,p_name=>'P358_A_OBSERVACION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101886396711780228)
,p_name=>'P358_A_HORA_ALTA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101886475817780229)
,p_name=>'P358_A_FEC_CAMBIO_ESTADO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101886522393780230)
,p_name=>'P358_A_DESC_SUCURSAL_CLI'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(98391593220430930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101888244604780247)
,p_name=>'P358_ACCION_CABECERA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103703818963610902)
,p_name=>'P358_ROW_ID_CABECERA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(196502053486211584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103703964321610903)
,p_name=>'P358_COD_REPARTIDOR_MM'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103704008235610904)
,p_name=>'P358_COD_USUARIO_RENDICION'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103704105152610905)
,p_name=>'P358_PLANILLA_FACTURADA'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103704271277610906)
,p_name=>'P358_USER_CONFIRMADO_DISTRIB'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103704312285610907)
,p_name=>'P358_FEC_CONFIRMADO_DISTRIB'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(98391388221430928)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98889485846038721)
,p_name=>'DA_BORRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(98889231614038719)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98889527846038722)
,p_event_id=>wwv_flow_imp.id(98889485846038721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_OBS_PED,P358_COD_VEHICULO,P358_TOT_GUARANIES,P358_TIPO,P358_TOT_VOLUMEN,P358_A_COD_SUCURSAL,P358_C_MARCA,P358_A_DIRECCION_SUCURSAL_CLI,P358_DIREC_CLIENTE,P358_C_VOLUMEN,P358_DEPARTAMENTO,P358_C_CHAPA,P358_IMPORTE,P358_C_PESOKG,P358_SITUACION_PED'
||'IDO,P358_IND_SOLICITUD_REPOSICION,P358_C_TIPO_ENTREGA,P358_C_LARGO,P358_C_ANCHO,P358_C_ALTO,P358_C_IND_ENTREGA,P358_C_FEC_CONFIRMADO,P358_C_DEPARTMENTO,P358_C_CIUDAD,P358_C_PORTON,P358_C_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98889619148038723)
,p_name=>'DA_SET_VALORES_ADICIONALES'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_COD_VEHICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98889753938038724)
,p_event_id=>wwv_flow_imp.id(98889619148038723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    Select tipo, volumen,chapa,peso_kg,largo,alto,ancho,marca  ',
'    INTO  ',
'        :P358_TIPO,',
'        :P358_C_VOLUMEN,',
'        :P358_C_CHAPA,',
'        :P358_C_PESOKG,',
'        :P358_C_LARGO,',
'        :P358_C_ALTO,',
'        :P358_C_ANCHO,',
'        :P358_C_MARCA',
'    from rp_vehiculos',
'    where cod_empresa = :P_COD_EMPRESA',
'    AND COD_VEHICULO = :P358_COD_VEHICULO',
'    and NVL(:P358_TOT_VOLUMEN ,''0'')<=nvl(volumen,0);    ',
'',
'END;'))
,p_attribute_02=>'P358_COD_VEHICULO,P358_TOT_VOLUMEN'
,p_attribute_03=>'P358_TIPO,P358_C_VOLUMEN,P358_C_CHAPA,P358_C_PESOKG,P358_C_LARGO,P358_C_ALTO,P358_C_ANCHO,P358_C_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_COD_VEHICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98891235636038739)
,p_name=>'DA_CARGAR_DET'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(98887515747038702)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98891342888038740)
,p_event_id=>wwv_flow_imp.id(98891235636038739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RPPLAPED.pr_cargar_block_detalle(                             ',
'    PI_COD_EMPRESA => :P358_COD_EMPRESA,',
'    PI_TIPO_ENTREGA => :P358_C_TIPO_ENTREGA,',
'    PI_IND_LOGISTICA => :P358_P_IND_LOGISTICA,',
'    PI_DEPARTAMENTO => :P358_C_DEPARTMENTO,',
'    PI_CIUDAD => :P358_C_CIUDAD,',
'    pi_fac_contado => :P358_FAC_CONTADO,',
'    pi_fac_credito => :P358_FAC_CREDITO,                               ',
'    pi_c_VOLUMEN => :P358_C_VOLUMEN  );',
'',
'end;',
'select   SUM(C016),SUM(C015)         ',
'into ',
'    :P358_TOT_GUARANIES,',
'    :P358_TOT_VOLUMEN',
'',
'from apex_collections',
'where collection_name = ''COL_DETALLE''',
'and nvl(c030,''P'') <> ''B'';'))
,p_attribute_02=>'P358_FAC_CONTADO, P358_FAC_CREDITO, P358_C_VOLUMEN ,P358_COD_EMPRESA,P358_C_TIPO_ENTREGA,P358_C_DEPARTMENTO,P358_C_CIUDAD,P358_P_IND_LOGISTICA'
,p_attribute_03=>'P358_TOT_VOLUMEN,P358_TOT_GUARANIES,P358_AUX_COD_EMP_REPOS,P358_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98891442336038741)
,p_event_id=>wwv_flow_imp.id(98891235636038739)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391486883430929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99356025879550529)
,p_name=>'DA_CONFIRMADO'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(98392424051430939)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99356107404550530)
,p_event_id=>wwv_flow_imp.id(99356025879550529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl( :P358_C_IND_ENTREGA, ''N'' ) = ''N'' THEN',
'CREA_PEDIDO_pickeo(:P358_COD_SUCURSAL,:P358_C_NRO_PLANILLA ) ;',
'    ',
'    :P358_C_IND_ENTREGA := ''S'';',
'    :P358_C_FEC_CONFIRMADO:= sysdate;    ',
' commit;',
'end if;'))
,p_attribute_02=>'P358_C_IND_ENTREGA,P358_C_NRO_PLANILLA,P358_COD_SUCURSAL'
,p_attribute_03=>'P358_C_IND_ENTREGA,P358_C_FEC_CONFIRMADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99356292013550531)
,p_event_id=>wwv_flow_imp.id(99356025879550529)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_C_IND_ENTREGA,P358_C_FEC_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966423671984608)
,p_event_id=>wwv_flow_imp.id(99356025879550529)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if(:P358_P_PLANILLA is not null)then',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COL_CABECERA'',',
'                    P_SEQ => 1,',
'                    P_C001  => :P358_COD_EMPRESA,',
'                    P_C002  => :P358_C_NRO_PLANILLA,',
'                    P_C003  => :P358_C_FEC_PLANILLA,',
'                    P_C004  => :P358_FEC_RENDICION,',
'                    P_C005  => :P358_FEC_RENDICION_ORIG,',
'                    P_C006  => :P358_COD_ZONA_REPARTO,',
'                    P_C007  => :P358_COD_REPARTIDOR,',
'                    P_C008  => :P358_COD_VEHICULO,',
'                    P_C009  => :P358_COD_USUARIO,',
'                    P_C010  => :P358_ESTADO,',
'                    P_C011  => :P358_KM_SALIDA,',
'                    P_C012  => :P358_KM_ESTIMADO,',
'                    P_C013  => :P358_KM_LLEGADA,',
'                    P_C014  => :P358_C_COMENTARIO,',
'                    P_C015  => :P358_C_HORA_ALTA,',
'                    P_C016  => :P358_C_IND_ENTREGA ,',
'                    P_C017  => :P358_C_FEC_CONFIRMADO ,',
'                    P_C018  => :P358_C_PORTON,',
'                    P_C019  => :P358_C_TIPO_ENTREGA,',
'                    p_c020  => :P358_FEC_CONFIRMADO_DISTRIB,',
'                    P_C021  => :P358_COD_SUCURSAL,',
'                    P_C022  => :P358_COD_REPARTIDOR_MM,',
'                    P_C024  => :P358_COD_USUARIO_RENDICION,',
'                    P_C025  => :P358_PLANILLA_FACTURADA,',
'                    P_C026  => :P358_USER_CONFIRMADO_DISTRIB,',
'                    P_C027  => :P358_FEC_CONFIRMADO_DISTRIB,',
'                    P_C050  => :P358_ROW_ID_CABECERA                         );',
'    else APEX_COLLECTION.add_MEMBER(P_COLLECTION_NAME => ''COL_CABECERA'',',
'                    P_C001  => :P358_COD_EMPRESA,',
'                    P_C002  => :P358_C_NRO_PLANILLA,',
'                    P_C003  => :P358_C_FEC_PLANILLA,',
'                    P_C004  => :P358_FEC_RENDICION,',
'                    P_C005  => :P358_FEC_RENDICION_ORIG,',
'                    P_C006  => :P358_COD_ZONA_REPARTO,',
'                    P_C007  => :P358_COD_REPARTIDOR,',
'                    P_C008  => :P358_COD_VEHICULO,',
'                    P_C009  => :P358_COD_USUARIO,',
'                    P_C010  => :P358_ESTADO,',
'                    P_C011  => :P358_KM_SALIDA,',
'                    P_C012  => :P358_KM_ESTIMADO,',
'                    P_C013  => :P358_KM_LLEGADA,',
'                    P_C014  => :P358_C_COMENTARIO,',
'                    P_C015  => :P358_C_HORA_ALTA,',
'                    P_C016  => :P358_C_IND_ENTREGA ,',
'                    P_C017  => :P358_C_FEC_CONFIRMADO ,',
'                    P_C018  => :P358_C_PORTON,',
'                    P_C019  => :P358_C_TIPO_ENTREGA,',
'                    p_c020  => :P358_FEC_CONFIRMADO_DISTRIB,',
'                    P_C021  => :P358_COD_SUCURSAL,',
'                    P_C022  => :P358_COD_REPARTIDOR_MM,',
'                    P_C024  => :P358_COD_USUARIO_RENDICION,',
'                    P_C025  => :P358_PLANILLA_FACTURADA,',
'                    P_C026  => :P358_USER_CONFIRMADO_DISTRIB,',
'                    P_C027  => :P358_FEC_CONFIRMADO_DISTRIB);',
'                    ',
'    end if;',
'   ',
'end;'))
,p_attribute_02=>'P358_COD_EMPRESA,P358_C_NRO_PLANILLA,P358_C_FEC_PLANILLA,P358_FEC_RENDICION,P358_FEC_RENDICION_ORIG,P358_COD_ZONA_REPARTO,P358_COD_REPARTIDOR,P358_COD_VEHICULO,P358_COD_USUARIO,P358_ESTADO,P358_KM_SALIDA,P358_KM_ESTIMADO,P358_KM_LLEGADA,P358_C_COMENT'
||'ARIO,P358_C_HORA_ALTA,P358_C_IND_ENTREGA ,P358_C_FEC_CONFIRMADO ,P358_C_PORTON,P358_C_TIPO_ENTREGA,P358_FEC_CONFIRMADO_DISTRIB,P358_COD_SUCURSAL,P358_COD_REPARTIDOR_MM,P358_COD_USUARIO_RENDICION,P358_PLANILLA_FACTURADA,P358_USER_CONFIRMADO_DISTRIB,P3'
||'58_FEC_CONFIRMADO_DISTRIB,P358_ROW_ID_CABECERA'
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
 p_id=>wwv_flow_imp.id(103966319919984607)
,p_event_id=>wwv_flow_imp.id(99356025879550529)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_COD_VEHICULO,P358_C_DEPARTMENTO,P358_C_CIUDAD,P358_C_IND_ENTREGA,P358_C_PORTON,P358_C_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966551843984609)
,p_event_id=>wwv_flow_imp.id(99356025879550529)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(98887515747038702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966666305984610)
,p_event_id=>wwv_flow_imp.id(99356025879550529)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(98889231614038719)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99356716953550536)
,p_name=>'DA_ABRIR_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99356658076550535)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99357136578550540)
,p_event_id=>wwv_flow_imp.id(99356716953550536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99356829026550537)
,p_event_id=>wwv_flow_imp.id(99356716953550536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99356453552550533)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99356952380550538)
,p_event_id=>wwv_flow_imp.id(99356716953550536)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99356569841550534)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99357049755550539)
,p_event_id=>wwv_flow_imp.id(99356716953550536)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391593220430930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99357202220550541)
,p_event_id=>wwv_flow_imp.id(99356716953550536)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-INSERT BLOQUE DETALLE',
'begin',
'    :P358_A_FEC_CAMBIO_ESTADO := :P358_C_FEC_PLANILLA;',
'    :P358_A_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'    :P358_A_TIP_COMPROBANTE := ''PED'';',
'  exception',
'      when others then',
'      apex_debug.error(sqlerrm);',
'end;',
''))
,p_attribute_02=>'P358_C_FEC_PLANILLA'
,p_attribute_03=>'P358_A_HORA_ALTA,P358_A_FEC_CAMBIO_ESTADO,P358_A_TIP_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99357346624550542)
,p_name=>'da_crear'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99356453552550533)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885044263780215)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-CREATE-RECORD ( Bloque detalle)',
':P358_AUX_MSJ_CONTROL := NULL;',
'IF(:P358_A_EMPRESA_ORIGEN IS NULL ) THEN',
'    :P358_AUX_MSJ_CONTROL := ''INGRESE EMPRESA ORIGEN'';',
'ELSIF(:P358_A_EMPRESA_ORIGEN IS NULL OR :P358_A_SER_COMPROBANTE IS NULL OR :P358_A_TIP_COMPROBANTE IS NULL OR :P358_A_NRO_COMPROBANTE IS NULL)THEN',
'        :P358_AUX_MSJ_CONTROL := ''COMPRUEBE QUE LOS CAMPOS OBLIGATORIOS NO ESTEN VACIOS'';',
'END IF;',
''))
,p_attribute_02=>'P358_A_EMPRESA_ORIGEN ,P358_A_SER_COMPROBANTE,P358_A_TIP_COMPROBANTE,P358_A_NRO_COMPROBANTE'
,p_attribute_03=>'P358_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885545546780220)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P358_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885175203780216)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if(:P358_A_EMPRESA_ORIGEN = ''NGO'') then',
'       RPPLAPED.pr_validar_tip_comprobante( ',
'              pi_cod_empresa => :P358_COD_EMPRESA,',
'              pi_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'              pi_ser_comprobante => :P358_A_SER_COMPROBANTE,',
'              pi_nro_comprobante => :P358_A_NRO_COMPROBANTE,',
'              pi_fac_contado => :P358_FAC_CONTADO,',
'              pi_fac_credito => :P358_FAC_CREDITO,',
'              pi_estado => :P358_ESTADO,',
'              pi_TIPO_entrega => :P358_C_TIPO_ENTREGA,',
'              pi_cod_cliente => :P358_A_COD_CLIENTE,',
'              pi_c_VOLUMEN => :P358_C_VOLUMEN,',
'              po_estado => :P358_A_ESTADO,',
'              po_TOT_VOLUMEN => :P358_A_TOT_VOLUMEN,',
'              po_cod_cliente => :P358_A_COD_CLIENTE,',
'              po_moneda => :P358_A_MONEDA,',
'              po_importe => :P358_A_IMPORTE,',
'              po_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'              po_cod_moneda => :P358_A_COD_MONEDA,',
'              po_obs_ped => :P358_A_OBS_PED,',
'              po_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'              po_direc_cliente => :P358_A_DIREC_CLIENTE,',
'              po_departamento => :P358_A_DEPARTAMENTO,',
'              po_ciudad => :P358_A_CIUDAD,',
'              po_volumen =>  :P358_A_VOLUMEN);',
'    elsif (:P358_A_EMPRESA_ORIGEN = ''CPH'') then',
'         RPPLAPED.pr_validar_tip_comprobante_cph( ',
'              pi_cod_empresa => :P358_COD_EMPRESA,',
'              pi_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'              pi_ser_comprobante => :P358_A_SER_COMPROBANTE,',
'              pi_nro_comprobante => :P358_A_NRO_COMPROBANTE,',
'              pi_fac_contado => :P358_FAC_CONTADO,',
'              pi_fac_credito => :P358_FAC_CREDITO,',
'              pi_estado => :P358_ESTADO,',
'              pi_TIPO_entrega => :P358_C_TIPO_ENTREGA,',
'              pi_cod_cliente => :P358_A_COD_CLIENTE,',
'              pi_c_VOLUMEN => :P358_C_VOLUMEN,',
'              po_estado => :P358_A_ESTADO,',
'              po_TOT_VOLUMEN => :P358_A_TOT_VOLUMEN,',
'              po_cod_cliente => :P358_A_COD_CLIENTE,',
'              po_moneda => :P358_A_MONEDA,',
'              po_importe => :P358_A_IMPORTE,',
'              po_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'              po_cod_moneda => :P358_A_COD_MONEDA,',
'              po_obs_ped => :P358_A_OBS_PED,',
'              po_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'              po_direc_cliente => :P358_A_DIREC_CLIENTE,',
'              po_departamento => :P358_A_DEPARTAMENTO,',
'              po_ciudad => :P358_A_CIUDAD,',
'              po_volumen =>  :P358_A_VOLUMEN);',
'    end if;',
'     ',
'',
'end;'))
,p_attribute_02=>'P358_COD_EMPRESA,P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE,P358_FAC_CONTADO,P358_FAC_CREDITO,P358_A_ESTADO,P358_C_TIPO_ENTREGA,P358_A_COD_CLIENTE,P358_C_VOLUMEN,P358_AUX_COD_EMP_REPOS,P358_ESTADO'
,p_attribute_03=>'P358_FAC_CONTADO,P358_FAC_CREDITO,P358_A_ESTADO,P358_C_TIPO_ENTREGA,P358_A_COD_CLIENTE,P358_C_VOLUMEN,P358_AUX_COD_EMP_REPOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885265882780217)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if(:P358_A_EMPRESA_ORIGEN = ''NGO'')THEN',
'        RPPLAPED.pr_validar_nro_comprobante(   ',
'        PI_TIPO_ENTREGA => :P358_C_TIPO_ENTREGA,',
'        pi_nro_comprobante => :P358_A_NRO_COMPROBANTE,',
'        pi_ser_comprobante => :P358_A_SER_COMPROBANTE,',
'        pi_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'        pi_cod_empresa => :P358_COD_EMPRESA,',
'        pi_estado => :P358_ESTADO,',
'        pi_cod_cliente => :P358_A_COD_CLIENTE,',
'        pi_c_VOLUMEN => :P358_C_VOLUMEN,',
'        pi_TOT_VOLUMEN => :P358_A_TOT_VOLUMEN,',
'        po_estado => :P358_A_ESTADO,',
'        po_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'        po_cod_cliente => :P358_A_COD_CLIENTE,',
'        po_moneda => :P358_A_MONEDA,',
'        po_cod_moneda => :P358_A_COD_MONEDA,',
'        po_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'        po_direc_cliente => :P358_A_DIREC_CLIENTE,',
'        po_departamento => :P358_A_DEPARTAMENTO,',
'        po_ciudad => :P358_A_CIUDAD,',
'        po_importe => :P358_A_IMPORTE,',
'        po_volumen => :P358_A_VOLUMEN,  ',
'        po_desc_sucursal_cli => :P358_A_DESC_SUCURSAL_CLI, ',
'        po_direccion_sucursal_cli => :P358_A_DIRECCION_SUCURSAL_CLI, ',
'        po_cod_sucursal_cli => :P358_A_COD_SUCURSAL_CLI,',
'        po_obs_ped => :P358_A_OBS_PED);',
'    ELSIF(:P358_A_EMPRESA_ORIGEN = ''CPH'')THEN',
'        RPPLAPED.pr_validar_nro_comprobante_cph(   ',
'        PI_TIPO_ENTREGA => :P358_C_TIPO_ENTREGA,',
'        pi_nro_comprobante => :P358_A_NRO_COMPROBANTE,',
'        pi_ser_comprobante => :P358_A_SER_COMPROBANTE,',
'        pi_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'        pi_cod_empresa => :P358_COD_EMPRESA,',
'        pi_estado => :P358_ESTADO,',
'        pi_cod_cliente => :P358_A_COD_CLIENTE,',
'        pi_c_VOLUMEN => :P358_C_VOLUMEN,',
'        pi_TOT_VOLUMEN => :P358_A_TOT_VOLUMEN,',
'        po_estado => :P358_A_ESTADO,',
'        po_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'        po_cod_cliente => :P358_A_COD_CLIENTE,',
'        po_moneda => :P358_A_MONEDA,',
'        po_cod_moneda => :P358_A_COD_MONEDA,',
'        po_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'        po_direc_cliente => :P358_A_DIREC_CLIENTE,',
'        po_departamento => :P358_A_DEPARTAMENTO,',
'        po_ciudad => :P358_A_CIUDAD,',
'        po_importe => :P358_A_IMPORTE,',
'        po_volumen => :P358_A_VOLUMEN,  ',
'        po_desc_sucursal_cli => :P358_A_DESC_SUCURSAL_CLI, ',
'        po_direccion_sucursal_cli => :P358_A_DIRECCION_SUCURSAL_CLI, ',
'        po_cod_sucursal_cli => :P358_A_COD_SUCURSAL_CLI,',
'        po_obs_ped => :P358_A_OBS_PED);',
'    end if;',
'    ',
'',
'end;'))
,p_attribute_02=>'P358_C_TIPO_ENTREGA,P358_A_NRO_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_TIP_COMPROBANTE,P358_COD_EMPRESA,P358_A_ESTADO,P358_A_COD_CLIENTE,P358_C_VOLUMEN,P358_A_TOT_VOLUMEN,P358_ESTADO'
,p_attribute_03=>'P358_A_DESC_SUCURSAL_CLI,P358_ESTADO,P358_A_NOMBRE_CLIENTE,P358_A_COD_CLIENTE,P358_A_MONEDA,P358_A_COD_MONEDA,P358_A_TIP_COMPROBANTE,P358_A_DIREC_CLIENTE,P358_A_DEPARTAMENTO,P358_A_CIUDAD,P358_A_IMPORTE,P358_A_VOLUMEN,P358_DESC_SUCURSAL,P358_A_DIRECC'
||'ION_SUCURSAL_CLI,P358_A_OBS_PED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99357438825550543)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*WHEN-CREATE-RECORD*/',
'	',
'',
'',
'	IF NVL(TO_NUMBER(:P358_TOT_VOLUMEN) ,''0'')>nvl(TO_NUMBER(:P358_C_VOLUMEN),TO_NUMBER(:P358_TOT_VOLUMEN)) THEN',
' ',
'      raise_application_error(-20201,''La planilla exede la capacidad del movil.'' || chr(13) ||',
unistr('                 ''El l\00EDmite es '' || ltrim( ( :P358_C_VOLUMEN ) ) || '' MTS3.''||sqlerrm); '),
'     END IF;'))
,p_attribute_02=>'P358_C_VOLUMEN,P358_TOT_VOLUMEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101886277269780227)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    RPPLAPED.pr_agregar_miembro_det(PI_COD_EMPRESA  => :P358_COD_EMPRESA,   ',
'        PI_COD_SUCURSAL    => :P358_COD_SUCURSAL,  ',
'        PI_NRO_PLANILLA    => :P358_C_NRO_PLANILLA, ',
'        PI_TIP_COMPROBANTE => :P358_A_TIP_COMPROBANTE,   ',
'        PI_SER_COMPROBANTE => :P358_A_SER_COMPROBANTE, ',
'        PI_NRO_COMPROBANTE => :P358_A_NRO_COMPROBANTE,    ',
'        PI_ESTADO          => :P358_A_ESTADO, ',
'        PI_OBS_PED        => :P358_A_OBS_PED, ',
'        PI_FEC_CAMBIO_ESTADO  => :P358_A_FEC_CAMBIO_ESTADO,        ',
'        PI_COD_USUARIO_CAMBIO => :P358_COD_USUARIO_CAMBIO,         ',
'        PI_HORA_ALTA          => :P358_A_HORA_ALTA,',
'        PI_VOLUMEN                  => :P358_A_VOLUMEN,        ',
'        PI_IMPORTE                  => :P358_A_IMPORTE,       ',
'        PI_EMPRESA_ORIGEN           => :P358_A_EMPRESA_ORIGEN,',
'        PI_IND_NO_FACTURAR_PEDIDO   => :P358_A_IND_NO_FAC_PED, ',
'        PI_IND_SOLICITUD_REPOSICION => :P358_IND_SOLICITUD_REPOSICION,  ',
'        PI_FEC_SOLICITUD_REPOSICION => :P358_FEC_SOL_REPOSICION,',
'        PI_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'        PI_cod_cliente => :P358_A_COD_CLIENTE,',
'        PI_moneda => :P358_A_MONEDA, ',
'        PI_cod_moneda => :P358_A_COD_MONEDA,',
'        PI_direc_cliente => :P358_A_DIREC_CLIENTE,         ',
'        PI_departamento => :P358_A_DEPARTAMENTO,',
'        PI_ciudad => :P358_A_CIUDAD, ',
'        PI_desc_sucursal_cli => :P358_A_DESC_SUCURSAL_CLI, ',
'        PI_direccion_sucursal_cli => :P358_A_DIRECCION_SUCURSAL_CLI, ',
'        PI_cod_sucursal_cli => :P358_A_COD_SUCURSAL_CLI,',
'        PI_ind_logistica => :P358_P_IND_LOGISTICA);',
'     select   SUM(C016),SUM(C015)         ',
'    into ',
'        :P358_TOT_GUARANIES,',
'        :P358_TOT_VOLUMEN',
'',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    and nvl(c030,''P'') <> ''B'';',
'     EXCEPTION',
'         WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR (''Error en procedimiento agregar miembro det''||SQLERRM);',
'',
'end;'))
,p_attribute_02=>'P358_COD_EMPRESA,P358_COD_SUCURSAL,P358_C_NRO_PLANILLA,P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE,P358_A_ESTADO,P358_A_OBS_PED,P358_A_FEC_CAMBIO_ESTADO,P358_COD_USUARIO_CAMBIO,P358_A_HORA_ALTA,P358_A_VOLUMEN,P358_A_IMPORTE,P'
||'358_A_EMPRESA_ORIGEN,P358_A_IND_NO_FAC_PED,P358_IND_SOLICITUD_REPOSICION,P358_FEC_SOL_REPOSICION,P358_A_NOMBRE_CLIENTE,P358_A_COD_CLIENTE,P358_A_MONEDA,P358_A_COD_MONEDA,P358_A_DIREC_CLIENTE,P358_A_DEPARTAMENTO,P358_A_CIUDAD,P358_A_DESC_SUCURSAL_CLI,'
||'P358_A_DIRECCION_SUCURSAL_CLI,P358_A_COD_SUCURSAL_CLI,P358_P_IND_LOGISTICA'
,p_attribute_03=>'P358_TOT_GUARANIES,P358_TOT_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885489343780219)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391593220430930)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966956619984613)
,p_event_id=>wwv_flow_imp.id(99357346624550542)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391486883430929)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99357667864550545)
,p_name=>'DA_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99356569841550534)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101886614273780231)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P358_AUX_MSJ_CONTROL := NULL;',
'IF(:P358_A_EMPRESA_ORIGEN IS NULL OR :P358_A_SER_COMPROBANTE IS NULL OR :P358_A_TIP_COMPROBANTE IS NULL OR :P358_A_NRO_COMPROBANTE IS NULL)THEN',
'    :P358_AUX_MSJ_CONTROL := ''COMPRUEBE QUE LOS CAMPOS OBLIGATORIOS NO ESTEN VACIOS'';',
'END IF;'))
,p_attribute_02=>'P358_A_EMPRESA_ORIGEN ,P358_A_SER_COMPROBANTE,P358_A_TIP_COMPROBANTE,P358_A_NRO_COMPROBANTE'
,p_attribute_03=>'P358_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101886715661780232)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P358_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERRO'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101886888667780233)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   RPPLAPED.pr_validar_tip_comprobante( ',
'          pi_cod_empresa => :P358_COD_EMPRESA,',
'          pi_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'          pi_ser_comprobante => :P358_A_SER_COMPROBANTE,',
'          pi_nro_comprobante => :P358_A_NRO_COMPROBANTE,',
'          pi_fac_contado => :P358_FAC_CONTADO,',
'          pi_fac_credito => :P358_FAC_CREDITO,',
'          pi_estado => :P358_A_ESTADO,',
'          pi_TIPO_entrega => :P358_C_TIPO_ENTREGA,',
'          pi_cod_cliente => :P358_A_COD_CLIENTE,',
'          pi_c_VOLUMEN => :P358_C_VOLUMEN,',
'          po_estado => :P358_A_ESTADO,',
'          po_TOT_VOLUMEN => :P358_A_TOT_VOLUMEN,',
'          po_cod_cliente => :P358_A_COD_CLIENTE,',
'          po_moneda => :P358_A_MONEDA,',
'          po_importe => :P358_A_IMPORTE,',
'          po_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'          po_cod_moneda => :P358_A_COD_MONEDA,',
'          po_obs_ped => :P358_A_OBS_PED,',
'          po_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'          po_direc_cliente => :P358_A_DIREC_CLIENTE,',
'          po_departamento => :P358_A_DEPARTAMENTO,',
'          po_ciudad => :P358_A_CIUDAD,',
'          po_volumen =>  :P358_A_VOLUMEN);',
'end;'))
,p_attribute_02=>'P358_COD_EMPRESA,P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE,P358_FAC_CONTADO,P358_FAC_CREDITO,P358_A_ESTADO,P358_C_TIPO_ENTREGA,P358_A_COD_CLIENTE,P358_C_VOLUMEN,P358_AUX_COD_EMP_REPOS'
,p_attribute_03=>'P358_COD_EMPRESA,P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE,P358_FAC_CONTADO,P358_FAC_CREDITO,P358_A_ESTADO,P358_C_TIPO_ENTREGA,P358_A_COD_CLIENTE,P358_C_VOLUMEN,P358_AUX_COD_EMP_REPOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101886985769780234)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
' RPPLAPED.pr_validar_nro_comprobante(   ',
'        PI_TIPO_ENTREGA => :P358_C_TIPO_ENTREGA,',
'        pi_nro_comprobante => :P358_A_NRO_COMPROBANTE,',
'        pi_ser_comprobante => :P358_A_SER_COMPROBANTE,',
'        pi_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'        pi_cod_empresa => :P358_COD_EMPRESA,',
'        pi_estado => :P358_A_ESTADO,',
'        pi_cod_cliente => :P358_A_COD_CLIENTE,',
'        pi_c_VOLUMEN => :P358_C_VOLUMEN,',
'        pi_TOT_VOLUMEN => :P358_A_TOT_VOLUMEN,',
'        po_estado => :P358_A_ESTADO,',
'        po_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'        po_cod_cliente => :P358_A_COD_CLIENTE,',
'        po_moneda => :P358_A_MONEDA,',
'        po_cod_moneda => :P358_A_COD_MONEDA,',
'        po_tip_comprobante => :P358_A_TIP_COMPROBANTE,',
'        po_direc_cliente => :P358_A_DIREC_CLIENTE,',
'        po_departamento => :P358_A_DEPARTAMENTO,',
'        po_ciudad => :P358_A_CIUDAD,',
'        po_importe => :P358_A_IMPORTE,',
'        po_volumen => :P358_A_VOLUMEN,  ',
'        po_desc_sucursal_cli => :P358_A_DESC_SUCURSAL_CLI, ',
'        po_direccion_sucursal_cli => :P358_A_DIRECCION_SUCURSAL_CLI, ',
'        po_cod_sucursal_cli => :P358_A_COD_SUCURSAL_CLI,',
'        po_obs_ped => :P358_A_OBS_PED);',
'',
'end;'))
,p_attribute_02=>'P358_C_TIPO_ENTREGA,P358_A_NRO_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_TIP_COMPROBANTE,P358_COD_EMPRESA,P358_A_ESTADO,P358_A_COD_CLIENTE,P358_C_VOLUMEN,P358_A_TOT_VOLUMEN'
,p_attribute_03=>'P358_A_DESC_SUCURSAL_CLI,P358_ESTADO,P358_A_NOMBRE_CLIENTE,P358_A_COD_CLIENTE,P358_A_MONEDA,P358_A_COD_MONEDA,P358_A_TIP_COMPROBANTE,P358_A_DIREC_CLIENTE,P358_A_DEPARTAMENTO,P358_A_CIUDAD,P358_A_IMPORTE,P358_A_VOLUMEN,P358_DESC_SUCURSAL,P358_A_DIRECC'
||'ION_SUCURSAL_CLI,P358_A_OBS_PED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887003507780235)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*WHEN-CREATE-RECORD*/',
'	',
'',
'',
'	IF NVL(TO_NUMBER(:P358_TOT_VOLUMEN) ,''0'')>nvl(TO_NUMBER(:P358_C_VOLUMEN),TO_NUMBER(:P358_TOT_VOLUMEN)) THEN',
' ',
'      raise_application_error(-20201,''La planilla exede la capacidad del movil.'' || chr(13) ||',
unistr('                 ''El l\00EDmite es '' || ltrim( ( :P358_C_VOLUMEN ) ) || '' MTS3.''||sqlerrm); '),
'     END IF;'))
,p_attribute_02=>'P358_C_VOLUMEN,P358_TOT_VOLUMEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887155767780236)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    RPPLAPED.pr_modificar_miembro_det(PI_SEQ_ID_EDITAR => :P358_SEQ_ID_EDITAR, ',
'        PI_COD_EMPRESA  => :P358_COD_EMPRESA,   ',
'        PI_COD_SUCURSAL    => :P358_COD_SUCURSAL,  ',
'        PI_NRO_PLANILLA    => :P358_C_NRO_PLANILLA, ',
'        PI_TIP_COMPROBANTE => :P358_A_TIP_COMPROBANTE,   ',
'        PI_SER_COMPROBANTE => :P358_A_SER_COMPROBANTE, ',
'        PI_NRO_COMPROBANTE => :P358_A_NRO_COMPROBANTE,    ',
'        PI_ESTADO          => :P358_A_ESTADO, ',
'        PI_OBS_PED        => :P358_A_OBS_PED, ',
'        PI_FEC_CAMBIO_ESTADO  => :P358_A_FEC_CAMBIO_ESTADO,        ',
'        PI_COD_USUARIO_CAMBIO => :P358_COD_USUARIO_CAMBIO,         ',
'        PI_HORA_ALTA          => :P358_A_HORA_ALTA,',
'        PI_VOLUMEN                  => :P358_A_VOLUMEN,        ',
'        PI_IMPORTE                  => :P358_A_IMPORTE,       ',
'        PI_EMPRESA_ORIGEN           => :P358_A_EMPRESA_ORIGEN,',
'        PI_IND_NO_FACTURAR_PEDIDO   => :P358_A_IND_NO_FAC_PED, ',
'        PI_IND_SOLICITUD_REPOSICION => :P358_IND_SOLICITUD_REPOSICION,  ',
'        PI_FEC_SOLICITUD_REPOSICION => :P358_FEC_SOL_REPOSICION,',
'        PI_nombre_cliente => :P358_A_NOMBRE_CLIENTE,',
'        PI_cod_cliente => :P358_A_COD_CLIENTE,',
'        PI_moneda => :P358_A_MONEDA, ',
'        PI_cod_moneda => :P358_A_COD_MONEDA,',
'        PI_direc_cliente => :P358_A_DIREC_CLIENTE,         ',
'        PI_departamento => :P358_A_DEPARTAMENTO,',
'        PI_ciudad => :P358_A_CIUDAD, ',
'        PI_desc_sucursal_cli => :P358_A_DESC_SUCURSAL_CLI, ',
'        PI_direccion_sucursal_cli => :P358_A_DIRECCION_SUCURSAL_CLI, ',
'        PI_cod_sucursal_cli => :P358_A_COD_SUCURSAL_CLI,',
'        PI_ind_logistica => :P358_P_IND_LOGISTICA);',
'     select   SUM(C016),SUM(C015)         ',
'into ',
'    :P358_TOT_GUARANIES,',
'    :P358_TOT_VOLUMEN',
'',
'from apex_collections',
'where collection_name = ''COL_DETALLE''',
'and nvl(c030,''P'') <> ''B'';',
'     EXCEPTION',
'         WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR (''Error en procedimiento agregar miembro det''||SQLERRM);',
'',
'end;'))
,p_attribute_02=>'P358_SEQ_ID_EDITAR,P358_COD_EMPRESA,P358_COD_SUCURSAL,P358_C_NRO_PLANILLA,P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE,P358_A_ESTADO,P358_A_OBS_PED,P358_A_FEC_CAMBIO_ESTADO,P358_COD_USUARIO_CAMBIO,P358_A_HORA_ALTA,P358_A_VOLUM'
||'EN,P358_A_IMPORTE,P358_A_EMPRESA_ORIGEN,P358_A_IND_NO_FAC_PED,P358_IND_SOLICITUD_REPOSICION,P358_FEC_SOL_REPOSICION,P358_A_NOMBRE_CLIENTE,P358_A_COD_CLIENTE,P358_A_MONEDA,P358_A_COD_MONEDA,P358_A_DIREC_CLIENTE,P358_A_DEPARTAMENTO,P358_A_CIUDAD,P358_A'
||'_DESC_SUCURSAL_CLI,P358_A_DIRECCION_SUCURSAL_CLI,P358_A_COD_SUCURSAL_CLI,P358_P_IND_LOGISTICA'
,p_attribute_03=>'P358_TOT_GUARANIES,P358_TOT_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887297119780237)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391593220430930)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103967005592984614)
,p_event_id=>wwv_flow_imp.id(99357667864550545)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391486883430929)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99761185958812546)
,p_name=>'DA_CHECK'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99761218459812547)
,p_event_id=>wwv_flow_imp.id(99761185958812546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RPPLAPED.PR_CHECK(P_SEQ_ID => :P358_SEQ_ID,',
'                  P_ACCION => :P358_ACCION,',
'                  P_COLECCION => ''COL_DETALLE'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P358_SEQ_ID,P358_ACCION'
,p_attribute_03=>'P358_AUX_COD_EMP_REPOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100914201175588323)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100914369677588324)
,p_event_id=>wwv_flow_imp.id(100914201175588323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select',
'        c006 situacion_pedido, ',
'        C014 HORA_ALTA,',
'        C017 EMPRESA_ORIGEN,',
'        C019 IND_SOLICITUD_REPOSICION, ',
'        C026 V_obs_ped,',
'        C027 V_direc_cliente,',
'        C029 v_departamento,',
'        C034 ||'' - ''|| C032 v_desc_sucursal_cli,',
'        C033 v_direccion_sucursal_cli',
'       ',
'    into  ',
'        :P358_SITUACION_PEDIDO,',
'        :P358_DET_HORA_ALTA,',
'        :P358_EMPRESA_ORIGEN,',
'        :P358_IND_SOLICITUD_REPOSICION,',
'        :P358_OBS_PED,',
'        :P358_DIREC_CLIENTE,',
'        :P358_DEPARTAMENTO,',
'        :P358_DESC_SUCURSAL_CLI,',
'        :P358_DIRECCION_SUCURSAL_CLI',
'        ',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P358_SEQ_ID_DETALLE;',
'end;'))
,p_attribute_02=>'P358_SEQ_ID_DETALLE'
,p_attribute_03=>'P358_DET_HORA_ALTA,P358_EMPRESA_ORIGEN,P358_IND_SOLICITUD_REPOSICION,P358_OBS_PED,P358_DIREC_CLIENTE,P358_DEPARTAMENTO,P358_DESC_SUCURSAL_CLI,P358_DIRECCION_SUCURSAL_CLI,P358_SITUACION_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100914485301588325)
,p_event_id=>wwv_flow_imp.id(100914201175588323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391694555430931)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100914658518588327)
,p_name=>'DA_IR_VTANUPED'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_GESTIONAR_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100914865349588329)
,p_event_id=>wwv_flow_imp.id(100914658518588327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'        C004 SER_comprobante,',
'        C005 NRO_comprobante,',
'        C017 EMPRESA_ORIGEN',
'    INTO :P358_SER_VTANUPED,',
'        :P358_NRO_VTANUPED,',
'        :P358_EMP_ORIGEN_VTANUPED',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND SEQ_ID = :P358_GESTIONAR_PEDIDO;',
'',
'END;'))
,p_attribute_02=>'P358_GESTIONAR_PEDIDO'
,p_attribute_03=>'P358_EMP_ORIGEN_VTANUPED,P358_NRO_VTANUPED,P358_SER_VTANUPED'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_imp.id(100914742748588328)
,p_event_id=>wwv_flow_imp.id(100914658518588327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P358_AUX_IR_VTANUPED := NULL;',
'declare ',
'vestado_pedido  varchar2(10); ',
'vpendiente number ; ',
'',
'begin',
'        ',
'	',
'			if :P358_EMP_ORIGEN_VTANUPED =''NGO'' then ',
'				',
'					begin ',
'						',
'						select  nvl(estado, ''P'') , sum(d.cantidad - nvl(cantidad_facturada,0))',
'						into vestado_pedido,  vpendiente',
'						from vt_pedidos_cabecera c, vt_pedidos_detalle d',
'						where C.cod_empresa = :P358_COD_EMPRESA ',
'					  AND( C.SER_COMPROBANTE=:P358_SER_VTANUPED)',
'					  AND( C.NRO_COMPROBANTE=:P358_NRO_VTANUPED)',
'					  AND C.COD_EMPRESA =D.COD_EMPRESA ',
'					  AND C.SER_COMPROBANTE = D.SER_COMPROBANTE ',
'					  AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE ',
'					  AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE ',
'					  group by nvl(estado, ''P'') ; ',
'					exception ',
'						 when others then ',
'						  vestado_pedido  := ''P'' ; ',
'					end; ',
'			    if vestado_pedido in (''P'') then ',
'			    	:P358_AUX_IR_VTANUPED := 1;			  	',
'			    		',
'			     ELSif  vestado_pedido in (''A'') then ',
'                        raise_application_error(-20201,''El pedido ya se encuentra anulado''||sqlerrm);  ',
'			     ELSIF vestado_pedido in (''F'') and nvl(vpendiente,0)= 0  then ',
'                       raise_application_error(-20201,''El pedido ya se encuentra totalmente facturado''||sqlerrm);  ',
'			     elsif vestado_pedido in (''C'') then ',
'                       raise_application_error(-20201,''El pedido ya se encuentra cerrado''||sqlerrm); ',
'			     ',
'			     	 ',
'			     	',
'			   end if; ',
'			   else ',
'                raise_application_error(-20201,''Este Pedido no se puede gestionar desde NGO. Contactar con los responsables de CPH.''||sqlerrm); ',
'	 ',
'			    	',
'			end if; 	',
'end; ',
''))
,p_attribute_02=>'P358_EMP_ORIGEN_VTANUPED,P358_NRO_VTANUPED,P358_SER_VTANUPED'
,p_attribute_03=>'P358_AUX_IR_VTANUPED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100915258323588333)
,p_event_id=>wwv_flow_imp.id(100914658518588327)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT APEX_PAGE.GET_URL (  p_page   => 285,',
'                                p_items  => ''P285_SER_PEDIDO,P285_NRO_PEDIDO'',',
'                                p_values => (''''||:P358_SER_VTANUPED||'',''||:P358_NRO_VTANUPED||'''')) f_url_1',
'    INTO :P285_URL',
'    FROM DUAL;',
'end;'))
,p_attribute_02=>'P358_SER_VTANUPED,P358_NRO_VTANUPED'
,p_attribute_03=>'P285_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_AUX_IR_VTANUPED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100915524095588336)
,p_event_id=>wwv_flow_imp.id(100914658518588327)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P285_URL").getValue();',
'',
'apex.navigation.redirect (url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_AUX_IR_VTANUPED'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100915629698588337)
,p_name=>'DA_VER_REPOSICION'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_VER_REPOSICION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100915753346588338)
,p_event_id=>wwv_flow_imp.id(100915629698588337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P358_AUX_MOSTRAR_REPOSICION := NULL;',
'BEGIN',
'    select',
'        C001 COD_EMPRESA,',
'        C004 SER_comprobante,',
'        C005 NRO_comprobante,',
'        TO_DATE(C020,''DD/MM/YYYY'') FEC_SOLICITUD_REPOSICION',
'       ',
'    into  ',
'        :P358_AUX_COD_EMP_REPOS,',
'        :P358_AUX_SER_REPOS,',
'        :P358_AUX_NRO_REPOS,',
'        :P358_AUX_FEC_SOL_REPOS',
'        ',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P358_VER_REPOSICION; ',
'',
'',
'    ',
'    RPPLAPED.pr_cargar_reposicion(',
'                        PI_COD_EMPRESA => :P358_AUX_COD_EMP_REPOS,',
'                        PI_SER_PEDIDO => :P358_AUX_SER_REPOS,',
'                        PI_NRO_PEDIDO => :P358_AUX_NRO_REPOS,',
'                        pi_fec_solicitud_reposicion => :P358_AUX_FEC_SOL_REPOS);',
'    :P358_AUX_MOSTRAR_REPOSICION := 1;',
'END;'))
,p_attribute_02=>'P358_VER_REPOSICION'
,p_attribute_03=>'P358_AUX_MOSTRAR_REPOSICION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101883653849780201)
,p_event_id=>wwv_flow_imp.id(100915629698588337)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(100915939733588340)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100916949806588350)
,p_event_id=>wwv_flow_imp.id(100915629698588337)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(100916465054588345)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_AUX_MOSTRAR_REPOSICION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101885680343780221)
,p_name=>'DA_CERRAR'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99356360547550532)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885759438780222)
,p_event_id=>wwv_flow_imp.id(101885680343780221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391593220430930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101885817624780223)
,p_name=>'DA_ENVIAR_MAIL'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_SEND_EMAIL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101885912557780224)
,p_event_id=>wwv_flow_imp.id(101885817624780223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P358_AUX_MSJ_CONTROL := NULL;',
'BEGIN',
'    FOR DATO IN (SELECT ',
'                C003 tip_comprobante,',
'                C004 SER_comprobante,',
'                C005 NRO_comprobante,',
'                C006 SITUACION_PEDIDO,',
'                C017 EMPRESA_ORIGEN,',
'                C019 IND_SOLICITUD_REPOSICION,',
'                C020 FEC_SOLICITUD_REPOSICION',
'                    ',
'                 FROM APEX_COLLECTIONS',
'                 WHERE COLLECTION_NAME = ''COL_DETALLE''',
'                 AND SEQ_ID = :P358_SEND_EMAIL )LOOP',
'    ',
'',
'',
'    IF ltrim( rtrim(DATO.SITUACION_PEDIDO)) not in(''SIN STOCK SUC - STOCK PARCIAL PERIFERICO'', ',
'  		                    ''SIN STOCK SUC - STOCK COMPLETO PERIFERICO'', ',
'  		                    ''STOCK PARCIAL SUC - STOCK PARCIAL PERIFERICO'',',
'  		                    ''STOCK PARCIAL SUC - STOCK COMPLETO SUC+PERIFERICO'', ',
'  		                    ''FACT PARCIAL - STOCK PARCIAL PERIFERICO'',',
'  	                     	''FACT PARCIAL - STOCK COMPLETO SUC+PERIFERICO''',
'  	                     	) then ',
'        :P358_AUX_MSJ_CONTROL := ''Depositos perifericos sin stock'';',
'  	 ',
'  		 ',
'	else ',
'		if DATO.empresa_origen =''NGO'' then ',
'			',
'			 if nvl(DATO.ind_solicitud_reposicion, ''N'' ) =''N'' then ',
'	  		',
'			  		sp_correo_repos_periferico(DATO.ser_comprobante, DATO.nro_comprobante); ',
'			  		DATO.ind_solicitud_reposicion := ''S'' ; ',
'			  	  DATO.fec_solicitud_reposicion :=sysdate ; ',
'			  		commit; ',
'			  		:P358_AUX_MSJ_CONTROL := ''Correo enviado. favor verificar'';',
'			 else ',
'			 	 	 ',
'			 	    :P358_AUX_MSJ_CONTROL := ''El correo para reposicion ya fue enviado.Se hara un reenvio'';',
'                    sp_correo_repos_periferico(DATO.ser_comprobante, DATO.nro_comprobante); ',
'			 end if; ',
'	else ',
'			 	',
'		 if nvl(DATO.ind_solicitud_reposicion, ''N'' ) =''N'' then ',
'	  		',
'			  		sp_correo_repos_perif_cph (DATO.ser_comprobante, DATO.nro_comprobante); ',
'			  		DATO.ind_solicitud_reposicion := ''S''; ',
'			  		DATO.fec_solicitud_reposicion := sysdate; ',
'			  		commit; ',
'			  		',
'		  ',
'                    :P358_AUX_MSJ_CONTROL := ''Correo enviado. favor verificar'';',
'			 else ',
'                    :P358_AUX_MSJ_CONTROL := ''El correo para reposicion ya fue enviado.Se hara un reenvio'';',
'	 ',
'			 	    sp_correo_repos_perif_cph (DATO.ser_comprobante, DATO.nro_comprobante); ',
'			 end if;',
'			 ',
'	end if; ',
'	',
'  	 ',
'  		',
'  		',
'  	end if ; ',
'      END LOOP;',
'END;'))
,p_attribute_02=>'P358_SEND_EMAIL'
,p_attribute_03=>'P358_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101886023632780225)
,p_event_id=>wwv_flow_imp.id(101885817624780223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P358_AUX_MSJ_CONTROL.'
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101887332859780238)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887457418780239)
,p_event_id=>wwv_flow_imp.id(101887332859780238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT ',
'        C003 tip_comprobante,',
'        C004 SER_comprobante,',
'        C005 NRO_comprobante,',
'        C017 EMPRESA_ORIGEN',
'    INTO ',
'        :P358_A_TIP_COMPROBANTE,',
'        :P358_A_SER_COMPROBANTE,',
'        :P358_A_NRO_COMPROBANTE,',
'        :P358_A_EMPRESA_ORIGEN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND SEQ_ID = :P358_SEQ_ID_EDITAR;',
'end;'))
,p_attribute_02=>'P358_SEQ_ID_EDITAR'
,p_attribute_03=>'P358_A_EMPRESA_ORIGEN,P358_A_TIP_COMPROBANTE,P358_A_SER_COMPROBANTE,P358_A_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887556783780240)
,p_event_id=>wwv_flow_imp.id(101887332859780238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99356569841550534)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887696226780241)
,p_event_id=>wwv_flow_imp.id(101887332859780238)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(99356453552550533)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887713224780242)
,p_event_id=>wwv_flow_imp.id(101887332859780238)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391593220430930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101887819710780243)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101887937429780244)
,p_event_id=>wwv_flow_imp.id(101887819710780243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101888091005780245)
,p_event_id=>wwv_flow_imp.id(101887819710780243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    RPPLAPED.pr_borrar_miembro_collection (',
'    PI_SEQ_ID_ELIMINAR => :P358_SEQ_ID_ELIMINAR   );',
'     select   SUM(C016),SUM(C015)         ',
'        into ',
'        :P358_TOT_GUARANIES,',
'        :P358_TOT_VOLUMEN',
'     from apex_collections',
'        where collection_name = ''COL_DETALLE''',
'        and nvl(c030,''P'') <> ''B'';',
'   EXCEPTION',
'         WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR (''Error en procedimiento agregar miembro det''||SQLERRM);',
'end;'))
,p_attribute_02=>'P358_SEQ_ID_ELIMINAR'
,p_attribute_03=>'P358_TOT_GUARANIES,P358_TOT_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101888188748780246)
,p_event_id=>wwv_flow_imp.id(101887819710780243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391486883430929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101888390905780248)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(98889399668038720)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101888477063780249)
,p_event_id=>wwv_flow_imp.id(101888390905780248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101888507011780250)
,p_event_id=>wwv_flow_imp.id(101888390905780248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103965902945984603)
,p_name=>'DA_OCULTAR_ABM_DETALLE'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_C_FEC_CONFIRMADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103965736507984601)
,p_event_id=>wwv_flow_imp.id(103965902945984603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103704465717610908)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_C_FEC_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966186413984605)
,p_event_id=>wwv_flow_imp.id(103965902945984603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391486883430929)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_C_FEC_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103965879910984602)
,p_event_id=>wwv_flow_imp.id(103965902945984603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98391486883430929)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P358_C_FEC_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966280266984606)
,p_event_id=>wwv_flow_imp.id(103965902945984603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103704465717610908)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P358_C_FEC_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103966760192984611)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_A_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103966877209984612)
,p_event_id=>wwv_flow_imp.id(103966760192984611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'AVASCRIPT_SIDE_CODE : ',
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(390604493586583001)
,p_name=>'da_imprimir'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(347922664565606750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390604554352583002)
,p_event_id=>wwv_flow_imp.id(390604493586583001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P358_C_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390604617377583003)
,p_event_id=>wwv_flow_imp.id(390604493586583001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P358_C_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
' ',
'var nro_comprobante = apex.item("P358_C_NRO_PLANILLA").getValue();',
' ',
'var vfacnom = "RPTPEDIDO_COPY1";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
'/*',
'',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPTPEDIDO_COPY1.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_planilla +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
' */',
'',
'/*doRpfactmaspla (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P358_C_NRO_PLANILLA'').getValue());',
'',
'*/'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103703764918610901)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    for c in (select',
'                    C008  COD_VEHICULO,',
'                    C014  COMENTARIO,',
'                    C016  IND_ENTREGA ,',
'                    C018  PORTON',
'                from apex_collections',
'                where collection_name = ''COL_CABECERA''',
'                and seq_id = 1',
') loop',
'',
'RPPLAPED.pr_confirmar_cambios(PI_ACCION_CAB => :P358_ACCION_CABECERA,',
'            PI_COD_EMPRESA => :P358_COD_EMPRESA,    ',
'            PI_COD_SUCURSAL => :P358_COD_SUCURSAL,   ',
'            PI_NRO_PLANILLA => to_number(:P358_C_NRO_PLANILLA),      ',
'            PI_FEC_PLANILLA => to_date(:P358_C_FEC_PLANILLA,''dd/mm/yyyy''),           ',
'            PI_FEC_RENDICION => to_date(:P358_FEC_RENDICION,''dd/mm/yyyy''),           ',
'            PI_FEC_RENDICION_ORIG => to_date(:P358_FEC_RENDICION_ORIG,''dd/mm/yyyy''),         ',
'            PI_COD_ZONA_REPARTO => :P358_COD_ZONA_REPARTO,    ',
'            PI_COD_REPARTIDOR => :P358_COD_REPARTIDOR,    ',
'            PI_COD_VEHICULO => c.COD_VEHICULO,    ',
'            PI_COD_USUARIO => :P358_COD_USUARIO,   ',
'            PI_ESTADO => :P358_ESTADO,    ',
'            PI_KM_SALIDA => to_number(:P358_KM_SALIDA),      ',
'            PI_KM_ESTIMADO => to_number(:P358_KM_ESTIMADO),      ',
'            PI_KM_LLEGADA => to_number(:P358_KM_LLEGADA),      ',
'            PI_COMENTARIO => c.COMENTARIO, ',
'            PI_HORA_ALTA => :P358_C_HORA_ALTA,   ',
'            PI_COD_REPARTIDOR_MM => :P358_COD_REPARTIDOR_MM,   ',
'            PI_COD_USUARIO_RENDICION => :P358_COD_USUARIO_RENDICION,  ',
'            PI_IND_ENTREGA => c.IND_ENTREGA,   ',
'            PI_FEC_CONFIRMADO => to_date(:P358_C_FEC_CONFIRMADO),           ',
'            PI_PORTON => c.PORTON,  ',
'            PI_TIPO_ENTREGA => :P358_C_TIPO_ENTREGA,  ',
'            PI_PLANILLA_FACTURADA => :P358_PLANILLA_FACTURADA,   ',
'            PI_CONFIRMADO_DISTRIBUCION => :P358_CONFIRMADO_DISTRIBU,   ',
'            PI_FEC_CONFIRMADO_DISTRIBUCION => TO_DATE(:P358_FEC_CONFIRMADO_DISTRIB,''DD/MM/YYYY''),           ',
'            PI_USER_CONFIRMADO_DISTRIBUCIO => :P358_USER_CONFIRMADO_DISTRIB,',
'            PI_ROW_ID => :P358_ROW_ID_CABECERA',
'           );',
'    end loop;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''error en proceso confirmar cambios ''|| sqlerrm);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Datos confirmados correctamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(98763768665768665)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P358_P_PLANILLA:= 173078;',
'--:P358_P_PLANILLA:= 173550;',
'--:P358_P_IND_LOGISTICA := ''S'';',
'',
'  --pre form',
':P358_COD_MODULO := ''RP'';',
':P358_COD_USUARIO := nvl(:P_COD_USUARIO,user);',
':P358_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
':P358_NOM_EMPRESA := nvl(:P_NOM_EMPRESA,null);',
':P358_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'');',
':P358_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL,null);',
':P358_COD_MODULO := nvl(:P_COD_MODULO,''RP'');',
'',
':P358_COD_MONEDA_BASE := bs_busca_parametro( :P358_COD_MODULO, ''COD_MONEDA_BASE'' );',
':P358_FAC_CREDITO := bs_busca_parametro( :P358_COD_MODULO, ''TIPO_CREDITO'' );',
':P358_fac_contado     :=bs_busca_parametro( :P358_COD_MODULO, ''TIPO_CONTADO'' );',
':P358_nota_remision   :=bs_busca_parametro( :P358_COD_MODULO, ''TIPO_REMISION'' );',
':P358_ser_contado     :=bs_busca_parametro( :P358_COD_MODULO, ''SERIE_CONTADO'' );',
' ',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DETALLE'');',
'--PRE INSERT',
'IF(:P358_P_PLANILLA IS NULL)THEN',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CABECERA'');',
'',
':P358_ACCION_CABECERA := ''A'';',
'-- valores por defecto',
':P358_PLANILLA_FACTURADA := ''P'';',
':P358_CONFIRMADO_DISTRIBU := ''P'';',
'--when created record',
':P358_FEC_RENDICION := sysdate;',
':P358_C_FEC_PLANILLA := sysdate;',
':P358_C_IND_ENTREGA:= ''N'';',
':P358_C_TIPO_ENTREGA := ''CR'';',
'--when created record',
'    BEGIN',
'        select nvl( max( nro_planilla ), 0 ) + 1',
'          into :P358_C_NRO_PLANILLA',
'          from RP_REPARTO_PEDIDO_CAB',
'         where cod_empresa = :P358_COD_EMPRESA; ',
'        IF :P358_C_NRO_PLANILLA IS NULL THEN',
'          :P358_C_NRO_PLANILLA := 1;',
'        END IF;',
'      EXCEPTION',
'        when no_data_found then',
'          :P358_C_NRO_PLANILLA := 1;',
'        when others then',
'          raise_application_error(-20201,''Error en la tabla de Planillas Cabecera ''|| sqlerrm );',
'       ',
'      END;',
'',
' ELSE',
'    ',
'    :P358_ACCION_CABECERA := ''E'';',
'    :P358_C_NRO_PLANILLA := :P358_P_PLANILLA;',
'    RPPLAPED.pr_cargar_cabecera( PI_NRO_PLANILLA => :P358_C_NRO_PLANILLA, PI_COD_EMPRESA => :P358_COD_EMPRESA);',
'    RPPLAPED.pr_cargar_detalle(   PI_NRO_PLANILLA => :P358_C_NRO_PLANILLA,   PI_COD_EMPRESA => :P358_COD_EMPRESA, ',
'                        PI_IND_LOGISTICA => :P358_P_IND_LOGISTICA);',
'  SELECT     ',
'    C021 P358_COD_SUCURSAL,',
'    C003 FEC_PLANILLA,',
'    C004 FEC_RENDICION,',
'    C005 FEC_RENDICION_ORIG,',
'    C006 COD_ZONA_REPARTO,',
'    C007 COD_REPARTIDOR,',
'    C008 COD_VEHICULO,',
'    C009 COD_USUARIO,',
'    C010 ESTADO,',
'    C011 KM_SALIDA,',
'    C012 KM_ESTIMADO,',
'    C013 KM_LLEGADA,',
'    C014 COMENTARIO,',
'    C015 HORA_ALTA,',
'    C016 IND_ENTREGA ,',
'    C017 FEC_CONFIRMADO ,',
'    C018 PORTON,',
'    C019 TIPO_ENTREGA,',
'    c020 CONFIRMADO_DISTRIBU,',
'    C022 COD_REPARTIDOR_MM,',
'    C024 COD_USUARIO_RENDICION,',
'    C025 PLANILLA_FACTURADA,',
'    C026 USER_CONFIRMADO_DISTRIBUCION,',
'    C027 FEC_CONFIRMADO_DISTRIBUCION,',
'    c050 ROW_ID',
'',
' INTO',
'    :P358_COD_SUCURSAL,',
'    :P358_C_FEC_PLANILLA,',
'    :P358_FEC_RENDICION,',
'    :P358_FEC_RENDICION_ORIG,',
'    :P358_COD_ZONA_REPARTO,',
'    :P358_COD_REPARTIDOR,',
'    :P358_COD_VEHICULO,',
'    :P358_COD_USUARIO,',
'    :P358_ESTADO,',
'    :P358_KM_SALIDA,',
'    :P358_KM_ESTIMADO,',
'    :P358_KM_LLEGADA,',
'    :P358_C_COMENTARIO,',
'    :P358_C_HORA_ALTA,   ',
'    :P358_C_IND_ENTREGA,',
'    :P358_C_FEC_CONFIRMADO,',
'    :P358_C_PORTON,',
'    :P358_C_TIPO_ENTREGA,',
'    :P358_CONFIRMADO_DISTRIBU,',
'    :P358_COD_REPARTIDOR_MM,',
'    :P358_COD_USUARIO_RENDICION,',
'    :P358_PLANILLA_FACTURADA,',
'    :P358_USER_CONFIRMADO_DISTRIB,',
'    :P358_FEC_CONFIRMADO_DISTRIB,',
'    :P358_ROW_ID_CABECERA',
'   FROM APEX_COLLECTIONS',
'   WHERE COLLECTION_NAME = ''COL_CABECERA'';',
'',
'    BEGIN ',
'    Select  tipo, volumen,chapa,peso_kg,largo,alto,ancho,marca  ',
'    INTO  ',
'         ',
'        :P358_TIPO,',
'        :P358_C_VOLUMEN,',
'        :P358_C_CHAPA,',
'        :P358_C_PESOKG,',
'        :P358_C_LARGO,',
'        :P358_C_ALTO,',
'        :P358_C_ANCHO,',
'        :P358_C_MARCA',
'        from rp_vehiculos',
'        where cod_empresa = :P_COD_EMPRESA',
'        AND COD_VEHICULO = :P358_COD_VEHICULO',
'        and NVL(:P358_TOT_VOLUMEN ,''0'')<=nvl(volumen,0); ',
'    EXCEPTION',
'   ',
'    when others then',
'    null;',
'    end;',
'',
'',
'END IF;',
':P358_C_HORA_ALTA := to_char(sysdate,''hh24:mi:ss'');',
'',
'--WHEN VALIDATE ITEM COD_SUCURSAL',
'BEGIN',
'  select COD_SUCURSAL ||'' - ''||descripcion',
'    into :P358_DESC_SUCURSAL',
'    from sucursales',
'   where cod_empresa = :P358_COD_EMPRESA',
'     and cod_sucursal = :P358_COD_SUCURSAL;',
'EXCEPTION',
'  when no_data_found then',
'    :P358_DESC_SUCURSAL := NULL;',
unistr('    --mensaje_ex(''No se encuentra c\00F3digo de sucursal.'',2);'),
'    --raise form_trigger_failure;',
'  when others then',
'    :P358_DESC_SUCURSAL := NULL;',
'  --  mensaje_ex(''Error en la tabla de Sucursales ''||sqlerrm);',
'    --raise form_trigger_failure;',
'END;',
'',
'select   SUM(C016),SUM(C015)         ',
'into ',
'    :P358_TOT_GUARANIES,',
'    :P358_TOT_VOLUMEN',
'',
'from apex_collections',
'where collection_name = ''COL_DETALLE''',
'and nvl(c030,''P'') <> ''B'';',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
