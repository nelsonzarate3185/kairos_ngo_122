prompt --application/pages/page_00315
begin
--   Manifest
--     PAGE: 00315
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
 p_id=>315
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Preparacion de Pedidos de Repuestos'
,p_alias=>'CAREPSTA'
,p_step_title=>'Preparacion de Pedidos de Repuestos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P315_ACCION'',''AGREGAR'');',
'      $s(''P315_AUX_CHECK'', cb.value,false);',
'  } else {',
'      $s(''P315_ACCION'',''QUITAR'');',
'      $s(''P315_AUX_CHECK'', cb.value,false);',
'  }',
'}',
'',
'function refrescar(tiempo){',
'    setInterval("apex.region(''REPORTE'').refresh();", tiempo);',
'  };',
''))
,p_javascript_code_onload=>'refrescar(30000);'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{ background-color: #d3e4fa;}',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea, .apex-item-display-only{',
'   border-color: #487ab8  !important;   ',
'}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: cadetblue;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250306112225'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76490556189626944)
,p_plug_name=>'Pedidos de Repuestos STA, SALON, STANGO'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76992628000644909)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(76490556189626944)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76993989535644922)
,p_plug_name=>'ST_BLOQUES'
,p_parent_plug_id=>wwv_flow_imp.id(76490556189626944)
,p_region_css_classes=>'par_rep'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76995043981644933)
,p_plug_name=>'REPORTE'
,p_region_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(76490556189626944)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT SEQ_ID,',
'          C001 COD_EMPRESA,',
'          C002 COD_SUCURSAL,',
'          C003 ZONA_ENTREGA,',
'          C004 TIP_COMPROBANTE,',
'          C005 RUTA_ID,',
'          C006 NRO_COMPROBANTE,',
'          C007 OBSERVACION,',
'          C008 COD_USUARIO,',
'          C009 FACTURADO,',
'          C010 ANULADO,',
'          C011 VESTADO_PREPA,',
'          C012 NRO_DIARIO,',
'          C013 P_TIPO,',
'          C014 IND_CORREO,',
'          C015 VNOM_CLIENTE,',
'          C016 VESTADO1,',
'          C017 GARANTIA,',
'          C018 VDESC_GARANTIA,',
'          C019 HORA_ALTA,',
'          to_date(C020,''dd/mm/yyyy'') FEC_COMPROBANTE,',
'          C021 SER_COMPROBANTE,',
'          C022 BLOQUEADO,',
'          C023 COD_CLIENTE,',
'          C024 TIP_COMPROBANTE_REF,',
'          C025 SER_COMPROBANTE_REF,',
'          C026 NRO_COMPROBANTE_REF,',
'          C027 Vcod_articulo,',
'          C028 VDESC_ARTICULO,',
'          C029 IND_DEVOLUCION,',
'          APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'                              p_value => seq_id, ',
'                              p_attributes => (case C030 when ''S'' then ''checked '' else null end ) ||''onclick="seleccionar(this)"'' ) IND_PICKEAR,',
'          C031 RUTA_ENTREGA_ESTANDAR,',
'          C032 VRUTA_ENTREGA_ASIGNADA,',
'          C033 RETIRA_DE,',
'          C034 VOLUMEN,',
'          C035 ROWID_PED,',
'          NULL P,',
'          NULL VER',
'     FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PARAMETRO_CAREPSTA'';                                              '))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(76995105686644934)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>76995105686644934
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995222305644935)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995347843644936)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995483870644937)
,p_db_column_name=>'ZONA_ENTREGA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Zona Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995597415644938)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995661955644939)
,p_db_column_name=>'RUTA_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ruta Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995702729644940)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00FAmero')
,p_column_link=>'javascript:$s(''P315_AUX_NRO_COMPROBANTE'',''#SEQ_ID#'');'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995861004644941)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76995953911644942)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996032249644943)
,p_db_column_name=>'FACTURADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Facturado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996156530644944)
,p_db_column_name=>'ANULADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996219770644945)
,p_db_column_name=>'VESTADO_PREPA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996369456644946)
,p_db_column_name=>'NRO_DIARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Diario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996433736644947)
,p_db_column_name=>'P_TIPO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'P Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996500496644948)
,p_db_column_name=>'IND_CORREO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ind Correo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996687475644949)
,p_db_column_name=>'VNOM_CLIENTE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76996704589644950)
,p_db_column_name=>'VESTADO1'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vestado1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77390312675894701)
,p_db_column_name=>'GARANTIA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77390473285894702)
,p_db_column_name=>'VDESC_GARANTIA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77390580820894703)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77390762522894705)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Serie'
,p_column_link=>'javascript:$s(''P315_AUX_SER_COMPROBANTE'',''#SEQ_ID#'');'
,p_column_linktext=>'#SER_COMPROBANTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77390879187894706)
,p_db_column_name=>'BLOQUEADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Bloqueado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77390907421894707)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391070233894708)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391198857894709)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391219541894710)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391379670894711)
,p_db_column_name=>'VCOD_ARTICULO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391479697894712)
,p_db_column_name=>'VDESC_ARTICULO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Vdesc Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391508855894713)
,p_db_column_name=>'IND_DEVOLUCION'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ind Devolucion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391710130894715)
,p_db_column_name=>'RUTA_ENTREGA_ESTANDAR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ruta Entrega Estandar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391883508894716)
,p_db_column_name=>'VRUTA_ENTREGA_ASIGNADA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Vruta Entrega Asignada'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77391917907894717)
,p_db_column_name=>'RETIRA_DE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Retira De'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77392049397894718)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77392435037894722)
,p_db_column_name=>'IND_PICKEAR'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77392560298894723)
,p_db_column_name=>'P'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P315_PRS'',''#SEQ_ID#'');">P</button>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77393295701894730)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78229403943554116)
,p_db_column_name=>'VER'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P315_VER_DATOS'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347919440024606718)
,p_db_column_name=>'ROWID_PED'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Rowid Ped'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(340398899013114120)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77407604745912785)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'774077'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:VNOM_CLIENTE:OBSERVACION:VCOD_ARTICULO:VDESC_GARANTIA:FEC_COMPROBANTE:HORA_ALTA:VESTADO_PREPA:IND_PICKEAR:P:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(746037474025205843)
,p_report_id=>wwv_flow_imp.id(77407604745912785)
,p_name=>'BLOQUEADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VESTADO_PREPA'
,p_operator=>'='
,p_expr=>'BLOQUEADO'
,p_condition_sql=>' (case when ("VESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''BLOQUEADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fd2323'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(746037815784205845)
,p_report_id=>wwv_flow_imp.id(77407604745912785)
,p_name=>'CONFIRMADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VESTADO_PREPA'
,p_operator=>'='
,p_expr=>'CONFIRMADO'
,p_condition_sql=>' (case when ("VESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CONFIRMADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#a2ffaa'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(746038216265205845)
,p_report_id=>wwv_flow_imp.id(77407604745912785)
,p_name=>unistr('EN PREPARACI\00D3N')
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VESTADO_PREPA'
,p_operator=>'='
,p_expr=>'EN PREPARACION'
,p_condition_sql=>' (case when ("VESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN PREPARACION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#9affff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(746038684325205847)
,p_report_id=>wwv_flow_imp.id(77407604745912785)
,p_name=>'FACTURADO/DEVOLUCION'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VESTADO_PREPA'
,p_operator=>'='
,p_expr=>'FACTURADO/DEVOLUCION'
,p_condition_sql=>' (case when ("VESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''FACTURADO/DEVOLUCION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fee295'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(746039001785205847)
,p_report_id=>wwv_flow_imp.id(77407604745912785)
,p_name=>'PREPARADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VESTADO_PREPA'
,p_operator=>'='
,p_expr=>'PREPARADO'
,p_condition_sql=>' (case when ("VESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PREPARADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fdff8d'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(746039491479205847)
,p_report_id=>wwv_flow_imp.id(77407604745912785)
,p_name=>'SIN EXISTENCIA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VESTADO_PREPA'
,p_operator=>'='
,p_expr=>'SIN EXISTENCIA'
,p_condition_sql=>' (case when ("VESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN EXISTENCIA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fd2323'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77392679587894724)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(76490556189626944)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77393767845894735)
,p_plug_name=>'Detalle'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77393843200894736)
,p_plug_name=>'REPORTE_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(77393767845894735)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_CLIENTE,',
'       C002 NOMBRE,',
'       C003 cod_articulo,',
'       C004 desc_articulo,',
'       C005 tip_comprobante,',
'       C006 ser_comprobante,',
'       C007 nro_comprobante,',
'       C008 cantidad,',
'       C009 cantidad_confirmada,',
'       APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'                              p_value => seq_id, ',
'                              p_attributes => (case C010 when ''S'' then ''checked '' else null end )||''disabled'' ) verificado,',
'       C011 retira_de,',
'       APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'                              p_value => seq_id, ',
'                              p_attributes => (case C012 when ''S'' then ''checked '' else null end )||''disabled'' ) TRASLADADO,',
'       C013 TIPO,',
'       C014 Nro_traslado',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_CAREPSTA'';                                              '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
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
 p_id=>wwv_flow_imp.id(77393907183894737)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>77393907183894737
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394027321894738)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod. Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394107764894739)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394229564894740)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_link=>'javascript:$s(''P315_LLAMA_STCONSTO'',''#COD_ARTICULO#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394322854894741)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394467376894742)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394549968894743)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394657318894744)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394749875894745)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394844756894746)
,p_db_column_name=>'CANTIDAD_CONFIRMADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Confir.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77394972646894747)
,p_db_column_name=>'VERIFICADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Verif.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77395096686894748)
,p_db_column_name=>'RETIRA_DE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Retira De'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77395198470894749)
,p_db_column_name=>'TRASLADADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Trasl.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77395259622894750)
,p_db_column_name=>'TIPO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77538440106466608)
,p_db_column_name=>'NRO_TRASLADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro. Tras.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77538797931466611)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77547825304469004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'775479'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE:COD_ARTICULO:DESC_ARTICULO:SER_COMPROBANTE:NRO_COMPROBANTE:CANTIDAD:CANTIDAD_CONFIRMADA:VERIFICADO:TRASLADADO:NRO_TRASLADO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77538814398466612)
,p_plug_name=>'Cantidad Confirmada'
,p_parent_plug_id=>wwv_flow_imp.id(77393767845894735)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78162000839821044)
,p_plug_name=>'&P315_TIT_REPORTE.'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77541606067466640)
,p_plug_name=>'CAPICKREPUESTO'
,p_parent_plug_id=>wwv_flow_imp.id(78162000839821044)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cp.fec_comprobante, cp.cod_sucursal,  cp.tip_comprobante, cp.ser_comprobante, cp.nro_comprobante,',
'        cp.cod_cliente, pc.nombre cliente, cp.cod_condicion_venta,',
'        cp.cod_moneda, ''GS'' moneda, ''GS'' siglas, cp.tip_cambio, cp.cod_vendedor, ',
'        cp.cambio_moneda_precio,',
'         0 decimales,',
'        dp.cod_articulo, art.descripcion, NVL(art.cod_origen_art,''-'')cod_origen_art,',
'        nvl( dp.cantidad, 0 ) cantidad,',
'        nvl( dp.cantidad_facturada, 0 ) cantidad_facturada,',
'        nvl( dp.cantidad_confirmada, 0 ) cantidad_confirmada, NVL(dp.precio_unitario, ROUND(PRECIO(Dp.COD_aRTICULO,0)) )PRECIO_UNITARIO, ',
'        round(((nvl( dp.cantidad_confirmada, 0 ) *  nvl(dp.precio_unitario,NVL(ROUND(PRECIO(Dp.COD_ARTICULO,0)) , 0))))) monto_total, cc.comentario,',
'        0 monto_bruto, ',
'        cp.comentario entrega,  NVL(dp.porc_descuento,0)porc_descuento,',
'        Cp.COD_LISTA_PRECIO lista_cliente, cp.tot_comprobante, cp.recargo rec1,',
'        NVL(SUBSTR(CC.COMENTARIO,1, INSTR(SUBSTR(CC.COMENTARIO,1,10),'')'',1,2)),',
'        SUBSTR(CC.COMENTARIO,1, INSTR(SUBSTR(CC.COMENTARIO,1,10),'')'',1)))',
'        OBS2, Cp.COD_USUARIO, ',
'        ART.COD_EAN, ART.COD_ART_CORTO, pc.cod_persona, ',
'        round(NVL(precio(dp.cod_articulo,dp.porc_descuento),0),0) precio,',
'        round(NVL(precio(dp.cod_articulo,dp.porc_descuento),0) * nvl(dp.cantidad_confirmada,0))monto_total_confirmado, ',
'        decode (Cp.GARANTIA,''G'',''GARANTIA'',''PARTICULAR'')TIPO, cp.observacion, ',
'        ubicacion( dp.COD_ARTICULO , ''101'' ,''PASILLO''      )PASILLO,',
'                      ubicacion( dp.COD_ARTICULO , ''101'' ,''BANDEJA''      )BANDEJA,',
'                             ubicacion( dp.COD_ARTICULO , ''101'' ,''CUERPO''      )CUERPO,',
'                             ubicacion( dp.COD_ARTICULO , ''101'' ,''POSICION''      )posicion,',
'        round(NVL(precio(dp.cod_articulo,dp.porc_descuento),0) * nvl(dp.cantidad,0)) monto_total_solicitado,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal=''101'')stock_101,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal=''190'')stock_190,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal=''262'')stock_262,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal not in (''101'',''190'',''262''))stock_otros,',
'        null cant_conf',
'         ',
'   from vt_pedidos_cabecera_rep cp, cc_clientes cc, personas pc,',
'        vt_pedidos_detalle_rep dp, st_articulos art,',
'        v_pedidos_repuestos_sta  c, RP_PICKEO_TMP T',
'',
'   where cp.cod_empresa = :P_COD_EMPRESA  ',
'     AND :P315_AUX_REPORTE_REPUESTO = 1  ',
'     and cp.cod_empresa     = cc.cod_empresa(+)',
'     and cp.cod_cliente     = cc.cod_cliente(+)',
'     and cc.cod_persona    = pc.cod_persona(+)',
'     and cp.cod_empresa=c.cod_empresa',
'     AND c.TIP_COMPROBANTE=cp.TIP_COMPROBANTE',
'     AND c.SER_COMPROBANTE=cp.SER_COMPROBANTE',
'     AND c.NRO_COMPROBANTE=cp.NRO_COMPROBANTE',
'     and T.cod_empresa=c.cod_empresa',
'     AND c.TIP_COMPROBANTE=T.TIPO_COMPROBANTE',
'     AND c.SER_COMPROBANTE=T.SER_COMPROBANTE',
'     AND c.NRO_COMPROBANTE=T.NRO_COMPROBANTE',
'     and  NVL(c.ANULADO,''N'')<>''S''',
'     and (c.garantia=:P315_CONDICION or :P315_CONDICION=''T'')',
'     AND NVL(c.FACTURADO,''N'')<>''S'' ',
'     and C.fec_comprobante>sysdate - 60',
'     AND (C.RETIRA_DE = :P315_RETIRA )',
'     and (nvl(C.p_tipo,''A'')=''W'' ',
'     OR (C.ENVIO_INTERIOR=''S'' AND NVL(C.CONFIRMADO,''N'')<>''S'')',
'     )',
'     AND (NVL(C.IND_SIN_STOCK,''N'')<>''S'' )',
'     AND (c.cod_cliente =:P315_PROVEEDOR or :P315_PROVEEDOR=''T'')',
'     --AND (NVL(c.IND_DEVOLUCION,''N'') =:P315_IND_DEVUELTO OR :P315_IND_DEVUELTO =''T'')',
'     --AND (ZONA_ENTREGA=:P315_ZONA OR :P315_ZONA =''T'')',
'     and cp.cod_empresa     = dp.cod_empresa',
'     and cp.tip_comprobante = dp.tip_comprobante',
'     and cp.ser_comprobante = dp.ser_comprobante',
'     and cp.nro_comprobante = dp.nro_comprobante ',
'     and dp.cod_empresa     = art.cod_empresa',
'     and dp.cod_articulo    = art.cod_articulo',
'     and dp.cod_articulo  in ((select ub.cod_articulo ',
'                                 from st_posiciones t, st_ubic_articulos ub',
'                                  where ub.cod_empresa=dp.cod_empresa',
'                                  and ub.cod_articulo=dp.cod_articulo',
'                                  and ub.cod_empresa=t.cod_empresa',
'                                   and ub.cod_sucursal=t.cod_sucursal',
'                                   and ub.cod_bloque=t.cod_bloque',
'                                   and ub.cod_sub_bloque=t.cod_sub_bloque',
'                                   and ub.cod_estante=t.cod_estante',
'                                   and ub.cod_cuerpo=t.cod_cuerpo',
'                                   and ub.cod_nivel=t.cod_nivel',
'                                   and ub.cod_posicion=t.cod_posicion                                   ',
'                                   and (t.cod_sucursal=:P315_ST_COD_SUCURSAL or :P315_ST_COD_SUCURSAL is null)',
'                                   and (t.cod_bloque=:P315_ST_COD_BLOQUE or :P315_ST_COD_BLOQUE is null)',
'                                   and (t.cod_sub_bloque=:P315_ST_COD_SUB_BLOQUE or :P315_ST_COD_SUB_BLOQUE is null)',
'                                   and (t.cod_cuerpo=:P315_ST_COD_CUERPO or :P315_ST_COD_CUERPO is null)',
'                                   and (t.cod_estante=:P315_ST_COD_ESTANTE or :P315_ST_COD_ESTANTE is null)',
'                                   and (t.cod_nivel=:P315_ST_COD_NIVEL or :P315_ST_COD_NIVEL is null)',
'                                   and (t.cod_posicion=:P315_ST_COD_POSICION or :P315_ST_COD_POSICION is null)',
'                                   union all',
'                                   select s2.cod_articulo',
'                                   from st_articulos s2',
'                                   where s2.cod_empresa=dp.cod_empresa',
'                                   and s2.cod_articulo=dp.cod_articulo',
'                                   and :P315_ST_COD_SUCURSAL is null and :P315_ST_COD_BLOQUE is null',
'                                   and :P315_ST_COD_SUB_BLOQUE is null and :P315_ST_COD_CUERPO is null and',
'                                   :P315_ST_COD_ESTANTE is null and :P315_ST_COD_NIVEL is null and :P315_ST_COD_POSICION is null)) ',
'union all',
' select cp.fec_comprobante, cp.cod_sucursal,  cp.tip_comprobante, cp.ser_comprobante, cp.nro_comprobante,',
'        cp.cod_cliente, pc.nombre cliente, null cod_condicion_venta,',
'        null cod_moneda, ''GS'' moneda, ''GS'' siglas, null tip_cambio, null cod_vendedor, ',
'',
'        1 cambio_moneda_precio,',
'         0 decimales,',
'        dp.cod_articulo, art.descripcion, NVL(art.cod_origen_art,''-'')cod_origen_art,',
'        nvl( dp.cantidad, 0 ) cantidad,',
'        nvl( dp.cantidad_facturada, 0 ) cantidad_facturada,',
'        nvl( dp.cantidad_confirmada, 0 ) cantidad_confirmada, NVL(dp.precio_unitario, ROUND(PRECIO(Dp.COD_aRTICULO,0)) )PRECIO_UNITARIO, ',
'        round(((nvl( dp.cantidad_confirmada, 0 ) *  nvl(dp.precio_unitario,NVL(ROUND(PRECIO(Dp.COD_ARTICULO,0)) , 0))))) monto_total, null comentario,',
'        0 monto_bruto, ',
'        null entrega,  0 porc_descuento,',
'        null lista_cliente, 0 tot_comprobante, 0 rec1,null',
'        OBS2, Cp.COD_USUARIO, ',
'        ART.COD_EAN, ART.COD_ART_CORTO, pc.cod_persona, ',
'        round(NVL(precio(dp.cod_articulo,0),0),0) precio,',
'        round(NVL(precio(dp.cod_articulo,0),0) * nvl(dp.cantidad_confirmada,0))monto_total_confirmado, ',
'        decode (c.GARANTIA,''G'',''GARANTIA'',''PARTICULAR'')TIPO, cp.observacion,',
'        ubicacion( dp.COD_ARTICULO , ''101'' ,''PASILLO''      )PASILLO,',
'                      ubicacion( dp.COD_ARTICULO , ''101'' ,''BANDEJA''      )BANDEJA,',
'                             ubicacion( dp.COD_ARTICULO , ''101'' ,''CUERPO''      )CUERPO,',
'                             ubicacion( dp.COD_ARTICULO , ''101'' ,''POSICION''      )posicion,',
'        round(NVL(precio(dp.cod_articulo,0),0) * nvl(dp.cantidad,0)) monto_total_solicitado,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal=''101'')stock_101,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal=''190'')stock_190,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal=''262'')stock_262,',
'        (select sum(ex.cant_dispon)',
'        from st_existencia_art ex',
'        where dp.cod_empresa=ex.cod_empresa',
'        and dp.cod_articulo=ex.cod_articulo',
'        and ex.cod_sucursal not in (''101'',''190'',''262''))stock_otros,',
'        null cant_conf',
'         ',
'   from ca_pedido_repuesto_cab cp, cm_proveedores cc, personas pc,',
'        ca_pedido_repuesto_det dp, st_articulos art,',
'        v_pedidos_repuestos_sta  c, RP_PICKEO_TMP T,',
'        VT_ordenes_trabajo vt',
'',
'   where cp.cod_empresa = :P_COD_EMPRESA    ',
'     AND :P315_AUX_REPORTE_REPUESTO = 1',
'     and cp.cod_empresa     = cc.cod_empresa(+)',
'     and c.cod_cliente     = cc.cod_proveedor(+)',
'     and cc.cod_persona    = pc.cod_persona(+)',
'     and cp.cod_empresa=c.cod_empresa',
'     AND c.TIP_COMPROBANTE=cp.TIP_COMPROBANTE',
'     AND c.SER_COMPROBANTE=cp.SER_COMPROBANTE',
'     AND c.NRO_COMPROBANTE=cp.NRO_COMPROBANTE ',
'     and vt.cod_empresa=cp.cod_empresa',
'     AND vt.TIP_COMPROBANTE=Cp.TIP_COMPROBANTE_REF',
'     AND vt.SER_COMPROBANTE=Cp.SER_COMPROBANTE_REF',
'     AND vt.NRO_COMPROBANTE=Cp.NRO_COMPROBANTE_REF',
'     and T.cod_empresa=c.cod_empresa',
'     AND c.TIP_COMPROBANTE=T.TIPO_COMPROBANTE',
'     AND c.SER_COMPROBANTE=T.SER_COMPROBANTE',
'     AND c.NRO_COMPROBANTE=T.NRO_COMPROBANTE',
'     and  NVL(c.ANULADO,''N'')<>''S''',
'     and (c.garantia=:P315_CONDICION or :P315_CONDICION=''T'')',
'     AND NVL(c.FACTURADO,''N'')<>''S'' ',
'     and C.fec_comprobante>sysdate - 60',
'     AND (C.RETIRA_DE = :P315_RETIRA )',
'     AND (c.cod_cliente =:P315_PROVEEDOR or :P315_PROVEEDOR=''T'')',
'     --AND (ZONA_ENTREGA=:P315_ZONA OR :P315_ZONA =''T'')',
'     and cp.cod_empresa     = dp.cod_empresa',
'     and cp.tip_comprobante = dp.tip_comprobante',
'     and cp.ser_comprobante = dp.ser_comprobante',
'     and cp.nro_comprobante = dp.nro_comprobante ',
'     and dp.cod_empresa     = art.cod_empresa',
'     and dp.cod_articulo    = art.cod_articulo',
'     and dp.cod_articulo  in ((select ub.cod_articulo',
'                               from st_posiciones t, st_ubic_articulos ub',
'                              where ub.cod_empresa=dp.cod_empresa',
'                              and ub.cod_articulo=dp.cod_articulo',
'                              and ub.cod_empresa=t.cod_empresa',
'                               and ub.cod_sucursal=t.cod_sucursal',
'                               and ub.cod_bloque=t.cod_bloque',
'                               and ub.cod_sub_bloque=t.cod_sub_bloque',
'                               and ub.cod_estante=t.cod_estante',
'                               and ub.cod_cuerpo=t.cod_cuerpo',
'                               and ub.cod_nivel=t.cod_nivel',
'                               and ub.cod_posicion=t.cod_posicion',
'                               ',
'                               and (t.cod_sucursal=:P315_ST_COD_SUCURSAL or :P315_ST_COD_SUCURSAL is null)',
'                               and (t.cod_bloque=:P315_ST_COD_BLOQUE or :P315_ST_COD_BLOQUE is null)',
'                               and (t.cod_sub_bloque=:P315_ST_COD_SUB_BLOQUE or :P315_ST_COD_SUB_BLOQUE is null)',
'                               and (t.cod_cuerpo=:P315_ST_COD_CUERPO or :P315_ST_COD_CUERPO is null)',
'                               and (t.cod_estante=:P315_ST_COD_ESTANTE or :P315_ST_COD_ESTANTE is null)',
'                               and (t.cod_nivel=:P315_ST_COD_NIVEL or :P315_ST_COD_NIVEL is null)',
'                               and (t.cod_posicion=:P315_ST_COD_POSICION or :P315_ST_COD_POSICION is null)',
'                               union all',
'                               ',
'                               select s2.cod_articulo',
'                               from st_articulos s2',
'                               where s2.cod_empresa=dp.cod_empresa',
'                               and s2.cod_articulo=dp.cod_articulo',
'                               and :P315_ST_COD_SUCURSAL is null and :P315_ST_COD_BLOQUE is null',
'                               and :P315_ST_COD_SUB_BLOQUE is null and :P315_ST_COD_CUERPO is null and',
'                               :P315_ST_COD_ESTANTE is null and :P315_ST_COD_NIVEL is null and :P315_ST_COD_POSICION is null)) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P315_COD_EMPRESA, P315_CONDICION, P315_RETIRA, P315_PROVEEDOR, P315_ST_COD_SUCURSAL, P315_ST_COD_SUB_BLOQUE, P315_ST_COD_CUERPO, P315_ST_COD_ESTANTE, P315_ST_COD_NIVEL, P315_ST_COD_POSICION, P315_AUX_REPORTE_REPUESTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CAPICKREPUESTO'
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
 p_id=>wwv_flow_imp.id(77541729272466641)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>77541729272466641
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77541983480466643)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542096083466644)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542154616466645)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542244392466646)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542370762466647)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542487791466648)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542532992466649)
,p_db_column_name=>'CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77542627475466650)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78157795774821001)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78157843229821002)
,p_db_column_name=>'MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78157960855821003)
,p_db_column_name=>'SIGLAS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158064619821004)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158127186821005)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158264108821006)
,p_db_column_name=>'CAMBIO_MONEDA_PRECIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cambio Moneda Precio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158394603821007)
,p_db_column_name=>'DECIMALES'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158447058821008)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('C\00F3digo Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158569567821009)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158600693821010)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158760021821011)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Sol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158872022821012)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78158962766821013)
,p_db_column_name=>'CANTIDAD_CONFIRMADA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Conf.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159059368821014)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159185864821015)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159262037821016)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159381086821017)
,p_db_column_name=>'MONTO_BRUTO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Monto Bruto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159451627821018)
,p_db_column_name=>'ENTREGA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159509824821019)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Porc Descuento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159650894821020)
,p_db_column_name=>'LISTA_CLIENTE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Lista Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159794887821021)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159810317821022)
,p_db_column_name=>'REC1'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Rec1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78159991600821023)
,p_db_column_name=>'OBS2'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Obs2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160038358821024)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160197751821025)
,p_db_column_name=>'COD_EAN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160263898821026)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160323778821027)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160428148821028)
,p_db_column_name=>'PRECIO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160514559821029)
,p_db_column_name=>'MONTO_TOTAL_CONFIRMADO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Monto Total Confirmado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160692798821030)
,p_db_column_name=>'TIPO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>unistr('Condici\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160736480821031)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160822030821032)
,p_db_column_name=>'PASILLO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Pasillo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78160988368821033)
,p_db_column_name=>'BANDEJA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Bandeja'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161098405821034)
,p_db_column_name=>'CUERPO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161104922821035)
,p_db_column_name=>'POSICION'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>unistr('Ubicaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161282280821036)
,p_db_column_name=>'MONTO_TOTAL_SOLICITADO'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Monto Total Solicitado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161361325821037)
,p_db_column_name=>'STOCK_101'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Stock 101'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161470741821038)
,p_db_column_name=>'STOCK_190'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Stock 190'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161551559821039)
,p_db_column_name=>'STOCK_262'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Stock 262'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78161638138821040)
,p_db_column_name=>'STOCK_OTROS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Stock Otros'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79249493989252701)
,p_db_column_name=>'CANT_CONF'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Cant Conf'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78201281766245683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'782013'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESCRIPCION:CLIENTE:FEC_COMPROBANTE:NRO_COMPROBANTE:TIPO:CANTIDAD:CANTIDAD_CONFIRMADA:STOCK_101:STOCK_190:STOCK_262:STOCK_OTROS:POSICION:CANT_CONF:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76994744601644930)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_button_name=>'REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76994835453644931)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_button_name=>'CONFIRMAR_PICKING'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar '
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76994922157644932)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_button_name=>'IMPRIMIR_PICKING'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalle'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76993867299644921)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_button_name=>'BUSCAR'
,p_button_static_id=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77537979074466603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77393767845894735)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77539593448466619)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77538814398466612)
,p_button_name=>'CANCELAR_CANT_CONF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77537814747466602)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77393767845894735)
,p_button_name=>'GENERAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77539021712466614)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77538814398466612)
,p_button_name=>'GUARDAR_CANT_CONF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79249926221252706)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(76490556189626944)
,p_button_name=>'LIMPIAR'
,p_button_static_id=>'limpiar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76993752192644920)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_button_name=>'CAM_ESTADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Todos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76490901862626948)
,p_name=>'P315_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76491009019626949)
,p_name=>'P315_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76491193578626950)
,p_name=>'P315_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76991835774644901)
,p_name=>'P315_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76991974975644902)
,p_name=>'P315_LOGO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76992069588644903)
,p_name=>'P315_IND_DEVUELTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>unistr('Repuesto p/Devoluci\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76992328017644906)
,p_name=>'P315_TODOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76992561214644908)
,p_name=>'P315_ID_PICKING'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76992705128644910)
,p_name=>'P315_PROVEEDOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'TECNICO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_CAREPSTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.COD_CLIENTE codigo_rapido,p.nombre nombre,1 ORDEN',
'  FROM vt_pedidos_cabecera_rep v, cc_clientes cc, personas p ',
' where v.cod_empresa=:P_COD_EMPRESA',
'   AND NVL(ANULADO,''N'')<>''S''',
'   AND NVL(FACTURADO,''N'')<>''S''',
'   and (nvl(p_tipo,''A'')=''W'' ',
'       OR (ENVIO_INTERIOR=''S'' AND NVL(CONFIRMADO,''N'')<>''S''))',
'   AND NVL(IND_SIN_STOCK,''N'')<>''S''',
'   and v.cod_empresA=cc.cod_empresa',
'   and v.cod_cliente=cc.cod_cliente',
'   and cc.cod_persona=p.cod_persona',
'   and v.nro_comprobante not  in ( select d.nro_comprobante',
'                                    from VT_PEDIDOS_DETALLE_REP D, vt_pedidos_cabecera_rep c',
'                                    WHERE d.COD_EMPRESA=:P_COD_EMPRESA',
'                                    AND v.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                    AND v.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                    AND v.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                    and c.cod_empresa=d.cod_empresa',
'                                    AND c.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                    AND c.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                    AND c.NRO_COMPROBANTE=D.NRO_COMPROBANTE  ',
'                                    and c.fec_comprobante<sysdate - 10',
'                                    group  by d.nro_comprobante',
'                                    having  SUM(CANTIDAD_CONFIRMADA)=0)',
'   and fec_comprobante>sysdate-60',
'   and :P315_TIPO_RETIRA not in (''STNGO'')',
' group by v.COD_CLIENTE,p.nombre',
' union all',
'select  a.cod_proveedor, p.nombre,1 ORDEN',
'  from   cm_proveedores a, personas p',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and a.ind_servicio_tecnico = ''STNGO''',
'   AND A.ESTADO = ''A''',
'   and p.cod_persona=a.cod_persona',
'   and :P315_TIPO_RETIRA   in (''STNGO'')',
'union all',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,2',
'  FROM dual',
'ORDER BY 3 DESC,2'))
,p_lov_cascade_parent_items=>'P315_TIPO_RETIRA'
,p_ajax_items_to_submit=>'P315_TIPO_RETIRA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76992929541644912)
,p_name=>'P315_CONDICION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_item_default=>'T'
,p_prompt=>unistr('Condici\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:GARANT\00CDA;G,PARTICULAR;P,TODOS;T')
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76993042470644913)
,p_name=>'P315_ESTADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_item_default=>'T'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:EN ESPERA;P,PREPARADO;PR,EN PICKING;PI,CONFIRMADO;C,SIN EXISTENCIA;SE,TODOS;T'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76993199958644914)
,p_name=>'P315_ZONA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CAPITAL;CA,INTERIOR;IN,TODOS;T'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76993243090644915)
,p_name=>'P315_NRO_COMPROBANTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'Nro. Pedido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(76993347285644916)
,p_name=>'P315_RETIRA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'Retira de'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:ARTIGAS;ARTIGAS,CDE;CDE,SLO;SLO,OVIEDO;OVIEDO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76993482383644917)
,p_name=>'P315_TIPO_RETIRA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:STA;W,SALON;SALON,STNGO;STNGO,TODOS;T'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76993528117644918)
,p_name=>'P315_FECHA_INI'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'Desde'
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
 p_id=>wwv_flow_imp.id(76993684488644919)
