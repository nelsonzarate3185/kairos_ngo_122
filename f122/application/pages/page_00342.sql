prompt --application/pages/page_00342
begin
--   Manifest
--     PAGE: 00342
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
 p_id=>342
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Repuestos a Presupuestar - CAENTSAL'
,p_alias=>'CONSULTA-DE-REPUESTOS-A-PRESUPUESTAR-CAENTSAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Consulta de Repuestos a Presupuestar - CAENTSAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P342_ACCION'',''AGREGAR'');',
'      $s(''P342_AUX_ROWID'', cb.value,false);',
'  } else {',
'      $s(''P342_ACCION'',''QUITAR'');',
'      $s(''P342_AUX_ROWID'', cb.value,false);',
'  }',
'}',
'',
'',
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1300px !important;',
'    }',
'',
'    .t-Dialog{ background-color: #d3e4fa;} ',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea, .apex-item-display-only{',
'   border-color: #003A85  !important;   ',
'}',
' #P342_TOT_CANTIDAD_DET, #P342_TOT_IMPORTE_DET{',
'        font-weight: bold;',
'        font-size: large  !important;',
'        color: darkblue  !important;',
'        border-color: #003a85;',
' }',
'',
'',
'',
' th.t-Report-colHead,  th.t-Report-colHead a{',
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'450'
,p_dialog_width=>'1300'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250207102541'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82564852671905823)
,p_plug_name=>'Consulta de Repuestos a Presupuestar - CAENTSAL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82564948360905824)
,p_plug_name=>'Contenedor Cabecera '
,p_parent_plug_id=>wwv_flow_imp.id(82564852671905823)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82565043302905825)
,p_plug_name=>'Contenedor Cabecera 2'
,p_parent_plug_id=>wwv_flow_imp.id(82564852671905823)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91076457441718719)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(82564852671905823)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82566401073905839)
,p_plug_name=>'CA_ENTSAL_DET'
,p_parent_plug_id=>wwv_flow_imp.id(91076457441718719)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DET.COD_EMPRESA,',
'       DET.TIP_ENT_SAL,',
'       DET.SER_ENT_SAL,',
'       DET.NUM_ENT_SAL,',
'       DET.COD_ARTICULO,',
'       (SELECT DESCRIPCION',
'          FROM ST_ARTICULOS',
'         WHERE COD_EMPRESA = DET.COD_EMPRESA',
'           AND COD_ARTICULO = DET.COD_ARTICULO) DESC_ARTICULO,',
'       DET.COSTO,',
'       DET.CANTIDAD,',
'       DET.COD_SUCURSAL,',
'       DET.COD_UNIDAD_MEDIDA,',
'       DET.NRO_LOTE,',
'       DET.COD_IVA,',
'       DET.PRECIO_VENTA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => ROWID,',
'                           p_attributes  => (case ANULADO',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar(this)"'' ) as "ANULADO",',
'       --ANULADO,',
'       DET.ROWID ROW_ID,',
'       (NVL(DET.CANTIDAD,0) * NVL(DET.PRECIO_VENTA,0)) TOTAL,',
'       NULL DETALLE,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM CA_ENTSAL_DET DET',
' WHERE DET.COD_EMPRESA = :P_COD_EMPRESA',
'   AND DET.SER_ENT_SAL = :P342_SER_ENT_SAL',
'   AND DET.TIP_ENT_SAL = :P342_TIP_ENT_SAL',
'   AND DET.NUM_ENT_SAL = :P342_NUM_ENT_SAL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P342_SER_ENT_SAL,P342_TIP_ENT_SAL,P342_NUM_ENT_SAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CA_ENTSAL_DET'
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
 p_id=>wwv_flow_imp.id(82566524183905840)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>82566524183905840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82566677950905841)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82566793893905842)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Ent Sal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82566849866905843)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Ent Sal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82566993302905844)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Num Ent Sal'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82567016914905845)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82567165300905846)
,p_db_column_name=>'COSTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82567266543905847)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82567338320905848)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82567470008905849)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'UM'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91074829452718703)
,p_db_column_name=>'COD_IVA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'IVA'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91074930337718704)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91075225427718707)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Precio de Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91075855806718713)
,p_db_column_name=>'ANULADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91076643558718721)
,p_db_column_name=>'ROW_ID'
,p_display_order=>240
,p_column_identifier=>'AB'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91076753261718722)
,p_db_column_name=>'DETALLE'
,p_display_order=>250
,p_column_identifier=>'AC'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P342_DET_DATA'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91076895349718723)
,p_db_column_name=>'EDITAR'
,p_display_order=>260
,p_column_identifier=>'AD'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P342_EDIT_DATA'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P342_IND_CORREO_PRESU,''N'')=''S'' THEN',
'    IF NVL(busca_permiso(:P_COD_EMPRESA,  ''CAORDTRA'',  :APP_USER,   ''AGREGA_REP_PRE''),''N'')=''S'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91076919815718724)
,p_db_column_name=>'BORRAR'
,p_display_order=>270
,p_column_identifier=>'AE'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P342_DELETE_DATA'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P342_IND_CORREO_PRESU,''N'')=''S'' THEN',
'    IF NVL(busca_permiso(:P_COD_EMPRESA,  ''CAORDTRA'',  :APP_USER,   ''AGREGA_REP_PRE''),''N'')=''S'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92139529715022010)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>280
,p_column_identifier=>'AF'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92139607524022011)
,p_db_column_name=>'TOTAL'
,p_display_order=>290
,p_column_identifier=>'AG'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(91088453173750951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'910885'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ANULADO:COD_ARTICULO:DESC_ARTICULO:COD_UNIDAD_MEDIDA:NRO_LOTE:COD_IVA:CANTIDAD:PRECIO_VENTA:TOTAL:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91077868959718733)
,p_plug_name=>'Contenedor Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(91076457441718719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91078378903718738)
,p_plug_name=>'Contenedor Detalle 2'
,p_parent_plug_id=>wwv_flow_imp.id(91076457441718719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85829514462549176)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91079305996718748)
,p_plug_name=>'Agregar/Editar Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_region_attributes=>'style="background-color: #d3e4fa"'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122668196330248612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(91076457441718719)
,p_button_name=>'Cerrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91076542437718720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(91076457441718719)
,p_button_name=>'BTCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'AGREGAR'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92141658051022031)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_button_name=>'BTAGREGAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565107651905826)
,p_name=>'P342_TIP_ENT_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565204417905827)
,p_name=>'P342_SER_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565345629905828)
,p_name=>'P342_NUM_ENT_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565476510905829)
,p_name=>'P342_FEC_ENT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565689753905831)
,p_name=>'P342_TIP_COMPROBANTE_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565753647905832)
,p_name=>'P342_SER_COMPROBANTE_REF'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_prompt=>'Serie OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82565858262905833)
,p_name=>'P342_NRO_COMPROBANTE_REF'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_prompt=>unistr('N\00B0 OT')
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
 p_id=>wwv_flow_imp.id(82566044401905835)
