prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCRECPH'
,p_alias=>'CCCRECPH'
,p_step_title=>'CCCRECPH'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P122_ACCION'',''AGREGAR'');',
'      $s(''P122_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P122_ACCION'',''QUITAR'');',
'      $s(''P122_SEQ_ID'', cb.value,false);',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221128091817'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27428265443643633)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27429323651695901)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27429482383695902)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(27429323651695901)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27429565994695903)
,p_plug_name=>'reporte'
,p_parent_plug_id=>wwv_flow_imp.id(27429323651695901)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_EMPRESA,',
'       C002 COD_CLIENTE,',
'       C003 NRO_LOTE,',
'       to_number(nvl(C004,0)) MONTO,',
'       C005 FECHA_VIGENCIA,',
'       C006 COMENTARIO,',
'       C007 HORA,',
'       C008 FECHA,',
'       C009 COD_USUARIO,',
'       C010 COD_PERSONA,',
'       C011 COD_MONEDA,',
'       C012 FECHA_FINAL,',
'       APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C013',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as ESTADO,',
'       --C013 ESTADO,',
'       C014 TIP_COMPROBANTE,',
'       C015 TIP_COMPROBANTE_1,',
'       C016 TIP_COMPROBANTE_2,',
'       C017 TIP_COMPROBANTE_3,',
'       C018 OBSERVACION,',
'       C019 COD_VENDEDOR,',
'       C020 COD_CONDICION_VENTA,',
'       to_number(nvl(C021,0)) SALDO,',
'       to_number(nvl(C022,0)) NCR,',
'       to_number(nvl(C023,0)) DISPONIBLE,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_CCCRECPH''    ',
'AND NVL(C030,''P'') <> ''B''                                      '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P122_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'reporte'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.estilo {',
'  height: 20em;',
'  line-height: 1em;',
'  overflow-x: hidden;',
'  overflow-y: scroll;',
'  width: 100%;',
'}',
'</style>',
'',
'<div class="container-fluid row">',
'  <div id="reporte" name="reporte" class="estilo">'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </div>',
'</div>'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27429883201695906)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ANDRESDI'
,p_internal_uid=>27429883201695906
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27429950101695907)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27430107053695909)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero Lote')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27430428975695912)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27430568138695913)
,p_db_column_name=>'HORA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27430729829695915)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27430847537695916)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27430986996695917)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11429983188001511)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431129759695919)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431241172695920)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431336744695921)
,p_db_column_name=>'TIP_COMPROBANTE_1'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tip Comprobante 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431473641695922)
,p_db_column_name=>'TIP_COMPROBANTE_2'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Comprobante 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431534262695923)
,p_db_column_name=>'TIP_COMPROBANTE_3'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tip Comprobante 3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431671211695924)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Pagado (Obs)'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431761251695925)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27431849560695926)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27434115278695949)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27448556289134501)
,p_db_column_name=>'FECHA_VIGENCIA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Inicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27448691090134502)
,p_db_column_name=>'FECHA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27448775335134503)
,p_db_column_name=>'FECHA_FINAL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27449437408134510)
,p_db_column_name=>'MONTO'
,p_display_order=>260
,p_column_identifier=>'AC'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27449518667134511)
,p_db_column_name=>'SALDO'
,p_display_order=>270
,p_column_identifier=>'AD'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27449638339134512)
,p_db_column_name=>'NCR'
,p_display_order=>280
,p_column_identifier=>'AE'
,p_column_label=>'Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27449793894134513)
,p_db_column_name=>'DISPONIBLE'
,p_display_order=>290
,p_column_identifier=>'AF'
,p_column_label=>'Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27450832336134524)
,p_db_column_name=>'EDITAR'
,p_display_order=>300
,p_column_identifier=>'AG'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P122_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27450995337134525)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>310
,p_column_identifier=>'AH'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P122_DELETE'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27453135772134547)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>320
,p_column_identifier=>'AI'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27443687049841341)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'274437'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NRO_LOTE:COD_MONEDA:MONTO:SALDO:NCR:DISPONIBLE:FECHA_VIGENCIA:FECHA_FINAL:COMENTARIO:OBSERVACION:COD_USUARIO:FECHA:HORA:ESTADO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27450609275134522)
,p_plug_name=>'totales'
,p_parent_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27452367681134539)
,p_plug_name=>'Agregar/Editar/Eliminar'
,p_parent_plug_id=>wwv_flow_imp.id(27429323651695901)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28853063067336406)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_button_name=>'bt_cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28853147468336407)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_button_name=>'bt_guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28853203603336408)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_button_name=>'bt_guardar_editar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27451020241134526)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27429482383695902)
,p_button_name=>'bt_confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27450755732134523)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_button_name=>'bt_Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27429616103695904)
,p_name=>'P122_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27429482383695902)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27429766319695905)
,p_name=>'P122_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27429482383695902)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27449196641134507)
,p_name=>'P122_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27429482383695902)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
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
 p_id=>wwv_flow_imp.id(27449801288134514)