,p_name=>'P315_FECHA_FIN'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_prompt=>'Hasta'
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
 p_id=>wwv_flow_imp.id(76994060011644923)
,p_name=>'P315_ST_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>unistr('Dep\00F3sito')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_CAREPSTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion D, s.cod_sucursal R',
'  from sucursales s, st_sub_bloques sb',
' where s.cod_empresa = :P_COD_EMPRESA',
'   and s.cod_empresa=sb.cod_empresa',
'   and s.cod_sucursal=sb.cod_sucursal',
'group by  s.descripcion, s.cod_sucursal',
'order by 1'))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76994118230644924)
,p_name=>'P315_ST_COD_BLOQUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>'Zona Dep.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_bloque, cod_bloque',
'  from st_bloques',
' where cod_empresa  = :P_COD_EMPRESA',
'   and cod_sucursal = :P315_ST_COD_SUCURSAL;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P315_ST_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P315_ST_COD_SUCURSAL'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76994244624644925)
,p_name=>'P315_ST_COD_SUB_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>'Subzona Dep.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_SUB_bloque, COD_SUB_BLOQUE      ',
'  from st_sub_bloques',
' where cod_empresa  = :P_COD_EMPRESA',
'   and cod_sucursal = :P315_ST_COD_SUCURSAL',
'   and cod_bloque   = :P315_ST_COD_BLOQUE;',
' '))
,p_lov_cascade_parent_items=>'P315_ST_COD_BLOQUE'
,p_ajax_items_to_submit=>'P315_ST_COD_SUCURSAL,P315_ST_COD_BLOQUE'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76994395134644926)
,p_name=>'P315_ST_COD_ESTANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>'Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTANTES_CAREPSTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_Estante D, cod_estante R',
'  from st_estantes',
' where cod_empresa  = :P_COD_EMPRESA;'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(76994482222644927)
,p_name=>'P315_ST_COD_CUERPO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_cuerpo, cod_cuerpo',
'  from st_cuerpo',
' where cod_empresa  = :P_COD_EMPRESA     ',
'   and cod_estante   = :P315_ST_COD_ESTANTE;'))
,p_lov_cascade_parent_items=>'P315_ST_COD_ESTANTE'
,p_ajax_items_to_submit=>'P315_ST_COD_ESTANTE'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76994532191644928)
,p_name=>'P315_ST_COD_NIVEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>'Cod. Nivel'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_nivel , COD_NIVEL',
'  from st_niveles',
' where cod_empresa  = :P_COD_EMPRESA      ',
'   and cod_estante  = :P315_ST_COD_ESTANTE',
'   and cod_cuerpo   = :P315_ST_COD_CUERPO;'))
,p_lov_cascade_parent_items=>'P315_ST_COD_CUERPO'
,p_ajax_items_to_submit=>'P315_ST_COD_ESTANTE,P315_ST_COD_CUERPO'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76994621210644929)
,p_name=>'P315_ST_COD_POSICION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(76993989535644922)
,p_prompt=>unistr('Id. Posici\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77392787524894725)
,p_name=>'P315_DET_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77392679587894724)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77392879756894726)
,p_name=>'P315_DET_DESC_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77392679587894724)
,p_prompt=>unistr('Art\00CDculo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77392967942894727)
,p_name=>'P315_AUX_MSJ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77393101280894729)
,p_name=>'P315_VER_DATOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77538519133466609)
,p_name=>'P315_LLAMA_STCONSTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77393843200894736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77538687109466610)
,p_name=>'P315_EDIT_CANT_CONFIRMADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77393843200894736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77538939588466613)
,p_name=>'P315_CANTIDAD_CONFIRMADA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77538814398466612)
,p_prompt=>'Cantidad Confirmada'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77540284746466626)
,p_name=>'P315_MENSAJE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77538814398466612)
,p_prompt=>'Mensaje'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77541092281466634)
,p_name=>'P315_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77541200719466636)
,p_name=>'P315_AUX_LABEL_BOTON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77541883964466642)
,p_name=>'P315_AUX_REPORTE_REPUESTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78162182092821045)
,p_name=>'P315_TIT_REPORTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76992628000644909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78162572122821049)
,p_name=>'P315_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78162694105821050)
,p_name=>'P315_AUX_CHECK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78228426140554106)
,p_name=>'P315_PRS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78228793027554109)
,p_name=>'P315_AUX_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78229517825554117)
,p_name=>'P315_AUX_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76995043981644933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77392134381894719)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76993867299644921)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347919252652606716)
,p_event_id=>wwv_flow_imp.id(77392134381894719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77392275794894720)
,p_event_id=>wwv_flow_imp.id(77392134381894719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P315_AUX_MSJ := null;',
'IF (:P315_FECHA_INI IS NULL OR :P315_FECHA_FIN IS NULL) OR TO_DATE(:P315_FECHA_INI,''DD/MM/YYYY'') <= TO_DATE(:P315_FECHA_FIN, ''DD/MM/YYYY'') THEN',
' ',
'    CAREPSTA.PR_CARGA_COLECCION_PARAM(PI_COD_EMPRESA     => nvl(:P_COD_EMPRESA,''1''),',
'                                      PI_CONDICION       => :P315_CONDICION,',
'                                      PI_IND_DEVUELTO    => :P315_IND_DEVUELTO,',
'                                      PI_RETIRA          => :P315_RETIRA,',
'                                      PI_TIPO_RETIRA     => :P315_TIPO_RETIRA,',
'                                      PI_PROVEEDOR       => :P315_PROVEEDOR,',
'                                      PI_ZONA            => :P315_ZONA,',
'                                      PI_ESTADO          => :P315_ESTADO,',
'                                      PI_FECHA_INI       => TO_DATE(:P315_FECHA_INI ,''DD/MM/YYYY''),',
'                                      PI_FECHA_FIN       => TO_DATE(:P315_FECHA_FIN ,''DD/MM/YYYY''),',
'                                      PI_ID_PICKING      => :P315_ID_PICKING,',
'                                      PI_NRO_PEDIDO      => :P315_NRO_COMPROBANTE);',
'ELSE',
'    :P315_AUX_MSJ := ''La fecha hasta debe ser mayor que la fecha desde.'';                                ',
'END IF;',
''))
,p_attribute_02=>'P315_COD_EMPRESA,P315_CONDICION,P315_IND_DEVUELTO,P315_RETIRA,P315_TIPO_RETIRA,P315_PROVEEDOR,P315_ZONA,P315_ESTADO,P315_FECHA_INI,P315_FECHA_FIN,P315_ID_PICKING,P315_NRO_COMPROBANTE'
,p_attribute_03=>'P315_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347919361191606717)
,p_event_id=>wwv_flow_imp.id(77392134381894719)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77393024353894728)
,p_event_id=>wwv_flow_imp.id(77392134381894719)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P315_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P315_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77392389005894721)
,p_event_id=>wwv_flow_imp.id(77392134381894719)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76995043981644933)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P315_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77393362740894731)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_VER_DATOS'
,p_condition_element=>'P315_VER_DATOS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77393488918894732)
,p_event_id=>wwv_flow_imp.id(77393362740894731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C008, C028',
'      INTO :P315_DET_COD_USUARIO, :P315_DET_DESC_ARTICULO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''PARAMETRO_CAREPSTA''',
'       AND SEQ_ID = :P315_VER_DATOS; ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P315_VER_DATOS'
,p_attribute_03=>'P315_DET_COD_USUARIO,P315_DET_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77393564971894733)
,p_name=>'DA_IMPRIMIR_PICKING'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76994922157644932)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77393654143894734)
,p_event_id=>wwv_flow_imp.id(77393564971894733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_CARGA_COLECCION_DETALLE(PI_COD_EMPRESA => :P_COD_EMPRESA, ',
'                                    PI_COD_USUARIO => :P315_COD_USUARIO);'))
,p_attribute_02=>'P315_COD_EMPRESA,P315_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79249676976252703)
,p_event_id=>wwv_flow_imp.id(77393564971894733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77393843200894736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77537772674466601)
,p_event_id=>wwv_flow_imp.id(77393564971894733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77393767845894735)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77538065377466604)
,p_name=>'DA_VOLVER'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77537979074466603)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77538140257466605)
,p_event_id=>wwv_flow_imp.id(77538065377466604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77393767845894735)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77538284547466606)
,p_name=>'DA_GENERAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77537814747466602)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78230727318554129)
,p_event_id=>wwv_flow_imp.id(77538284547466606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_GENERAR(PI_COD_USUARIO => :P315_COD_USUARIO,',
'                    PI_COD_EMPRESA => :P_COD_EMPRESA);'))
,p_attribute_02=>'P315_COD_USUARIO,P315_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79250078848252707)
,p_event_id=>wwv_flow_imp.id(77538284547466606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El proceso se realiz\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77538330801466607)
,p_event_id=>wwv_flow_imp.id(77538284547466606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77393767845894735)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77539146566466615)
,p_name=>'DA_GUARDAR_CONF'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77539021712466614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77539881471466622)
,p_event_id=>wwv_flow_imp.id(77539146566466615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_VALIDA_CANT_CONFIRMADA(PI_CANTIDAD_CONFIRMADA  => TO_NUMBER(:P315_CANTIDAD_CONFIRMADA),',
'                                   PI_SEQ_ID               => TO_NUMBER(:P315_EDIT_CANT_CONFIRMADA),',
'                                   PI_COD_EMPRESA          => :P_COD_EMPRESA,',
'                                   PO_MENSAJE              => :P315_MENSAJE);'))
,p_attribute_02=>'P315_CANTIDAD_CONFIRMADA,P315_EDIT_CANT_CONFIRMADA,P315_COD_EMPRESA'
,p_attribute_03=>'P315_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77539269381466616)
,p_event_id=>wwv_flow_imp.id(77539146566466615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77538814398466612)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P315_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77540057950466624)
,p_event_id=>wwv_flow_imp.id(77539146566466615)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77393843200894736)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P315_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77539332859466617)
,p_name=>'DA_ABRE_EDITAR_CANTIDAD'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_EDIT_CANT_CONFIRMADA'
,p_condition_element=>'P315_EDIT_CANT_CONFIRMADA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77540162391466625)
,p_event_id=>wwv_flow_imp.id(77539332859466617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C009',
'      INTO :P315_CANTIDAD_CONFIRMADA',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_CAREPSTA''',
'       AND SEQ_ID = :P315_EDIT_CANT_CONFIRMADA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;              ',
':P315_MENSAJE := NULL;'))
,p_attribute_02=>'P315_EDIT_CANT_CONFIRMADA'
,p_attribute_03=>'P315_CANTIDAD_CONFIRMADA,P315_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77539434099466618)
,p_event_id=>wwv_flow_imp.id(77539332859466617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77538814398466612)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77539660874466620)
,p_name=>'DA_CANCELAR_CANT_CONF'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77539593448466619)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77539700448466621)
,p_event_id=>wwv_flow_imp.id(77539660874466620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77538814398466612)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77540396263466627)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_MENSAJE'
,p_condition_element=>'P315_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77540406088466628)
,p_event_id=>wwv_flow_imp.id(77540396263466627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P315_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77540513838466629)
,p_event_id=>wwv_flow_imp.id(77540396263466627)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P315_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77540664539466630)
,p_event_id=>wwv_flow_imp.id(77540396263466627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P315_CANTIDAD_CONFIRMADA := 0;'
,p_attribute_03=>'P315_CANTIDAD_CONFIRMADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77540727524466631)
,p_name=>'DA_LLAMA_STCONSTO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_LLAMA_STCONSTO'
,p_condition_element=>'P315_LLAMA_STCONSTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77540837794466632)
,p_event_id=>wwv_flow_imp.id(77540727524466631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 65,',
'                            p_items  => ''P65_COD_ARTICULO'',',
'                            p_values => (''''||:P315_LLAMA_STCONSTO||'''')) f_url_1',
'  INTO :P315_URL',
'  FROM DUAL;',
''))
,p_attribute_02=>'P315_LLAMA_STCONSTO'
,p_attribute_03=>'P315_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77541155231466635)
,p_event_id=>wwv_flow_imp.id(77540727524466631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P315_URL").getValue();',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77541342086466637)
,p_name=>'DA_CAM_ESTADO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76993752192644920)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77541475176466638)
,p_event_id=>wwv_flow_imp.id(77541342086466637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_CHECK_TODOS(PI_LABEL => :P315_AUX_LABEL_BOTON, ',
'                        PO_LABEL => :P315_AUX_LABEL_BOTON,',
'                        PO_TODOS => :P315_TODOS);'))
,p_attribute_02=>'P315_AUX_LABEL_BOTON'
,p_attribute_03=>'P315_AUX_LABEL_BOTON,P315_TODOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77541567374466639)
,p_event_id=>wwv_flow_imp.id(77541342086466637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76995043981644933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78161761409821041)
,p_name=>'DA_REPORTE'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76994744601644930)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78161830811821042)
,p_event_id=>wwv_flow_imp.id(78161761409821041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P315_TIT_REPORTE := CAREPSTA.cf_empresaFormula (PI_COD_EMPRESA => :P_COD_EMPRESA);',
':P315_AUX_REPORTE_REPUESTO := 1;'))
,p_attribute_02=>'P315_COD_EMPRESA'
,p_attribute_03=>'P315_AUX_REPORTE_REPUESTO,P315_TIT_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78161928963821043)
,p_event_id=>wwv_flow_imp.id(78161761409821041)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77541606067466640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78162299539821046)
,p_event_id=>wwv_flow_imp.id(78161761409821041)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78162000839821044)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78162315722821047)
,p_name=>'DA_CONFIRMAR_PICKING'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76994835453644931)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78162484696821048)
,p_event_id=>wwv_flow_imp.id(78162315722821047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_CONFIRMAR(PI_ID_PICKING    => :P315_ID_PICKING, --VARIABLES',
'                      PI_TODOS         => :P315_TODOS,',
'                      PI_COD_EMPRESA   => :P_COD_EMPRESA,',
'                      PI_COD_USUARIO   => :P315_COD_USUARIO);'))
,p_attribute_02=>'P315_ID_PICKING,P315_TODOS,P315_COD_EMPRESA,P315_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79249579222252702)
,p_event_id=>wwv_flow_imp.id(78162315722821047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El proceso se realiz\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79250143456252708)
,p_event_id=>wwv_flow_imp.id(78162315722821047)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_CARGA_COLECCION_PARAM(PI_COD_EMPRESA     => :P_COD_EMPRESA,',
'                                  PI_CONDICION       => :P315_CONDICION,',
'                                  PI_IND_DEVUELTO    => :P315_IND_DEVUELTO,',
'                                  PI_RETIRA          => :P315_RETIRA,',
'                                  PI_TIPO_RETIRA     => :P315_TIPO_RETIRA,',
'                                  PI_PROVEEDOR       => :P315_PROVEEDOR,',
'                                  PI_ZONA            => :P315_ZONA,',
'                                  PI_ESTADO          => :P315_ESTADO,',
'                                  PI_FECHA_INI       => TO_DATE(:P315_FECHA_INI ,''DD/MM/YYYY''),',
'                                  PI_FECHA_FIN       => TO_DATE(:P315_FECHA_FIN ,''DD/MM/YYYY''),',
'                                  PI_ID_PICKING      => :P315_ID_PICKING,',
'                                  PI_NRO_PEDIDO      => :P315_NRO_COMPROBANTE);',
''))
,p_attribute_02=>'P315_COD_EMPRESA,P315_CONDICION,P315_IND_DEVUELTO,P315_RETIRA,P315_TIPO_RETIRA,P315_PROVEEDOR,P315_ZONA,P315_ESTADO,P315_FECHA_INI,P315_FECHA_FIN,P315_ID_PICKING,P315_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79249702719252704)
,p_event_id=>wwv_flow_imp.id(78162315722821047)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76995043981644933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78227958546554101)
,p_name=>'DA_CHECK'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_AUX_CHECK'
,p_condition_element=>'P315_AUX_CHECK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78228046071554102)
,p_event_id=>wwv_flow_imp.id(78227958546554101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAREPSTA.PR_CHECK(P_SEQ_ID => TO_NUMBER(:P315_AUX_CHECK), ',
'				  P_ACCION => :P315_ACCION);'))
,p_attribute_02=>'P315_AUX_CHECK,P315_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78228564825554107)
,p_name=>'DA_PRS'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_PRS'
,p_condition_element=>'P315_PRS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78228605041554108)
,p_event_id=>wwv_flow_imp.id(78228564825554107)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VTIPO VARCHAR2(30);',
'    VNRO_COMPROBANTE NUMBER;',
'    VSER_COMPROBANTE VARCHAR2(8);',
'    V_TIP_COMPROBANTE_REF VARCHAR2(50);',
'    V_SER_COMPROBANTE_REF VARCHAR2(50);',
'    V_NRO_COMPROBANTE_REF VARCHAR2(50);',
'    VROWID_PED VARCHAR2(1000);',
'BEGIN',
'    SELECT C013, C006, C021, C024 TIP_COMPROBANTE_REF, C025 SER_COMPROBANTE_REF,  C026 NRO_COMPROBANTE_REF,C035',
'      INTO VTIPO, VNRO_COMPROBANTE, VSER_COMPROBANTE, V_TIP_COMPROBANTE_REF,V_SER_COMPROBANTE_REF,V_NRO_COMPROBANTE_REF,VROWID_PED',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''PARAMETRO_CAREPSTA''',
'       AND SEQ_ID = :P315_PRS; ',
'',
'    IF VTIPO = ''SALON'' THEN',
'        -- ''VTREPDET'' ',
'        SELECT APEX_PAGE.GET_URL (  p_page   => 322,',
'                                    p_items  => ''P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE'',',
'                                    p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'          INTO :P315_URL',
'          FROM DUAL;',
'      elsif VTIPO = ''STNGO'' THEN',
'        -- ''VTREPDET'' ',
'        SELECT APEX_PAGE.GET_URL (  p_page   => 328,',
'                                    p_items  => ''P328_NRO_COMPROBANTE,P328_SER_COMPROBANTE'',',
'                                    p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'          INTO :P315_URL',
'          FROM DUAL;      ',
'    ELSE ',
'        -- ''VTPEDAUT''',
'         SELECT APEX_PAGE.GET_URL (  p_page   => 298,',
'                                        p_items  => ''P298_ROW_ID_SELECCIONAR_PED'',',
'                                        p_values => (''''||VROWID_PED||'''')) f_url_1',
'                  INTO :P315_URL',
'                  FROM DUAL;',
'         /*   SELECT APEX_PAGE.GET_URL (  p_page   => 298,',
'                                p_items  => ''P298_NRO_COMPROBANTE,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_TIP_COMPROBANTE_REF,P298_SER_COMPROBANTE_REF,P298_NRO_COMPROBANTE_REF,P298_COD_ORIGEN'',',
'                                p_values => (''''||VNRO_COMPROBANTE||'',''||''PER'' ||'',''||VSER_COMPROBANTE||'',''||V_TIP_COMPROBANTE_REF||'',''||V_SER_COMPROBANTE_REF||'',''||V_NRO_COMPROBANTE_REF||'',''||:P315_TIPO_RETIRA||'''')) f_url_1',
'          INTO :P315_URL',
'          FROM DUAL;*/ ',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,''Error al redireccioar desde PRS: ''||SQLERRM);  ',
'END;',
'',
'',
''))
,p_attribute_02=>'P315_PRS,P315_TIPO_RETIRA'
,p_attribute_03=>'P315_URL'
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
 p_id=>wwv_flow_imp.id(78228957807554111)