,p_name=>'P342_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82565043302905825)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82566166421905836)
,p_name=>'P342_COD_MOTIVO_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82565043302905825)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82566266126905837)
,p_name=>'P342_COD_TECNICO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(82565043302905825)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82566312260905838)
,p_name=>'P342_COD_MONEDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(82565043302905825)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91077007732718725)
,p_name=>'P342_DET_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82566401073905839)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91077182717718726)
,p_name=>'P342_EDIT_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82566401073905839)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91077253546718727)
,p_name=>'P342_DELETE_DATA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(82566401073905839)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91077329776718728)
,p_name=>'P342_ACCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(82566401073905839)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91077495906718729)
,p_name=>'P342_AUX_ROWID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(82566401073905839)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91077994819718734)
,p_name=>'P342_OBSERVACION_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91077868959718733)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(91078098442718735)
,p_name=>'P342_UNIDAD_MED_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(91077868959718733)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078153759718736)
,p_name=>'P342_PORC_IVA_COMPRA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91077868959718733)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078208254718737)
,p_name=>'P342_PRECIO_LISTA_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91077868959718733)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078441944718739)
,p_name=>'P342_TOT_CANTIDAD_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91078378903718738)
,p_prompt=>'Total Cantidad'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078544630718740)
,p_name=>'P342_TOT_IMPORTE_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(91078378903718738)
,p_prompt=>'Total Importe'
,p_format_mask=>'999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078686912718741)
,p_name=>'P342_CANTIDAD_S_G_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91078378903718738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078740906718742)
,p_name=>'P342_TOT_IMPORTE_S_G_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91078378903718738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078862972718743)
,p_name=>'P342_CANTIDAD_C_G_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91078378903718738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91078957993718744)
,p_name=>'P342_HORA_ALTA_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91077868959718733)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91079064629718745)
,p_name=>'P342_TOT_IMPORTE_C_G_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(91078378903718738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91079494841718749)
,p_name=>'P342_COD_ARTICULO_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_PRESU'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DESCRIPCION,A.COD_ARTICULO,1 CANTIDAD,COD_RUBRO',
'FROM ST_ARTICULOS A,VT_ORIGENES T,VT_ORDENES_TRABAJO V',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA AND COD_RUBRO=''MO'' AND T.COD_ORIGEN=V.COD_ORIGEN AND T.COD_EMPRESA=V.COD_EMPRESA AND V.COD_EMPRESA=A.COD_EMPRESA AND V.TIP_COMPROBANTE=:P342_TIP_COMPROBANTE_REF AND V.SER_COMPROBANTE=:P342_SER_COMPROBANTE_REF AND V.'
||'NRO_COMPROBANTE=:P342_NRO_COMPROBANTE_REF AND A.TIPO_MO=T.ORIGEN AND T.ORIGEN=''STNGO'' AND TIPO_MO IS NOT NULL AND NVL(ESTADO,''S'') NOT IN (''I'',''N'') AND NVL(A.IND_PARTICULAR,''X'')<>NVL(V.IND_GARANTIA,''Z'') AND (COD_LINEA=NVL((SELECT AA.COD_LINEA FROM ST_'
||'ARTICULOS AA WHERE AA.COD_EMPRESA=:P_COD_EMPRESA AND AA.COD_ARTICULO=V.COD_ARTICULO),COD_LINEA)) AND NVL(COD_MARCA,:P342_COD_MARCA)=:P342_COD_MARCA',
'UNION ALL',
'SELECT A.DESCRIPCION,A.COD_ARTICULO,1 CANTIDAD,COD_RUBRO',
'FROM ST_ARTICULOS A,VT_ORIGENES T,VT_ORDENES_TRABAJO V',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA AND COD_RUBRO=''MO'' AND T.COD_ORIGEN=V.COD_ORIGEN AND T.COD_EMPRESA=V.COD_EMPRESA AND V.COD_EMPRESA=A.COD_EMPRESA AND V.TIP_COMPROBANTE=:P342_TIP_COMPROBANTE_REF AND V.SER_COMPROBANTE=:P342_SER_COMPROBANTE_REF AND V.'
||'NRO_COMPROBANTE=:P342_NRO_COMPROBANTE_REF AND T.ORIGEN=''STNGO'' AND A.TIPO_MO=T.ORIGEN AND NVL(ESTADO,''S'') NOT IN (''I'',''N'') AND NVL(A.IND_PARTICULAR,''X'')<>NVL(V.IND_GARANTIA,''Z'') AND (COD_CATEGORIA=NVL((SELECT AA.COD_CATEGORIA FROM ST_ARTICULOS AA WHE'
||'RE AA.COD_EMPRESA=:P_COD_EMPRESA AND AA.COD_ARTICULO=V.COD_ARTICULO),COD_CATEGORIA)) AND A.COD_LINEA IS NULL AND TIPO_MO IS NOT NULL AND NVL(COD_MARCA,:P342_COD_MARCA)=:P342_COD_MARCA',
'UNION ALL',
'SELECT A.DESCRIPCION,A.COD_ARTICULO,1 CANTIDAD,COD_RUBRO',
'FROM ST_ARTICULOS A,VT_ORIGENES T,VT_ORDENES_TRABAJO V',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA AND COD_RUBRO=''MO'' AND NVL(ESTADO,''S'') NOT IN (''I'',''N'') AND T.COD_ORIGEN=V.COD_ORIGEN AND T.COD_EMPRESA=V.COD_EMPRESA AND V.COD_EMPRESA=A.COD_EMPRESA AND V.TIP_COMPROBANTE=:P342_TIP_COMPROBANTE_REF AND V.SER_COMPROB'
||'ANTE=:P342_SER_COMPROBANTE_REF AND V.NRO_COMPROBANTE=:P342_NRO_COMPROBANTE_REF AND NVL(A.IND_PARTICULAR,''X'')<>NVL(V.IND_GARANTIA,''Z'') AND T.ORIGEN=''STNGO'' AND A.TIPO_MO=''STNGO'' AND TIPO_MO IS NOT NULL AND COD_CATEGORIA IS NULL AND A.COD_LINEA IS NULL'
||' AND NVL(COD_MARCA,:P342_COD_MARCA)=:P342_COD_MARCA',
'UNION ALL',
'SELECT A.DESCRIPCION,A.COD_ARTICULO,1 CANTIDAD,COD_RUBRO',
'FROM ST_ARTICULOS A,VT_ORIGENES T,VT_ORDENES_TRABAJO V',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA AND COD_RUBRO=''MO'' AND NVL(ESTADO,''S'') NOT IN (''I'',''N'') AND T.COD_ORIGEN=V.COD_ORIGEN AND T.COD_EMPRESA=V.COD_EMPRESA AND V.COD_EMPRESA=A.COD_EMPRESA AND V.TIP_COMPROBANTE=:P342_TIP_COMPROBANTE_REF AND V.SER_COMPROB'
||'ANTE=:P342_SER_COMPROBANTE_REF AND V.NRO_COMPROBANTE=:P342_NRO_COMPROBANTE_REF AND NVL(T.ORIGEN,''X'') NOT IN ''STNGO'' AND A.TIPO_MO NOT IN ''STNGO'' AND TIPO_MO IS NOT NULL AND NVL(COD_MARCA,:P342_COD_MARCA)=:P342_COD_MARCA',
'',
'UNION ALL',
'SELECT A.DESCRIPCION,A.COD_ARTICULO,NVL((select SUM(E.CANT_DISPON)',
'             from ST_EXISTENCIA_ART E',
'            where E.COD_EMPRESA= :P_COD_EMPRESA',
'              AND A.COD_ARTICULO = E.COD_ARTICULO',
'              AND E.COD_SUCURSAL in (''101'', ''190'')),0) CANTIDAD,A.COD_RUBRO',
'FROM ST_ARTICULOS A, VT_ORDENES_TRABAJO V,ST_EQUIVALENCIA_ART S',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA AND NVL(A.ESTADO,''N'')<>''I''  AND V.COD_EMPRESA=A.COD_EMPRESA AND V.TIP_COMPROBANTE=:P342_TIP_COMPROBANTE_REF AND V.SER_COMPROBANTE=:P342_SER_COMPROBANTE_REF AND V.NRO_COMPROBANTE=:P342_NRO_COMPROBANTE_REF',
'AND V.COD_ARTICULO=S.COD_ARTICULO AND V.COD_EMPRESA=S.COD_EMPRESA AND S.COD_ARTICULO_EQUI=A.COD_ARTICULO',
'GROUP BY A.DESCRIPCION,A.COD_ARTICULO,A.COD_RUBRO',
'',
'',
'ORDER BY 3;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P342_LINEA,P342_CATEGORIA,P_COD_EMPRESA,P342_TIP_COMPROBANTE_REF,P342_SER_COMPROBANTE_REF,P342_NRO_COMPROBANTE_REF,P342_COD_ARTICULO,P342_COD_SUCURSAL,P342_COD_MARCA'
,p_ajax_items_to_submit=>'P342_LINEA,P342_CATEGORIA,P_COD_EMPRESA,P342_TIP_COMPROBANTE_REF,P342_SER_COMPROBANTE_REF,P342_NRO_COMPROBANTE_REF,P342_COD_ARTICULO,P342_COD_SUCURSAL,P342_COD_MARCA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91079568460718750)
,p_name=>'P342_COD_UNIDAD_MONEDA_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>'UM'
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
 p_id=>wwv_flow_imp.id(92138671641022001)