,p_name=>'P122_TOTAL_MONTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27449990631134515)
,p_name=>'P122_TOT_SALDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27450093137134516)
,p_name=>'P122_TOT_NCR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27450122032134517)
,p_name=>'P122_TOT_DISPONIBLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27450265782134518)
,p_name=>'P122_TOTAL_MONTO_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27450609275134522)
,p_prompt=>'Total Monto'
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
 p_id=>wwv_flow_imp.id(27450349754134519)
,p_name=>'P122_TOT_SALDO_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27450609275134522)
,p_prompt=>'Total Saldo'
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
 p_id=>wwv_flow_imp.id(27450486712134520)
,p_name=>'P122_TOT_NCR_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27450609275134522)
,p_prompt=>'Total NCR'
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
 p_id=>wwv_flow_imp.id(27450547428134521)
,p_name=>'P122_TOT_DISPONIBLE_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27450609275134522)
,p_prompt=>'Total Disponible'
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
 p_id=>wwv_flow_imp.id(27451128515134527)
,p_name=>'P122_ACCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27429482383695902)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27451264079134528)
,p_name=>'P122_SEQ_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27429482383695902)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27452478014134540)
,p_name=>'P122_COMENTARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27452585251134541)
,p_name=>'P122_OBSERVACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>'Pagado(Obs)'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27452624603134542)
,p_name=>'P122_COD_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27452711463134543)
,p_name=>'P122_MONTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>'Monto'
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
 p_id=>wwv_flow_imp.id(27452923125134545)
,p_name=>'P122_FECHA_VIGENCIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>'Inicio'
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
 p_id=>wwv_flow_imp.id(27453087393134546)
,p_name=>'P122_FECHA_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>'Fin'
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
 p_id=>wwv_flow_imp.id(27453238399134548)
,p_name=>'P122_DELETE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28853858285336414)
,p_name=>'P122_EDITAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28854572200336421)
,p_name=>'P122_LOTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27452367681134539)
,p_prompt=>unistr('N\00FAmero Lote')
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
 p_id=>wwv_flow_imp.id(28855583088336431)