,p_event_id=>wwv_flow_imp.id(78228564825554107)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P315_URL").getValue();',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78229608087554118)
,p_name=>'DA_REPORTES_NRO_COMP'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_AUX_NRO_COMPROBANTE'
,p_condition_element=>'P315_AUX_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78229714680554119)
,p_event_id=>wwv_flow_imp.id(78229608087554118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VTIPO VARCHAR2(30);',
'    VNRO_COMPROBANTE NUMBER;',
'    VESTADO_PREPA VARCHAR2(100);',
'    VESTADO VARCHAR2(30);',
'    VSER_COMPROBANTE VARCHAR2(8);',
'BEGIN',
'    SELECT C013, C006, C021, C011, C016',
'      INTO VTIPO, VNRO_COMPROBANTE, VSER_COMPROBANTE, VESTADO_PREPA, VESTADO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''PARAMETRO_CAREPSTA''',
'       AND SEQ_ID = :P315_AUX_NRO_COMPROBANTE; ',
'',
'    IF VESTADO_PREPA NOT IN (''BLOQUEADO'') THEN',
'      if VTIPO = ''STNGO'' THEN       ',
'        SELECT APEX_PAGE.GET_URL (  p_page   => 328,',
'                                    p_items  => ''P328_NRO_COMPROBANTE,P328_SER_COMPROBANTE'',',
'                                    p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'                                    INTO :P315_URL',
'              FROM DUAL;',
'        elsif VTIPO in( ''STA'',''W'') THEN       ',
'         SELECT APEX_PAGE.GET_URL (  p_page   => 322,',
'                                        p_items  => ''P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE'',',
'                                        p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'              INTO :P315_URL',
'              FROM DUAL;',
'                    ',
'        ELSIF  NVL(VESTADO,''N'')<>''C'' THEN',
'             -- ''VTCONMAR'' ',
'           SELECT APEX_PAGE.GET_URL (  p_page   => 322,',
'                                        p_items  => ''P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE'',',
'                                        p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'              INTO :P315_URL',
'              FROM DUAL;',
'          ',
'        ELSE',
'            -- ''VTREPDET'' ',
'            SELECT APEX_PAGE.GET_URL (  p_page   => 322,',
'                                        p_items  => ''P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE'',',
'                                        p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'              INTO :P315_URL',
'              FROM DUAL;',
'        END IF;',
'        ELSE',
'         if VTIPO = ''STNGO'' THEN      ',
'          SELECT APEX_PAGE.GET_URL (  p_page   => 328,',
'                                    p_items  => ''P328_NRO_COMPROBANTE,P328_SER_COMPROBANTE'',',
'                                    p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'                                    INTO :P315_URL',
'              FROM DUAL;  ',
'              END IF;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_dEBUG.ERROR(''Error al redireccioar desde nro_comprobante: ''||SQLERRM);    ',
'END;           ',
'',
'',
''))
,p_attribute_02=>'P315_AUX_NRO_COMPROBANTE'
,p_attribute_03=>'P315_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78229858056554120)
,p_event_id=>wwv_flow_imp.id(78229608087554118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P315_URL").getValue();',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78230488084554126)
,p_name=>'DA_REPORTES_SER_COMP'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P315_AUX_SER_COMPROBANTE'
,p_condition_element=>'P315_AUX_SER_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78230592583554127)
,p_event_id=>wwv_flow_imp.id(78230488084554126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VNRO_COMPROBANTE NUMBER;',
'    VESTADO VARCHAR2(30);',
'    VSER_COMPROBANTE VARCHAR2(8);',
'BEGIN',
'    SELECT C006, C021, C016',
'      INTO VNRO_COMPROBANTE, VSER_COMPROBANTE, VESTADO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''PARAMETRO_CAREPSTA''',
'       AND SEQ_ID = :P315_AUX_SER_COMPROBANTE; ',
'',
'    IF NVL(VESTADO,''N'')<>''C'' THEN',
'        SELECT APEX_PAGE.GET_URL (  p_page   => 322,',
'                                        p_items  => ''P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE'',',
'                                        p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'              INTO :P315_URL',
'              FROM DUAL;',
'    ELSE',
'        -- ''VTREPDET'' ',
'        SELECT APEX_PAGE.GET_URL (  p_page   => 322,',
'                                    p_items  => ''P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE'',',
'                                    p_values => (''''||VNRO_COMPROBANTE||'',''||VSER_COMPROBANTE||'''')) f_url_1',
'          INTO :P315_URL',
'          FROM DUAL;',
'    ',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_dEBUG.ERROR(''Error al redireccioar desde ser_comprobante: ''||SQLERRM);    ',
'END;           ',
'',
'',
''))
,p_attribute_02=>'P315_AUX_SER_COMPROBANTE'
,p_attribute_03=>'P315_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78230603730554128)
,p_event_id=>wwv_flow_imp.id(78230488084554126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P315_URL").getValue();',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(806118108076294942)
,p_name=>'DA_LOAD'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(806118240341294943)
,p_event_id=>wwv_flow_imp.id(806118108076294942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#BUSCAR").click();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76992468566644907)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''CA'';',
':P315_COD_MODULO := :P_COD_MODULO;',
':P315_COD_EMPRESA  := NVL(:P_COD_EMPRESA, ''1'');',
':P315_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P315_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);--''AUTORIZ1'';--',
'',
unistr(':P315_LOGO:= ''Impresi\00F3n de Pedidos'';'),
' ',
':P315_IND_DEVUELTO:=''N'';',
'--:P315_ZONA:=''T'';',
'--:P315_CONDICION:=''T'';',
'--:P315_TODOS:=''S'';',
'--:P315_ESTADO := ''T'';',
'----:P315_AUX_LABEL_BOTON := ''TODOS'';',
'------:P315_AUX_REPORTE_REPUESTO := 2;',
'--:P315_TIPO_RETIRA := ''T'';',
'--:P315_PROVEEDOR := ''T'';',
'',
'DECLARE ',
' 	a varchar2(500); ',
'BEGIN ',
' 	sp_inserta_PICKING_tmp(:P_COD_EMPRESA, null, null, null, null, null, null, null, NULL, a,:P315_ID_PICKING);',
'END;',
' ',
'/*',
'    CAREPSTA.PR_CARGA_COLECCION_PARAM(PI_COD_EMPRESA     => nvl(:P315_COD_EMPRESA,''1''),',
'                                      PI_CONDICION       => nvl(:P315_CONDICION,''T''),',
'                                      PI_IND_DEVUELTO    => :P315_IND_DEVUELTO,',
'                                      PI_RETIRA          => nvl(:P315_RETIRA,''ARTIGAS''),',
'                                      PI_TIPO_RETIRA     => nvl(:P315_TIPO_RETIRA,''W''),',
'                                      PI_PROVEEDOR       => :P315_PROVEEDOR,',
'                                      PI_ZONA            => NVL(:P315_ZONA,''CA''),',
'                                      PI_ESTADO          => nvl(:P315_ESTADO,''T''),',
'                                      PI_FECHA_INI       => TO_DATE(:P315_FECHA_INI ,''DD/MM/YYYY''),',
'                                      PI_FECHA_FIN       => TO_DATE(:P315_FECHA_FIN ,''DD/MM/YYYY''),',
'                                      PI_ID_PICKING      => NVL(:P315_ID_PICKING,1),',
'                                      PI_NRO_PEDIDO      => :P315_NRO_COMPROBANTE);',
'',
'*/'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79249850543252705)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79249926221252706)
);
wwv_flow_imp.component_end;
end;
/