,p_name=>'P342_NRO_LOTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_item_default=>'1'
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT  l.cod_iva, ',
'       l.cod_iva d',
'  from st_lotes l, ',
'       st_iva i ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_articulo = :P342_COD_ARTICULO_ADD',
'   and l.cod_iva = i.cod_iva ',
'order by l.cod_iva ASC'))
,p_lov_cascade_parent_items=>'P342_COD_ARTICULO_ADD'
,p_ajax_items_to_submit=>'P342_COD_ARTICULO_ADD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(92138705863022002)
,p_name=>'P342_COD_IVA_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_item_default=>'1'
,p_prompt=>'IVA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IVA_CAENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_iva, porc_iva_compra, porc_iva_venta ',
'  from st_iva'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92138843460022003)
,p_name=>'P342_CANTIDAD_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92138980290022004)
,p_name=>'P342_PRECIO_VENTA_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>'Precio de Venta'
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
 p_id=>wwv_flow_imp.id(92139074730022005)
,p_name=>'P342_TOTAL_ADD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92139486450022009)
,p_name=>'P342_COD_MARCA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92140383291022018)
,p_name=>'P342_COSTO_GS_DET'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92140428980022019)
,p_name=>'P342_PORCENTAJE_SSP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92140514964022020)
,p_name=>'P342_FEC_VENCIMIENTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92140696825022021)
,p_name=>'P342_CARGA_LOTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92140724777022022)
,p_name=>'P342_IND_ENT_SAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92141179031022026)
,p_name=>'P342_MENSAJE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(82566401073905839)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92141263077022027)
,p_name=>'P342_CANTIDAD_UB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142040450022035)
,p_name=>'P342_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142210596022037)
,p_name=>'P342_COSTO_ADD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142359356022038)
,p_name=>'P342_TIPO_CANBIO_US_DET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(91077868959718733)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142498195022039)
,p_name=>'P342_COD_MONEDA_BASE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142513520022040)
,p_name=>'P342_COD_MONEDA_US'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142654728022041)
,p_name=>'P342_PORC_IVA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142780355022042)
,p_name=>'P342_COD_MODULO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92142867239022043)
,p_name=>'P342_TOT_CANTIDAD_ANT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92143316789022048)
,p_name=>'P342_TOT_CANTIDAD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92143417499022049)
,p_name=>'P342_TOT_IMPORTE_ANT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95601136821709701)
,p_name=>'P342_COSTO_GS_ADD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95601233229709702)
,p_name=>'P342_OBSERVACION_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(99674792723806504)
,p_name=>'P342_CONFIRMADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124025290284827350)
,p_name=>'P342_COD_ARTICULO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125066166664854401)
,p_name=>'P342_LINEA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125066227598854402)
,p_name=>'P342_CATEGORIA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199316284824590119)
,p_name=>'P342_STOCK'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>'Existencia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_EXISTENCIAS_PRESU'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal,nvl(sum(cant_dispon),0)cant_dispon ',
' from st_existencia_art',
'where COD_EMPRESA = :P_COD_EMPRESA',
'and CANT_DISPON  > 0',
'and cod_articulo = nvl(:P342_COD_ARTICULO_ADD, :P327_COD_ARTICULO)',
'group by cod_sucursal'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P342_COD_ARTICULO_ADD'
,p_ajax_items_to_submit=>'P342_COD_ARTICULO_ADD'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(199316853613590125)
,p_name=>'P342_DESC_PRODUCTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(91079305996718748)
,p_prompt=>unistr('Descripci\00F3n Producto')
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
 p_id=>wwv_flow_imp.id(1017485700423915309)