,p_name=>'P122_MENSAJE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27429565994695903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27451326555134529)
,p_name=>'da_check'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27451468637134530)
,p_event_id=>wwv_flow_imp.id(27451326555134529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CCCRECPH.PR_CHECK(P_SEQ_ID => :P122_SEQ_ID,',
'                  P_ACCION => :P122_ACCION,',
'                  P_COLECCION => ''COL_CCCRECPH'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
'',
''))
,p_attribute_02=>'P122_ACCION,P122_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27453372587134549)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_DELETE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27453443672134550)
,p_event_id=>wwv_flow_imp.id(27453372587134549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro/a que desea eliminar este registro?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28852551181336401)
,p_event_id=>wwv_flow_imp.id(27453372587134549)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CCCRECPH'',',
'              p_seq   => :P122_DELETE ,',
'              p_attr_number => 30,',
'              p_attr_value  => ''B'');'))
,p_attribute_02=>'P122_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28852697997336402)
,p_event_id=>wwv_flow_imp.id(27453372587134549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27429565994695903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28852703086336403)
,p_event_id=>wwv_flow_imp.id(27453372587134549)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(c004),',
'       sum(c021),',
'       sum(c022),',
'       sum(c023)',
'into :P122_TOTAL_MONTO,',
'     :P122_TOT_SALDO,',
'     :P122_TOT_NCR,',
'     :P122_TOT_DISPONIBLE',
'from apex_collections',
'where collection_name = ''COL_CCCRECPH''',
'AND nvl(C030,''P'') <> ''B'';',
'',
':P122_TOTAL_MONTO_AUX := TO_CHAR(NVL(:P122_TOTAL_MONTO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_SALDO_AUX := TO_CHAR(NVL(:P122_TOT_SALDO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_NCR_AUX := TO_CHAR(NVL(:P122_TOT_NCR,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_DISPONIBLE_AUX := TO_CHAR(NVL(:P122_TOT_DISPONIBLE,0), ''FML999G999G999G999G990D00'');'))
,p_attribute_03=>'P122_TOTAL_MONTO,P122_TOT_SALDO,P122_TOT_NCR,P122_TOT_DISPONIBLE,P122_TOTAL_MONTO_AUX,P122_TOT_SALDO_AUX,P122_TOT_NCR_AUX,P122_TOT_DISPONIBLE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28852884967336404)
,p_name=>'da_Agregar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27450755732134523)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28852921691336405)
,p_event_id=>wwv_flow_imp.id(28852884967336404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27452367681134539)
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
 p_id=>wwv_flow_imp.id(28853634091336412)
,p_event_id=>wwv_flow_imp.id(28852884967336404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28853203603336408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28853719672336413)
,p_event_id=>wwv_flow_imp.id(28852884967336404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28853147468336407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28853426181336410)
,p_name=>'da_Cerrar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28853063067336406)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28853506914336411)
,p_event_id=>wwv_flow_imp.id(28853426181336410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27452367681134539)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28853944122336415)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28855941608336435)
,p_event_id=>wwv_flow_imp.id(28853944122336415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'           C003 NRO_LOTE,',
'           nvl(C004,0) MONTO,',
'           C005 FECHA_VIGENCIA,',
'           C006 COMENTARIO,',
'           C011 COD_MONEDA,',
'           C012 FECHA_FINAL ',
'    INTO :P122_LOTE,',
'         :P122_MONTO,',
'         :P122_FECHA_VIGENCIA,',
'         :P122_COMENTARIO,',
'         :P122_COD_MONEDA,',
'         :P122_FECHA_FINAL              ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_CCCRECPH'' ',
'    AND SEQ_ID = :P122_EDITAR;',
'EXCEPTION ',
'    WHEN OTHERS THEN    ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;        '))
,p_attribute_02=>'P122_EDITAR'
,p_attribute_03=>'P122_LOTE,P122_MONTO,P122_FECHA_VIGENCIA,P122_COMENTARIO,P122_COD_MONEDA,P122_FECHA_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854024055336416)
,p_event_id=>wwv_flow_imp.id(28853944122336415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27452367681134539)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854110486336417)
,p_event_id=>wwv_flow_imp.id(28853944122336415)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28853147468336407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854258375336418)
,p_event_id=>wwv_flow_imp.id(28853944122336415)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28853203603336408)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28854383564336419)
,p_name=>'da_Agregar_miembro'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28853147468336407)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854456646336420)
,p_event_id=>wwv_flow_imp.id(28854383564336419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P122_LOTE is null then',
unistr('        :P122_MENSAJE := ''Debe ingresar el n\00FAmero de lote'';'),
'    elsif :P122_COD_MONEDA is null then        ',
'        :P122_MENSAJE := ''Debe ingresar la moneda'';',
'    elsif :P122_MONTO is null then ',
'        :P122_MENSAJE := ''Debe ingresar el monto'';',
'    elsif :P122_FECHA_VIGENCIA is null then ',
'        :P122_MENSAJE := ''Debe ingresar la fecha de vigencia'';',
'    else        ',
'        :P122_MENSAJE := NULL;',
'        CCCRECPH.PR_AGREGAR_MIEMBRO(P_COD_MONEDA => :P122_COD_MONEDA,',
'                                    P_MONTO => :P122_MONTO,',
'                                    P_FECH_VIG => :P122_FECHA_VIGENCIA,',
'                                    P_FECH_FIN => :P122_FECHA_FINAL,',
'                                    P_COMENTARIO => :P122_COMENTARIO,',
'                                    P_OBSERVACION => :P122_OBSERVACION,',
'                                    P_LOTE => :P122_LOTE,',
'                                    P_COD_CLIENTE => :P122_COD_CLIENTE,',
'                                    P_COD_PERSONA => :P122_COD_PERSONA);',
'    end if;                                    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P122_COD_MONEDA,P122_MONTO,P122_FECHA_VIGENCIA,P122_FECHA_FINAL,P122_COMENTARIO,P122_OBSERVACION,P122_LOTE,P122_COD_PERSONA,P122_COD_CLIENTE'
,p_attribute_03=>'P122_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854682797336422)
,p_event_id=>wwv_flow_imp.id(28854383564336419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27429565994695903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854891893336424)
,p_event_id=>wwv_flow_imp.id(28854383564336419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(to_number(c004)),',
'       sum(to_number(c021)),',
'       sum(to_number(c022)),',
'       sum(to_number(c023))',
'into :P122_TOTAL_MONTO,',
'     :P122_TOT_SALDO,',
'     :P122_TOT_NCR,',
'     :P122_TOT_DISPONIBLE',
'from apex_collections',
'where collection_name = ''COL_CCCRECPH''',
'AND nvl(C030,''P'') <> ''B'';',
'',
':P122_TOTAL_MONTO_AUX := TO_CHAR(NVL(:P122_TOTAL_MONTO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_SALDO_AUX := TO_CHAR(NVL(:P122_TOT_SALDO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_NCR_AUX := TO_CHAR(NVL(:P122_TOT_NCR,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_DISPONIBLE_AUX := TO_CHAR(NVL(:P122_TOT_DISPONIBLE,0), ''FML999G999G999G999G990D00'');'))
,p_attribute_03=>'P122_TOTAL_MONTO,P122_TOT_SALDO,P122_TOT_NCR,P122_TOT_DISPONIBLE,P122_TOTAL_MONTO_AUX,P122_TOT_SALDO_AUX,P122_TOT_NCR_AUX,P122_TOT_DISPONIBLE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28856076487336436)
,p_event_id=>wwv_flow_imp.id(28854383564336419)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_LOTE,P122_COD_MONEDA,P122_MONTO,P122_FECHA_VIGENCIA,P122_FECHA_FINAL,P122_COMENTARIO,P122_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28854909510336425)
,p_event_id=>wwv_flow_imp.id(28854383564336419)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27452367681134539)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28855057262336426)
,p_name=>'da_Editar_miembro'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28853203603336408)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28855839434336434)
,p_event_id=>wwv_flow_imp.id(28855057262336426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P122_LOTE is null then',
unistr('        :P122_MENSAJE := ''Debe ingresar el n\00FAmero de lote'';'),
'    elsif :P122_COD_MONEDA is null then        ',
'        :P122_MENSAJE := ''Debe ingresar la moneda'';',
'    elsif :P122_MONTO is null then ',
'        :P122_MENSAJE := ''Debe ingresar el monto'';',
'    elsif :P122_FECHA_VIGENCIA is null then ',
'        :P122_MENSAJE := ''Debe ingresar la fecha de vigencia'';',
'    else        ',
'        :P122_MENSAJE := NULL;',
'        CCCRECPH.PR_EDITAR_MIEMBRO(P_COD_MONEDA => :P122_COD_MONEDA,',
'                                   P_MONTO => :P122_MONTO,',
'                                   P_FECH_VIG => :P122_FECHA_VIGENCIA,',
'                                   P_FECH_FIN => :P122_FECHA_FINAL,',
'                                   P_COMENTARIO => :P122_COMENTARIO,',
'                                   P_OBSERVACION => :P122_OBSERVACION,',
'                                   P_LOTE => :P122_LOTE,',
'                                   P_COD_CLIENTE => :P122_COD_CLIENTE,',
'                                   P_COD_PERSONA => :P122_COD_PERSONA,',
'                                   P_SEQ_ID   => :P122_EDITAR);',
'    end if;                                    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P122_COD_MONEDA,P122_MONTO,P122_FECHA_VIGENCIA,P122_FECHA_FINAL,P122_COMENTARIO,P122_OBSERVACION,P122_LOTE,P122_COD_PERSONA,P122_COD_CLIENTE,P122_EDITAR'
,p_attribute_03=>'P122_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28855264510336428)
,p_event_id=>wwv_flow_imp.id(28855057262336426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27429565994695903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28855359935336429)
,p_event_id=>wwv_flow_imp.id(28855057262336426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(to_number(c004)),',
'       sum(to_number(c021)),',
'       sum(to_number(c022)),',
'       sum(to_number(c023))',
'into :P122_TOTAL_MONTO,',
'     :P122_TOT_SALDO,',
'     :P122_TOT_NCR,',
'     :P122_TOT_DISPONIBLE',
'from apex_collections',
'where collection_name = ''COL_CCCRECPH''',
'AND nvl(C030,''P'') <> ''B'';',
'',
':P122_TOTAL_MONTO_AUX := TO_CHAR(NVL(:P122_TOTAL_MONTO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_SALDO_AUX := TO_CHAR(NVL(:P122_TOT_SALDO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_NCR_AUX := TO_CHAR(NVL(:P122_TOT_NCR,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_DISPONIBLE_AUX := TO_CHAR(NVL(:P122_TOT_DISPONIBLE,0), ''FML999G999G999G999G990D00'');'))
,p_attribute_03=>'P122_TOTAL_MONTO,P122_TOT_SALDO,P122_TOT_NCR,P122_TOT_DISPONIBLE,P122_TOTAL_MONTO_AUX,P122_TOT_SALDO_AUX,P122_TOT_NCR_AUX,P122_TOT_DISPONIBLE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28856108969336437)
,p_event_id=>wwv_flow_imp.id(28855057262336426)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_LOTE,P122_COD_MONEDA,P122_MONTO,P122_FECHA_VIGENCIA,P122_FECHA_FINAL,P122_COMENTARIO,P122_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28855497902336430)
,p_event_id=>wwv_flow_imp.id(28855057262336426)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27452367681134539)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28855644707336432)
,p_name=>'da_mostrar_mensaje'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_MENSAJE'
,p_condition_element=>'P122_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28855795793336433)
,p_event_id=>wwv_flow_imp.id(28855644707336432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P122_MENSAJE.'
,p_attribute_02=>'Mensaje'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27434063965695948)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P122_COD_PERSONA := 335804;',
'--:P122_COD_CLIENTE := 268589;',
'',
'',
'',
'BEGIN',
'',
'select ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) into :P122_NOMBRE ',
'from personas where cod_persona = :P122_COD_PERSONA;',
'',
'CCCRECPH.PR_CARGAR_REGISTROS(PI_COD_PERSONA => :P122_COD_PERSONA,',
'                             PI_COD_CLIENTE => :P122_COD_CLIENTE);',
'',
'select sum(to_number(c004)),',
'       sum(to_number(c021)),',
'       sum(to_number(c022)),',
'       sum(to_number(c023))',
'into :P122_TOTAL_MONTO,',
'     :P122_TOT_SALDO_AUX,',
'     :P122_TOT_NCR,',
'     :P122_TOT_DISPONIBLE',
'from apex_collections',
'where collection_name = ''COL_CCCRECPH'';',
'',
':P122_TOTAL_MONTO_AUX := TO_CHAR(NVL(:P122_TOTAL_MONTO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_SALDO_AUX := TO_CHAR(NVL(:P122_TOT_SALDO,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_NCR_AUX := TO_CHAR(NVL(:P122_TOT_NCR,0), ''FML999G999G999G999G990D00'');',
':P122_TOT_DISPONIBLE_AUX := TO_CHAR(NVL(:P122_TOT_DISPONIBLE,0), ''FML999G999G999G999G990D00'');',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END; '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28856280275336438)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECPH.PR_CONFIRMAR;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Se confirmaron las operaciones solicitadas.'
);
wwv_flow_imp.component_end;
end;
/