,p_name=>'P342_IND_CORREO_PRESU'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(82564948360905824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(91077587873718730)
,p_name=>'DA_SELECCIONAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_AUX_ROWID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91077617924718731)
,p_event_id=>wwv_flow_imp.id(91077587873718730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_AUX_ROWID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91077788692718732)
,p_event_id=>wwv_flow_imp.id(91077587873718730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.ANULAR_DET(prowid  => :P342_AUX_ROWID,',
'                        paccion => :P342_ACCION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR ANULAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_AUX_ROWID,P342_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_AUX_ROWID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92139190496022006)
,p_name=>'DA_ABRIR_MODAL_ADD'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(91076542437718720)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92139236896022007)
,p_event_id=>wwv_flow_imp.id(92139190496022006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P342_COD_ARTICULO_ADD,P342_COD_UNIDAD_MONEDA_ADD,P342_COD_IVA_ADD,P342_CANTIDAD_ADD,P342_PRECIO_VENTA_ADD,P342_TOTAL_ADD,P342_EDIT_DATA,P342_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92142940185022044)
,p_event_id=>wwv_flow_imp.id(92139190496022006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P342_TOT_CANTIDAD_ANT := NVL(:P342_CANTIDAD_ADD,0);',
'',
'DECLARE ',
'v_contador NUMBER := 0;',
'v_con   NUMBER := 0;',
'',
'cursor cur_detalles is ',
'select  seq_id,',
'    c001 AS COD_ARTICULO, ',
'    to_number(c003) as MONTO,',
'    to_number(c004) as MONTO_VENTA,',
'    (c005) as COD_TECNICO',
'    from apex_collections',
'    where collection_name = ''VT_MANO_OBRA'';',
'BEGIN',
'',
'begin',
'SELECT count(*)',
'into v_contador',
'from ca_entsal_det',
'where NUM_ENT_SAL =  :P342_NUM_ENT_SAL',
'and SER_ENT_SAL = :P342_SER_ENT_SAL ',
'and cod_empresa  = :P_COD_EMPRESA;',
'exception ',
'when others then ',
'v_contador := 0;',
'end;',
'if v_contador = 0 then ',
':P342_COD_SUCURSAL := ''01'';',
':P342_TIP_ENT_SAL := ''AJS'';',
':P342_SER_ENT_SAL := ''A'';',
':P342_COD_MOTIVO_ENT_SAL := ''8'';',
':P342_COD_MONEDA := ''1'';',
' ',
'for a in cur_detalles loop',
'    begin ',
'        select count(*) ',
'        INTO v_con',
'        from ca_entsal_det  b',
'        where b.num_ent_sal = :P342_NUM_ENT_SAL',
'        and b.tip_ent_sal = :P342_TIP_ENT_SAL',
'        AND b.ser_ent_sal = :P342_SER_ENT_SAL',
'        AND b.cod_articulo = a.cod_articulo;',
'        exception ',
'            WHEN NO_DATA_FOUND  THEN ',
'                v_con := 0;',
'            when others then  ',
'                v_con := 0;',
'    end;',
'',
'',
'INSERT INTO ca_entsal_det',
'  (cod_empresa,',
'   tip_ent_sal,',
'   ser_ent_sal,',
'   num_ent_sal,',
'   cod_articulo,',
'   costo,',
'   cantidad,',
'   cod_sucursal,',
'   cod_unidad_medida,',
'   cantidad_ub,',
'   confirmado,',
'   cod_iva,',
'   nro_lote,',
'   fec_vencimiento,',
'   observacion,',
'   precio_venta,',
'   costo_gs,',
'   costo_us,',
'   tip_cambio_us,',
'   des_articulo,',
'   garantia,',
'   anulado,',
'   ind_promo,',
'   cantidad_confirmada,',
'   precio_lista,',
'   porcentaje_spp)',
'VALUES',
'  (:P_COD_EMPRESA,',
'   :P342_TIP_ENT_SAL,',
'   :P342_SER_ENT_SAL,',
'   :P342_NUM_ENT_SAL,',
'   a.COD_ARTICULO,',
'   null,',
'   1,',
'   :P342_COD_SUCURSAL,',
'   null,',
'   null,',
'   ''S'',',
'   NULL,',
'   NULL,',
'   NULL,',
'   NULL,',
'   a.monto,',
'   NULL,',
'   NULL,',
'   NULL,',
'   NULL,',
'   NULL,',
'   ''N'',',
'   NULL,',
'   NULL,',
'   NULL,',
'   NULL);     ',
'',
'end loop;',
'end if;',
'END;'))
,p_attribute_02=>'P342_CANTIDAD_ADD,P342_TIP_COMPROBANTE_REF,P342_SER_COMPROBANTE_REF,P342_COD_SUCURSAL,P342_TIP_ENT_SAL,P342_SER_ENT_SAL,P342_COD_MOTIVO_ENT_SAL,P342_COD_MONEDA,P_COD_EMPRESA,P342_NUM_ENT_SAL,P342_OBSERVACION_ADD,P342_NRO_COMPROBANTE_REF,P342_TIPO_CAN'
||'BIO_US_DET'
,p_attribute_03=>'P342_TOT_CANTIDAD_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92139328285022008)
,p_event_id=>wwv_flow_imp.id(92139190496022006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91079305996718748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92139772086022012)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92139853673022013)
,p_event_id=>wwv_flow_imp.id(92139772086022012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92139951083022014)
,p_event_id=>wwv_flow_imp.id(92139772086022012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.OBTENER_DATOS_DET(prow_id       => :P342_DET_DATA,',
'                               pobservacion  => :P342_OBSERVACION_DET,',
'                               pdesc_um      => :P342_UNIDAD_MED_DET,',
'                               pdesc_iva     => :P342_PORC_IVA_COMPRA_DET,',
'                               pprecio_lista => :P342_PRECIO_LISTA_DET);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_DET_DATA'
,p_attribute_03=>'P342_OBSERVACION_DET,P342_UNIDAD_MED_DET,P342_PORC_IVA_COMPRA_DET,P342_PRECIO_LISTA_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_DET_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92140025950022015)
,p_name=>'DA_CALCULAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_COD_ARTICULO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92140121881022016)
,p_event_id=>wwv_flow_imp.id(92140025950022015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_COD_ARTICULO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92140227492022017)
,p_event_id=>wwv_flow_imp.id(92140025950022015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.CALCULAR(pcod_empresa         => :P_COD_EMPRESA,',
'                      pcod_articulo        => :P342_COD_ARTICULO_ADD,',
'                      pporc_iva            => :P342_PORC_IVA,',
'                      pfec_ent_sal         => :P342_FEC_ENT_SAL,',
'                      pcod_moneda          => :P342_COD_MONEDA,',
'                      pcosto_gs            => :P342_COSTO_GS_ADD,',
'                      ptip_cambio_us       => :P342_TIPO_CANBIO_US_DET,',
'                      pcod_moneda_base     => :P342_COD_MONEDA_BASE,',
'                      ptip_comprobante_ref => :P342_TIP_COMPROBANTE_REF,',
'                      pser_comprobante_ref => :P342_SER_COMPROBANTE_REF,',
'                      pnro_comprante_ref   => :P342_NRO_COMPROBANTE_REF,',
'                      pcantidad            => :P342_CANTIDAD_ADD,',
'                      pcod_sucursal        => :P342_COD_SUCURSAL,',
'                      prow_id              => :P342_EDIT_DATA,',
'                      pprecio_lista        => :P342_PRECIO_LISTA_DET,',
'                      pprecio_venta        => :P342_PRECIO_VENTA_ADD,',
'                      pporcentaje_ssp      => :P342_PORCENTAJE_SSP,',
'                      pum                  => :P342_COD_UNIDAD_MONEDA_ADD,',
'                      pcosto               => :P342_COSTO_ADD,',
'                      pcantidad_ub         => :P342_CANTIDAD_UB,',
'                      pnro_lote            => :P342_NRO_LOTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P342_COD_ARTICULO_ADD,P342_FEC_ENT_SAL,P342_COD_MONEDA,P342_TIPO_CANBIO_US_DET,P342_COD_MONEDA_BASE,P342_TIP_COMPROBANTE_REF,P342_SER_COMPROBANTE_REF,P342_NRO_COMPROBANTE_REF,P342_CANTIDAD_ADD,P342_COD_SUCURSAL,P342_PORC_IVA,P342_EDIT_D'
||'ATA'
,p_attribute_03=>'P342_PRECIO_LISTA_DET,P342_PRECIO_VENTA_ADD,P342_PORCENTAJE_SSP,P342_COD_UNIDAD_MONEDA_ADD,P342_COSTO_ADD,P342_CANTIDAD_UB,P342_NRO_LOTE,P342_COSTO_GS_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_COD_ARTICULO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199317143272590128)
,p_event_id=>wwv_flow_imp.id(92140025950022015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    BEGIN ',
'        SELECT A.DESCRIPCION',
'        INTO :P342_DESC_PRODUCTO',
'        FROM ST_ARTICULOS A',
'        WHERE COD_ARTICULO  = :P342_COD_ARTICULO_ADD',
'        AND COD_EMPRESA = :P_COD_EMPRESA;',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                :P342_DESC_PRODUCTO := NULL;',
'              ',
'    END;',
'',
'    :P342_NRO_LOTE:= ''1'';',
'    :P342_COD_IVA_ADD:=''1'';',
'END;'))
,p_attribute_02=>'P342_COD_ARTICULO_ADD'
,p_attribute_03=>'P342_DESC_PRODUCTO,P342_NRO_LOTE,P342_COD_IVA_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92140896840022023)
,p_name=>'DA_VALIDATE_LOTE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_NRO_LOTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92140913499022024)
,p_event_id=>wwv_flow_imp.id(92140896840022023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_NRO_LOTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92141018054022025)
,p_event_id=>wwv_flow_imp.id(92140896840022023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.VALIDATE_LOTE(pod_empresa      => :P_COD_EMPRESA,',
'                           pcod_articulo    => :P342_COD_ARTICULO_ADD,',
'                           plote            => :P342_NRO_LOTE,',
'                           pind_ent_sal     => :P342_IND_ENT_SAL,',
'                           --pnro_lote        => :P342_NRO_LOTE,',
'                           pcod_iva         => :P342_COD_IVA_ADD,',
'                           pfec_vencimiento => :P342_FEC_VENCIMIENTO,',
'                           pporc_iva_compra => :P342_PORC_IVA_COMPRA_DET,',
'                           pcarga_lote      => :P342_CARGA_LOTE,',
'                           pmensaje         => :P342_MENSAJE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_VALIDATE_LOTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P342_COD_ARTICULO_ADD,P342_NRO_LOTE,P342_IND_ENT_SAL'
,p_attribute_03=>'P342_COD_IVA_ADD,P342_FEC_VENCIMIENTO,P342_PORC_IVA_COMPRA_DET,P342_CARGA_LOTE,P342_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92141322089022028)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92141485184022029)
,p_event_id=>wwv_flow_imp.id(92141322089022028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92141525474022030)
,p_event_id=>wwv_flow_imp.id(92141322089022028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.BORRAR_DET(prow_id => :P342_DELETE_DATA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_DELETE_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99675778700806514)
,p_event_id=>wwv_flow_imp.id(92141322089022028)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        :P342_TOT_IMPORTE_DET := CAENTSAL.CALCULAR_TOTAL(pnum_ent_sal => :P342_NUM_ENT_SAL,',
'                                                         pcod_empresa => :P_COD_EMPRESA);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P342_TOT_IMPORTE_DET := NULL;',
'    END;',
'',
'    BEGIN',
'        :P342_TOT_CANTIDAD_DET := CAENTSAL.CALCULAR_CANTIDAD(pnum_ent_sal => :P342_NUM_ENT_SAL,',
'                                                             pcod_empresa => :P_COD_EMPRESA);',
'    EXCEPTION   ',
'        WHEN OTHERS THEN',
'        :P342_TOT_CANTIDAD_DET := NULL;',
'    END;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA CALCULAR TOTALES ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_NUM_ENT_SAL,P_COD_EMPRESA'
,p_attribute_03=>'P342_TOT_IMPORTE_DET,P342_TOT_CANTIDAD_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95601584042709705)
,p_event_id=>wwv_flow_imp.id(92141322089022028)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82566401073905839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92141737357022032)
,p_name=>'DA_AGREGAR_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(92141658051022031)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199317260606590129)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P342_DESC_PRODUCTO IS NULL THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''El codigo de producto ingresado no existe'');',
'end if;',
'',
' '))
,p_attribute_02=>'P342_DESC_PRODUCTO,P342_PRECIO_VENTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92141819588022033)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_COD_ARTICULO_ADD,P342_COD_UNIDAD_MONEDA_ADD,P342_COD_IVA_ADD,P342_CANTIDAD_ADD,P342_PRECIO_VENTA_ADD,P342_TOTAL_ADD,P342_NRO_LOTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92141968032022034)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P342_CANTIDAD_ADD IS NULL OR :P342_CANTIDAD_ADD <= 0 THEN',
'        :P342_CONTROL := 1;',
'    ELSE ',
'        :P342_CONTROL := 0; ',
'        CAENTSAL.ADD_DET(pcod_empresa       => :P_COD_EMPRESA,',
'                         ptip_ent_sal       => :P342_TIP_ENT_SAL,',
'                         pser_ent_sal       => :P342_SER_ENT_SAL,',
'                         pnum_ent_sal       => :P342_NUM_ENT_SAL,',
'                         pcod_articulo      => :P342_COD_ARTICULO_ADD,',
'                         pcosto             => :P342_COSTO_ADD,',
'                         pcantidad          => :P342_CANTIDAD_ADD,',
'                         pcod_sucursal      => :P342_COD_SUCURSAL,',
'                         pcod_unidad_medida => :P342_COD_UNIDAD_MONEDA_ADD,',
'                         pcantidad_ub       => :P342_CANTIDAD_UB,',
'                         pcod_iva           => :P342_COD_IVA_ADD,',
'                         pnro_lote          => :P342_NRO_LOTE,',
'                         pfec_vencimiento   => :P342_FEC_VENCIMIENTO,',
'                         pobservacion       => :P342_OBSERVACION_ADD,',
'                         pprecio_venta      => :P342_PRECIO_VENTA_ADD,',
'                         pcosto_gs          => :P342_COSTO_ADD,',
'                         pcosto_us          => NULL,',
'                         ptipo_cambio_us    => NULL,',
'                         pdes_articulo      => NULL,',
'                         pgarantia          => NULL);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,''DA_AGREGAR_EDITAR ADD_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_CANTIDAD_ADD,P_COD_EMPRESA,P342_TIP_ENT_SAL,P342_SER_ENT_SAL,P342_NUM_ENT_SAL,P342_COD_ARTICULO_ADD,P342_COSTO_GS_ADD,P342_COD_SUCURSAL,P342_COD_UNIDAD_MONEDA_ADD,P342_COD_IVA_ADD,P342_NRO_LOTE,P342_FEC_VENCIMIENTO,P342_OBSERVACION_ADD,P342_PREC'
||'IO_VENTA_ADD,P342_COSTO_ADD'
,p_attribute_03=>'P342_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P342_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99675130806806508)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P342_CANTIDAD_ADD IS NULL OR :P342_CANTIDAD_ADD <= 0 THEN',
'        :P342_CONTROL := 1;',
'    ELSE ',
'        :P342_CONTROL := 0;',
'',
'        CAENTSAL.EDIT_DET(pedit_date         => :P342_EDIT_DATA,',
'                          pcod_articulo      => :P342_COD_ARTICULO_ADD,',
'                          pcosto             => :P342_COSTO_ADD,',
'                          pcantidad          => :P342_CANTIDAD_ADD,',
'                          pcod_unidad_medida => :P342_COD_UNIDAD_MONEDA_ADD,',
'                          pcantidad_ub       => :P342_CANTIDAD_UB,',
'                          pconfirmado        => ''S'',',
'                          pnro_lote          => :P342_NRO_LOTE,',
'                          pcod_iva           => :P342_COD_IVA_ADD,                                 ',
'                          pfec_vencimiento   => :P342_FEC_VENCIMIENTO,',
'                          pobservacion       => :P342_OBSERVACION_ADD,',
'                          pprecio_venta      => :P342_PRECIO_VENTA_ADD,',
'                          pcosto_gs          => :P342_COSTO_ADD);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    raise_application_error(-20000,''DA_AGREGAR_EDITAR EDIT_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_EDIT_DATA,P342_CANTIDAD_ADD,P_COD_EMPRESA,P342_TIP_ENT_SAL,P342_SER_ENT_SAL,P342_NUM_ENT_SAL,P342_COD_ARTICULO_ADD,P342_COSTO_GS_ADD,P342_COD_SUCURSAL,P342_COD_UNIDAD_MONEDA_ADD,P342_COD_IVA_ADD,P342_NRO_LOTE,P342_FEC_VENCIMIENTO,P342_OBSERVACIO'
||'N_ADD,P342_PRECIO_VENTA_ADD,P342_COSTO_ADD'
,p_attribute_03=>'P342_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_EDIT_DATA'
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
 p_id=>wwv_flow_imp.id(92142140460022036)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ser cantidad positiva mayor a 0 para efectuar la operaci\00F3n.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P342_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99675403484806511)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P342_TOT_IMPORTE_DET := CAENTSAL.CALCULAR_TOTAL(pnum_ent_sal => :P342_NUM_ENT_SAL,',
'                                                     pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    raise_application_error(-20000,''DA_AGREGAR_EDITAR CALCULAR_TOTAL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_NUM_ENT_SAL,P_COD_EMPRESA'
,p_attribute_03=>'P342_TOT_IMPORTE_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99675509836806512)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P342_TOT_CANTIDAD_DET := CAENTSAL.CALCULAR_CANTIDAD(pnum_ent_sal => :P342_NUM_ENT_SAL,',
'                                                         pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    raise_application_error(-20000,''DA_AGREGAR_EDITAR CALCULAR_CANTIDAD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_NUM_ENT_SAL,P_COD_EMPRESA'
,p_attribute_03=>'P342_TOT_CANTIDAD_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95601373899709703)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91079305996718748)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P342_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95601457479709704)
,p_event_id=>wwv_flow_imp.id(92141737357022032)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82566401073905839)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P342_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92143016150022045)
,p_name=>'DA_CANTIDAD_ADD'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92143182001022046)
,p_event_id=>wwv_flow_imp.id(92143016150022045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_CANTIDAD_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92143202969022047)
,p_event_id=>wwv_flow_imp.id(92143016150022045)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.VALIDATE_CANTIDAD(pind_ent_sal         => :P342_IND_ENT_SAL,',
'                               pcod_empresa         => :P_COD_EMPRESA,',
'                               pcod_sucursal        => :P342_COD_SUCURSAL,',
'                               pcod_articulo        => :P342_COD_ARTICULO_ADD,',
'                               pnro_lote            => :P342_NRO_LOTE,',
'                               pcantidad            => :P342_CANTIDAD_ADD,',
'                               pprecio_venta        => :P342_PRECIO_VENTA_ADD,',
'                               ptot_cantidad_in     => :P342_TOT_CANTIDAD,',
'                               ptot_cantidad_ant_in => :P342_TOT_CANTIDAD_ANT,',
'                               pmult                => 1,',
'                               pdiv                 => 1,',
'                               panulado             => NULL,',
'                               pmensaje             => :P342_MENSAJE,',
'                               pcantidad_ub         => :P342_CANTIDAD_UB,',
'                               ptotal               => :P342_TOTAL_ADD,',
'                               ptot_cantidad        => :P342_TOT_CANTIDAD,',
'                               ptot_cantidad_ant    => :P342_TOT_CANTIDAD_ANT,',
'                               ptot_importe_ant     => :P342_TOT_IMPORTE_ANT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_IND_ENT_SAL,P_COD_EMPRESA,P342_COD_SUCURSAL,P342_COD_ARTICULO_ADD,P342_NRO_LOTE,P342_CANTIDAD_ADD,P342_PRECIO_VENTA_ADD,P342_TOT_CANTIDAD,P342_TOT_CANTIDAD_ANT'
,p_attribute_03=>'P342_MENSAJE,P342_CANTIDAD_UB,P342_TOTAL_ADD,P342_TOT_CANTIDAD,P342_TOT_CANTIDAD_ANT,P342_TOT_IMPORTE_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_CANTIDAD_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92143526448022050)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99674486194806501)
,p_event_id=>wwv_flow_imp.id(92143526448022050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99674571694806502)
,p_event_id=>wwv_flow_imp.id(92143526448022050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAENTSAL.CARGAR_DATAOS_DET(pedit_data         => :P342_EDIT_DATA,',
'                               pcod_articulo      => :P342_COD_ARTICULO_ADD,',
'                               pcosto             => :P342_COSTO_ADD,',
'                               pcantidad          => :P342_CANTIDAD_ADD,',
'                               pcod_unidad_medida => :P342_COD_UNIDAD_MONEDA_ADD,',
'                               pcantidad_ub       => :P342_CANTIDAD_UB,',
'                               pconfirmado        => :P342_CONFIRMADO,',
'                               pnro_lote          => :P342_NRO_LOTE,',
'                               pcod_iva           => :P342_COD_IVA_ADD,                               ',
'                               pfec_vencimiento   => :P342_FEC_VENCIMIENTO,',
'                               pobservacion       => :P342_OBSERVACION_ADD,',
'                               pprecio_venta      => :P342_PRECIO_VENTA_ADD,',
'                               pcosto_gs          => :P342_COSTO_GS_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_EDIT_DATA'
,p_attribute_03=>'P342_COD_ARTICULO_ADD,P342_COSTO_ADD,P342_CANTIDAD_ADD,P342_COD_UNIDAD_MONEDA_ADD,P342_CANTIDAD_UB,P342_CONFIRMADO,P342_NRO_LOTE,P342_COD_IVA_ADD,P342_FEC_VENCIMIENTO,P342_OBSERVACION_ADD,P342_PRECIO_VENTA_ADD,P342_COSTO_GS_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99674610636806503)
,p_event_id=>wwv_flow_imp.id(92143526448022050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91079305996718748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99674858650806505)
,p_name=>'DA_CALCULAR_TOTAL'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_PRECIO_VENTA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99674931588806506)
,p_event_id=>wwv_flow_imp.id(99674858650806505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P342_PRECIO_VENTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99675034337806507)
,p_event_id=>wwv_flow_imp.id(99674858650806505)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P342_TOTAL_ADD := :P342_CANTIDAD_ADD * :P342_PRECIO_VENTA_ADD;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR_TOTAL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P342_CANTIDAD_ADD,P342_PRECIO_VENTA_ADD'
,p_attribute_03=>'P342_TOTAL_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P342_PRECIO_VENTA_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122668237309248613)
,p_name=>'Nuevo'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122668196330248612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122668364017248614)
,p_event_id=>wwv_flow_imp.id(122668237309248613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P342_TOT_IMPORTE_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(199315828800590115)
,p_name=>'Nuevo_1'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199315928125590116)
,p_event_id=>wwv_flow_imp.id(199315828800590115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82566401073905839)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110448025346068104)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtiene articulo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'    SELECT C001, c002, c003, c004, c005',
'    INTO :P342_COD_ARTICULO, :P342_NRO_COMPROBANTE_REF, :P342_SER_COMPROBANTE_REF, :P342_LINEA, :P342_CATEGORIA',
'    FROM  APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ARTICULO''',
'    AND  ROWNUM = 1;',
'    EXCEPTION',
'    WHEN OTHERS THEN ',
'        NULL;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(91079204208718747)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ESTO_SE_BORRA'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82565982314905834)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --PARAMETROS EN DURO PARA PRUEBAS, LUEGO DE MIGRADO EL FORM DEL QUE LO LLAMA QUITAR',
'    /*:P342_SER_COMPROBANTE_REF := ''P'';',
'    :P342_TIP_COMPROBANTE_REF := ''ORT'';',
'    :P342_NRO_COMPROBANTE_REF := 1033;',
'    :P342_COD_SUCURSAL := ''01'';',
'    :P342_TIP_ENT_SAL := ''AJS'';',
'    :P342_SER_ENT_SAL := ''A'';',
'    :P342_NUM_ENT_SAL := 94250;',
'    :P342_COD_MOTIVO_ENT_SAL := ''8'';',
'    :P342_COD_MONEDA := ''1'';*/',
'    :P342_COD_MODULO := ''CA'';',
'    BEGIN',
'        SELECT COD_MARCA, nvl(IND_CORREO_PRESU,''N'')',
'          INTO :P342_COD_MARCA, :P342_IND_CORREO_PRESU',
'          FROM ST_ARTICULOS S,',
'               VT_ORDENES_TRABAJO V',
'         WHERE V.COD_EMPRESA = :P_COD_EMPRESA',
'           AND V.COD_ARTICULO = S.COD_ARTICULO',
'           AND V.COD_EMPRESA = S.COD_EMPRESA',
'           AND V.TIP_COMPROBANTE = :P342_TIP_COMPROBANTE_REF',
'           AND V.SER_COMPROBANTE = :P342_SER_COMPROBANTE_REF',
'           AND V.NRO_COMPROBANTE = :P342_NRO_COMPROBANTE_REF;        	',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P342_COD_MARCA := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,''PR_INIT PAG. 342 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(91079142647718746)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'verror exception;',
'BEGIN',
'    if :P342_NRO_COMPROBANTE_REF is not null AND :P342_SER_COMPROBANTE_REF is not null  then',
'',
'    VCONTROL := CAENTSAL.BUSCAR_CABECERA(pcod_empresa         => :P_COD_EMPRESA,',
'                                         ptip_comprobante_ref => ''ORT'',',
'                                         pser_comprobante_ref => :P342_SER_COMPROBANTE_REF,',
'                                         pnro_comprobante_ref => :P342_NRO_COMPROBANTE_REF);',
'',
'    :P342_COD_MONEDA_US := bs_busca_parametro(''BS'', ''COD_MONEDA_DOL'') ;',
'    :P342_COD_MONEDA_BASE := bs_busca_parametro(''BS'', ''COD_MONEDA_BASE'');',
'',
'    declare',
'        viva   varchar2(5) ;',
'    begin',
'        viva := bs_busca_parametro(:P342_COD_MODULO, ''COD_IVA_GRAVADA'');',
'        ',
'        select porc_iva_venta',
'          into :P342_PORC_IVA',
'          from st_iva',
'         where cod_iva = viva;',
'    exception',
'        when others then',
'        :P342_PORC_IVA := 0 ;',
'    end ;',
'',
'    IF VCONTROL = -1 THEN',
'        SELECT NVL(MAX(NUM_ENT_SAL),0) + 1',
'          INTO :P342_NUM_ENT_SAL',
'          FROM CA_ENTSAL_CAB',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'           AND SER_ENT_SAL = ''A'';',
'        ',
'        :P342_COD_SUCURSAL := ''01'';',
'        :P342_TIP_ENT_SAL := ''AJS'';',
'        :P342_SER_ENT_SAL := ''A'';',
'        :P342_COD_MOTIVO_ENT_SAL := ''8'';',
'        :P342_COD_MONEDA := ''1'';',
'',
'    else ',
'        :P342_NUM_ENT_SAL := VCONTROL;',
'',
'        CAENTSAL.CARGAR_DATOS_CAB(pcod_empresa        => :P_COD_EMPRESA,',
'                                  pnum_ent_sal        => :P342_NUM_ENT_SAL,',
'                                  pcod_sucursal       => :P342_COD_SUCURSAL,',
'                                  pcod_motivo_ent_sal => :P342_COD_MOTIVO_ENT_SAL,',
'                                  pcod_moneda         => :P342_COD_MONEDA,',
'                                  pser_ent_sal        => :P342_SER_ENT_SAL,',
'                                  ptip_ent_sal        => :P342_TIP_ENT_SAL,',
'                                  pcod_tecnico        => :P342_COD_TECNICO,',
'                                  phora_alta          => :P342_HORA_ALTA_DET,',
'                                  pfec_ent_sal        => :P342_FEC_ENT_SAL,',
'                                  pind_ent_sal        => :P342_IND_ENT_SAL);',
'   ',
'    END IF;',
'',
'  --  end if;',
'    CAENTSAL.CARGAR_TIPO_CAM_US(pcod_moneda_us => :P342_COD_MONEDA_US,',
'                                pfec_ent_sal   => :P342_FEC_ENT_SAL,',
'                                ptip_cambio_us => :P342_TIPO_CANBIO_US_DET);',
'else',
'    raise verror;',
'end if;',
'EXCEPTION',
'    when verror then',
'     raise_application_error(-20000,''No se recibieron los parametros de la OT vinculada. Favor Actualice la pagina'');',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,''PR_INIT_2 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99675666972806513)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CALCULO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        :P342_TOT_IMPORTE_DET := CAENTSAL.CALCULAR_TOTAL(pnum_ent_sal => :P342_NUM_ENT_SAL,',
'                                                         pcod_empresa => :P_COD_EMPRESA);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P342_TOT_IMPORTE_DET := NULL;',
'    END;',
'',
'    BEGIN',
'        :P342_TOT_CANTIDAD_DET := CAENTSAL.CALCULAR_CANTIDAD(pnum_ent_sal => :P342_NUM_ENT_SAL,',
'                                                             pcod_empresa => :P_COD_EMPRESA);',
'    EXCEPTION   ',
'        WHEN OTHERS THEN',
'        :P342_TOT_CANTIDAD_DET := NULL;',
'    END;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,''PR_CALCULO ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(199316020475590117)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Nuevo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'        CAENTSAL.CARGAR_DATOS_CAB(pcod_empresa        => :P_COD_EMPRESA,',
'                                  pnum_ent_sal        => :P342_NUM_ENT_SAL,',
'                                  pcod_sucursal       => :P342_COD_SUCURSAL,',
'                                  pcod_motivo_ent_sal => :P342_COD_MOTIVO_ENT_SAL,',
'                                  pcod_moneda         => :P342_COD_MONEDA,',
'                                  pser_ent_sal        => :P342_SER_ENT_SAL,',
'                                  ptip_ent_sal        => :P342_TIP_ENT_SAL,',
'                                  pcod_tecnico        => :P342_COD_TECNICO,',
'                                  phora_alta          => :P342_HORA_ALTA_DET,',
'                                  pfec_ent_sal        => :P342_FEC_ENT_SAL,',
'                                  pind_ent_sal        => :P342_IND_ENT_SAL);'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
