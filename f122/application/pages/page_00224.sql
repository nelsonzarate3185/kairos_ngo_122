prompt --application/pages/page_00224
begin
--   Manifest
--     PAGE: 00224
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
 p_id=>224
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVCOPROM'
,p_alias=>'FVCOPROM'
,p_step_title=>'FVCOPROM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    width: 1000px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221229100540'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50720847658458515)
,p_plug_name=>'Contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50721171060458518)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50721899923458525)
,p_plug_name=>'COLEC_FV_COM_PROMOTORAS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_CONCEPTO,',
'       c003 SER_DEBCRED,',
'       c004 NRO_DEBCRED,',
'       c005 FEC_DEBCRED,',
'       c006 COD_EMPLEADO,',
'       c007 TIPO,--NO MOSTRAR',
'       c008 MONTO,',
'       c009 CANTIDAD,--NO MOSTRAR',
'       c010 PORCENTAJE,',
'       c011 SER_LIQUID_AFECTO,',
'       c012 NRO_LIQUID_AFECTO,',
'       c013 TRANSFERIDO,--NO MOSTRAR',
'       c014 ORIGEN,--NO MOSTRAR',
'       c015 TIP_LIQUID,--NO MOSTRAR',
'       c016 OBSERVACION,',
'       c017 COD_USUARIO_CARGA,',
'       c018 FEC_CARGA,',
'       c019 COD_USUARIO_MODIF,',
'       c020 FEC_ULTIMA_MODIF,',
'       c021 MES,--NO MOSTRAR',
'       c022 ANIO,--NO MOSTRAR',
'       c023 FECHA_INICIO,',
'       c024 FECHA_FIN,',
'       c025 MONTO_MAXIMO,',
'       c026 SALARIO,',
'       c027 PORCENTAJE_PARAMETRO,',
'       c028 PORCENTAJE_DETALLE,',
'       c029 PORCENTAJE_VARIABLE,',
'       c030 CONTROL,',
'       c031 ROW_ID,',
'       c032 DESC_EMPLEADO,',
'       c033 CONCEPTO,',
'       c034 SUB_CONCEPTO,',
'       c035 DESC_CONCEPTO,',
'       NULL DETALLE,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_FV_COM_PROMOTORAS''',
'   AND c030 IS NULL',
'  -- AND (:P224_MES IS NULL OR :P224_MES = TO_CHAR(TO_DATE(c005,''DD/MM/YYYY''), ''MM''))',
'  -- AND (:P224_ANIO IS NULL OR :P224_ANIO = TO_CHAR(TO_DATE(c005,''DD/MM/YYYY''), ''YYYY''))',
'   --AND :P224_CONTROL = 1',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P224_MES ,P224_ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_FV_COM_PROMOTORAS'
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
 p_id=>wwv_flow_imp.id(50721917723458526)
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
,p_internal_uid=>50721917723458526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50722082527458527)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50722182336458528)
,p_db_column_name=>'COD_CONCEPTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50722298896458529)
,p_db_column_name=>'SER_DEBCRED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Debcred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50722502601458532)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod. Empleado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50722693275458533)
,p_db_column_name=>'TIPO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723044817458537)
,p_db_column_name=>'SER_LIQUID_AFECTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ser Liquid Afecto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723288502458539)
,p_db_column_name=>'TRANSFERIDO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Transferido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723386949458540)
,p_db_column_name=>'ORIGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723465697458541)
,p_db_column_name=>'TIP_LIQUID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tip Liquid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723506822458542)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723639734458543)
,p_db_column_name=>'COD_USUARIO_CARGA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Usuario Carga'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50723849731458545)
,p_db_column_name=>'COD_USUARIO_MODIF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Usuario Modif'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50724083044458547)
,p_db_column_name=>'MES'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50724108420458548)
,p_db_column_name=>'ANIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51230830773511009)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>230
,p_column_identifier=>'AD'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51230983906511010)
,p_db_column_name=>'NRO_DEBCRED'
,p_display_order=>240
,p_column_identifier=>'AE'
,p_column_label=>'Nro.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231087142511011)
,p_db_column_name=>'FEC_DEBCRED'
,p_display_order=>250
,p_column_identifier=>'AF'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231195657511012)
,p_db_column_name=>'MONTO'
,p_display_order=>260
,p_column_identifier=>'AG'
,p_column_label=>'Monto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231278510511013)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>270
,p_column_identifier=>'AH'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231345945511014)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>280
,p_column_identifier=>'AI'
,p_column_label=>'% Porc.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231432616511015)
,p_db_column_name=>'NRO_LIQUID_AFECTO'
,p_display_order=>290
,p_column_identifier=>'AJ'
,p_column_label=>'Nro Liquid Afecto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231524820511016)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>300
,p_column_identifier=>'AK'
,p_column_label=>'Fec Carga'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231654542511017)
,p_db_column_name=>'FEC_ULTIMA_MODIF'
,p_display_order=>310
,p_column_identifier=>'AL'
,p_column_label=>'Fec Ultima Modif'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231730312511018)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>320
,p_column_identifier=>'AM'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231809186511019)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>330
,p_column_identifier=>'AN'
,p_column_label=>'Fecha Fin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51231912382511020)
,p_db_column_name=>'MONTO_MAXIMO'
,p_display_order=>340
,p_column_identifier=>'AO'
,p_column_label=>'Monto Maximo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232019623511021)
,p_db_column_name=>'SALARIO'
,p_display_order=>350
,p_column_identifier=>'AP'
,p_column_label=>'Salario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232124622511022)
,p_db_column_name=>'PORCENTAJE_PARAMETRO'
,p_display_order=>360
,p_column_identifier=>'AQ'
,p_column_label=>'Porcentaje Parametro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232237192511023)
,p_db_column_name=>'PORCENTAJE_DETALLE'
,p_display_order=>370
,p_column_identifier=>'AR'
,p_column_label=>'Porcentaje Detalle'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232365499511024)
,p_db_column_name=>'PORCENTAJE_VARIABLE'
,p_display_order=>380
,p_column_identifier=>'AS'
,p_column_label=>'Porcentaje Variable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232478688511025)
,p_db_column_name=>'CONTROL'
,p_display_order=>390
,p_column_identifier=>'AT'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232547280511026)
,p_db_column_name=>'ROW_ID'
,p_display_order=>400
,p_column_identifier=>'AU'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232653805511027)
,p_db_column_name=>'DESC_EMPLEADO'
,p_display_order=>410
,p_column_identifier=>'AV'
,p_column_label=>'Promotora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232749917511028)
,p_db_column_name=>'EDITAR'
,p_display_order=>420
,p_column_identifier=>'AW'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P224_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232866542511029)
,p_db_column_name=>'BORRAR'
,p_display_order=>430
,p_column_identifier=>'AX'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P224_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51232917150511030)
,p_db_column_name=>'DETALLE'
,p_display_order=>440
,p_column_identifier=>'AY'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P224_DETAIL_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51561222110250204)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>450
,p_column_identifier=>'AZ'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51561385722250205)
,p_db_column_name=>'SUB_CONCEPTO'
,p_display_order=>460
,p_column_identifier=>'BA'
,p_column_label=>'Sub Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51561460745250206)
,p_db_column_name=>'DESC_CONCEPTO'
,p_display_order=>470
,p_column_identifier=>'BB'
,p_column_label=>unistr('Descripci\00F3n Concepto')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51244641683513921)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'512447'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NRO_DEBCRED:COD_CONCEPTO:CONCEPTO:SUB_CONCEPTO:DESC_CONCEPTO:DESC_EMPLEADO:FEC_DEBCRED:PORCENTAJE:MONTO:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51133681041890489)
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
 p_id=>wwv_flow_imp.id(51233408220511035)
,p_plug_name=>'Contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51561846968250210)
,p_plug_name=>'Agregar/Editar Registro'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51563369327250225)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_button_name=>'BTGUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro Cabecera'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51230549983511006)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_button_name=>'BTFILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51561914794250211)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_button_name=>'BTCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64383653081178844)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_button_name=>'BTCONFIRMAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Datos'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50720911276458516)
,p_name=>'P224_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50720847658458515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50721246432458519)
,p_name=>'P224_MES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_prompt=>'Mes'
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
 p_id=>wwv_flow_imp.id(50721306067458520)
,p_name=>'P224_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_prompt=>unistr('A\00F1o')
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
 p_id=>wwv_flow_imp.id(50721413213458521)
,p_name=>'P224_PERIODO_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_prompt=>'Inicio'
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
 p_id=>wwv_flow_imp.id(50721578488458522)
,p_name=>'P224_PERIODO_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
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
 p_id=>wwv_flow_imp.id(50721692970458523)
,p_name=>'P224_COD_ZONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CAPITAL;C,INTERIOR;I'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Todos-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50721774403458524)
,p_name=>'P224_COD_EMPLEADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_FVCOPROM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre, em.cod_empleado ',
'  from rh_empleados em ,personas pe ',
' where em.cod_empresa = :P_COD_EMPRESA',
'   and em.cod_persona = pe.cod_persona ',
'   and nvl(em.activo, ''S'') = ''S'' ',
'order by pe.nombre',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Todos-'
,p_cSize=>30
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(51233068951511031)
,p_name=>'P224_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50721899923458525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51233185013511032)
,p_name=>'P224_DELETE_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50721899923458525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51233290041511033)
,p_name=>'P224_DETAIL_DATA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50721899923458525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51233527703511036)
,p_name=>'P224_SER_LIQUID_AFECTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Ser Liquid Afecto'
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
 p_id=>wwv_flow_imp.id(51233681444511037)
,p_name=>'P224_NRO_LIQUID_AFECTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Nro Liquid Afecto'
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
 p_id=>wwv_flow_imp.id(51233761132511038)
,p_name=>'P224_PORCENTAJE_VARIABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Porc. Variable'
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
 p_id=>wwv_flow_imp.id(51233823501511039)
,p_name=>'P224_PORCENTAJE_DETALLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Porc. Detalle'
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
 p_id=>wwv_flow_imp.id(51233929646511040)
,p_name=>'P224_MONTO_MAXIMO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>unistr('Monto M\00E1ximo')
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
 p_id=>wwv_flow_imp.id(51234027913511041)
,p_name=>'P224_SALARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Salario'
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
 p_id=>wwv_flow_imp.id(51234172337511042)
,p_name=>'P224_OBSERVACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
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
 p_id=>wwv_flow_imp.id(51234217371511043)
,p_name=>'P224_FECHA_INICIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Inicio'
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
 p_id=>wwv_flow_imp.id(51234360458511044)
,p_name=>'P224_FECHA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Fin'
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
 p_id=>wwv_flow_imp.id(51234466822511045)
,p_name=>'P224_COD_USUARIO_CARGA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Cod. Usuario de Carga'
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
 p_id=>wwv_flow_imp.id(51234595840511046)
,p_name=>'P224_FEC_CARGA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>'Fecha de Carga'
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
 p_id=>wwv_flow_imp.id(51234663333511047)
,p_name=>'P224_COD_USUARIO_MODIF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>unistr('Cod. Usuario de Modificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(51234745805511048)
,p_name=>'P224_FEC_ULTIMA_MODIF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(51233408220511035)
,p_prompt=>unistr('Fecha de la \00FAltima modificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(51562224097250214)
,p_name=>'P224_NRO_DEBCRED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Nro.'
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
 p_id=>wwv_flow_imp.id(51562382999250215)
,p_name=>'P224_COD_CONCEPTO_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Cod. Concepto'
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
 p_id=>wwv_flow_imp.id(51562416539250216)
,p_name=>'P224_COD_EMPLEADO_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Promotora'
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
 p_id=>wwv_flow_imp.id(51562575210250217)
,p_name=>'P224_PORCENTAJE_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'% Porc.'
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
 p_id=>wwv_flow_imp.id(51562702550250219)
,p_name=>'P224_CONCEPTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Concepto'
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
 p_id=>wwv_flow_imp.id(51562846777250220)
,p_name=>'P224_SUB_CONCEPTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Sub Concepto'
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
 p_id=>wwv_flow_imp.id(51562915090250221)
,p_name=>'P224_DESC_CONCEPTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Desc. Concepto'
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
 p_id=>wwv_flow_imp.id(51563728029250229)
,p_name=>'P224_MENSAJE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51564712394250239)
,p_name=>'P224_MONTO_ADD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(51561846968250210)
,p_prompt=>'Monto'
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
 p_id=>wwv_flow_imp.id(64381202099178820)
,p_name=>'P224_CONTROL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50721171060458518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51230692830511007)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51230549983511006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64381328978178821)
,p_event_id=>wwv_flow_imp.id(51230692830511007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P224_CONTROL := 1;'
,p_attribute_03=>'P224_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51230792185511008)
,p_event_id=>wwv_flow_imp.id(51230692830511007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50721899923458525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51561528976250207)
,p_name=>'DA_DETAIL_DATA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_DETAIL_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51561664949250208)
,p_event_id=>wwv_flow_imp.id(51561528976250207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_DETAIL_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51561784076250209)
,p_event_id=>wwv_flow_imp.id(51561528976250207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.VER_DETALLE(pseq_id        => :P224_DETAIL_DATA,',
'                         pser_liq_afec  => :P224_SER_LIQUID_AFECTO,',
'                         pnro_liq_afec  => :P224_NRO_LIQUID_AFECTO,',
'                         pporc_variable => :P224_PORCENTAJE_VARIABLE,',
'                         pporc_detalle  => :P224_PORCENTAJE_DETALLE,',
'                         pmonto_maximo  => :P224_MONTO_MAXIMO,',
'                         psalario       => :P224_SALARIO,',
'                         pobsrevacion   => :P224_OBSERVACION,',
'                         pfecha_inicio  => :P224_FECHA_INICIO,',
'                         pfecha_fin     => :P224_FECHA_FIN,',
'                         pusua_carga    => :P224_COD_USUARIO_CARGA,',
'                         pfec_carga     => :P224_FEC_CARGA,',
'                         pusua_modif    => :P224_COD_USUARIO_MODIF,',
'                         pfec_modif     => :P224_FEC_ULTIMA_MODIF);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DETAIL_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P224_DETAIL_DATA'
,p_attribute_03=>'P224_SER_LIQUID_AFECTO,P224_NRO_LIQUID_AFECTO,P224_PORCENTAJE_VARIABLE,P224_PORCENTAJE_DETALLE,P224_MONTO_MAXIMO,P224_SALARIO,P224_OBSERVACION,P224_FECHA_INICIO,P224_FECHA_FIN,P224_FEC_CARGA,P224_FEC_ULTIMA_MODIF,P224_COD_USUARIO_CARGA,P224_COD_USUAR'
||'IO_MODIF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51562069347250212)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51561914794250211)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51563697681250228)
,p_event_id=>wwv_flow_imp.id(51562069347250212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_COD_CONCEPTO_ADD,P224_CONCEPTO,P224_SUB_CONCEPTO,P224_DESC_CONCEPTO,P224_COD_EMPLEADO_ADD,P224_PORCENTAJE_ADD,P224_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51562602883250218)
,p_event_id=>wwv_flow_imp.id(51562069347250212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NVL(MAX(TO_NUMBER(c004)),0) +1',
'      INTO :P224_NRO_DEBCRED',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_FV_COM_PROMOTORAS'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''CALCULAR NRO_DEBCRED''||SQLERRM);',
'END;'))
,p_attribute_03=>'P224_NRO_DEBCRED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51562148309250213)
,p_event_id=>wwv_flow_imp.id(51562069347250212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51561846968250210)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51563009576250222)
,p_name=>'DA_CONCEPTO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_COD_CONCEPTO_ADD'
,p_condition_element=>'P224_COD_CONCEPTO_ADD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51563280257250224)
,p_event_id=>wwv_flow_imp.id(51563009576250222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
''))
,p_attribute_02=>'P224_COD_CONCEPTO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51563144121250223)
,p_event_id=>wwv_flow_imp.id(51563009576250222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VEXISTE NUMBER := 0;',
'BEGIN',
'    SELECT COUNT(1)',
'      INTO VEXISTE',
'      FROM FV_PARAMETRO_PROMOTORAS',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'       AND ID_REGISTRO = :P224_COD_CONCEPTO_ADD;',
'',
'    IF VEXISTE > 0 THEN',
'        :P224_MENSAJE := NULL;',
'',
'        :P224_CONCEPTO := FVCOPROM.BUSCAR_DESC_CONCEPTO(pcod_empresa  => :P_COD_EMPRESA,',
'                                                        pcod_concepto => :P224_COD_CONCEPTO_ADD,',
'                                                        pcontrol      => 1);',
'',
'        :P224_SUB_CONCEPTO := FVCOPROM.BUSCAR_DESC_CONCEPTO(pcod_empresa  => :P_COD_EMPRESA,',
'                                                            pcod_concepto => :P224_COD_CONCEPTO_ADD,',
'                                                            pcontrol      => 2);     ',
'',
'        :P224_DESC_CONCEPTO := FVCOPROM.BUSCAR_DESC_CONCEPTO(pcod_empresa  => :P_COD_EMPRESA,',
'                                                             pcod_concepto => :P224_COD_CONCEPTO_ADD,',
'                                                             pcontrol      => 3);',
'    ELSE',
'',
unistr('        :P224_MENSAJE := ''No se encuentra el concepto. Favor verificar el c\00F3digo ingresado.'';'),
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CONCEPTO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P224_COD_CONCEPTO_ADD'
,p_attribute_03=>'P224_CONCEPTO ,P224_SUB_CONCEPTO ,P224_DESC_CONCEPTO,P224_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51563855313250230)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_MENSAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51563922633250231)
,p_event_id=>wwv_flow_imp.id(51563855313250230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P224_MENSAJE.'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P224_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51564298237250234)
,p_event_id=>wwv_flow_imp.id(51563855313250230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_CONCEPTO,P224_SUB_CONCEPTO,P224_DESC_CONCEPTO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P224_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51564346960250235)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51564572260250237)
,p_event_id=>wwv_flow_imp.id(51564346960250235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51564602682250238)
,p_event_id=>wwv_flow_imp.id(51564346960250235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.CARGAR_DATOS_EDIT(pedit_data    => :P224_EDIT_DATA,',
'                               pcod_concepto => :P224_COD_CONCEPTO_ADD, ',
'                               pcod_empleado => :P224_COD_EMPLEADO_ADD,',
'                               pporc         => :P224_PORCENTAJE_ADD,',
'                               pnro_debcred  => :P224_NRO_DEBCRED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P224_EDIT_DATA'
,p_attribute_03=>'P224_COD_CONCEPTO_ADD,P224_COD_EMPLEADO_ADD,P224_PORCENTAJE_ADD,P224_NRO_DEBCRED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51564466218250236)
,p_event_id=>wwv_flow_imp.id(51564346960250235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51561846968250210)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64381481522178822)
,p_name=>'DA_CALCULAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_COD_EMPLEADO_ADD'
,p_condition_element=>'P224_COD_EMPLEADO_ADD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64381507026178823)
,p_event_id=>wwv_flow_imp.id(64381481522178822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_COD_EMPLEADO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64381609823178824)
,p_event_id=>wwv_flow_imp.id(64381481522178822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.CALCULAR(pcod_empleado  => :P224_COD_EMPLEADO_ADD,',
'                      pcod_empresa   => :P_COD_EMPRESA,',
'                      pcod_concepto  => :P224_COD_CONCEPTO_ADD,',
'                      pperiodo_ini   => :P224_PERIODO_INI,',
'                      pperiodo_fin   => :P224_PERIODO_FIN,',
'                      pmonto_max     => :P224_MONTO_MAXIMO,',
'                      pporc_variable => :P224_PORCENTAJE_VARIABLE,',
'                      pporc_detalle  => :P224_PORCENTAJE_DETALLE,',
'                      pporcentaje    => :P224_PORCENTAJE_ADD,',
'                      pmonto         => :P224_MONTO_ADD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P224_COD_EMPLEADO_ADD,P_COD_EMPRESA,P224_COD_CONCEPTO_ADD,P224_PERIODO_INI,P224_PERIODO_FIN,P224_MONTO_MAXIMO,P224_PORCENTAJE_VARIABLE,P224_PORCENTAJE_DETALLE'
,p_attribute_03=>'P224_PORCENTAJE_ADD,P224_MONTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64381717956178825)
,p_event_id=>wwv_flow_imp.id(64381481522178822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50721899923458525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64381846165178826)
,p_name=>'DA_AGREGAR_EDITAR_COL'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51563369327250225)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64381980345178827)
,p_event_id=>wwv_flow_imp.id(64381846165178826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_PORCENTAJE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382006857178828)
,p_event_id=>wwv_flow_imp.id(64381846165178826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.ADD_COL(pcod_empresa  => :P_COD_EMPRESA,',
'                     pnro          => :P224_NRO_DEBCRED,',
'                     pcod_concepto => :P224_COD_CONCEPTO_ADD,',
'                     pcod_empleado => :P224_COD_EMPLEADO_ADD,',
'                     pporc         => :P224_PORCENTAJE_ADD,',
'                     pmonto        => :P224_MONTO_ADD,',
'                     pcod_usuario  => :P_COD_USUARIO,',
'                     pmes          => :P224_MES,',
'                     panio         => :P224_ANIO,',
'                     pmonto_max    => :P224_MONTO_MAXIMO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P224_NRO_DEBCRED,P224_COD_CONCEPTO_ADD,P224_COD_EMPLEADO_ADD,P224_PORCENTAJE_ADD,P224_MONTO_ADD,P_COD_USUARIO,P224_MES,P224_ANIO,P224_MONTO_MAXIMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64383150309178839)
,p_event_id=>wwv_flow_imp.id(64381846165178826)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.EDIT_COL(pseq_id     => :P224_EDIT_DATA, ',
'                      p_col       => ''COLEC_FV_COM_PROMOTORAS'',',
'                      patributo   => 10,',
'                      pporcentaje => :P224_PORCENTAJE_ADD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P224_EDIT_DATA,P224_PORCENTAJE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P224_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382138834178829)
,p_event_id=>wwv_flow_imp.id(64381846165178826)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51561846968250210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382256180178830)
,p_event_id=>wwv_flow_imp.id(64381846165178826)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50721899923458525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64382306129178831)
,p_name=>'DA_CARGAR_DATOS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51230549983511006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382483898178832)
,p_event_id=>wwv_flow_imp.id(64382306129178831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_MES,P224_ANIO,P224_PERIODO_INI,P224_PERIODO_FIN,P224_COD_ZONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382775497178835)
,p_event_id=>wwv_flow_imp.id(64382306129178831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_FV_COM_PROMOTORAS'');',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382543652178833)
,p_event_id=>wwv_flow_imp.id(64382306129178831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_debug.error(''entra a la accion dinamica'');',
'    FVCOPROM.CARGAR_DATOS_2(pcod_empresa  => :P_COD_EMPRESA,',
'                            pcod_zona     => :P224_COD_ZONA,',
'                            pcod_empleado => NULL,',
'                            pmes          => :P224_MES,',
'                            panio         => :P224_ANIO,',
'                            pperi_ini     => :P224_PERIODO_INI,',
'                            pperi_fin     => :P224_FECHA_FIN);',
'',
'                            apex_debug.error(''sale de la accion dinamica'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P224_COD_ZONA,P224_MES,P224_ANIO,P224_PERIODO_INI,P224_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382607037178834)
,p_event_id=>wwv_flow_imp.id(64382306129178831)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50721899923458525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64382875877178836)
,p_name=>'DA_CALCULAR_P'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_PORCENTAJE_ADD'
,p_condition_element=>'P224_PORCENTAJE_ADD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64382999087178837)
,p_event_id=>wwv_flow_imp.id(64382875877178836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_PORCENTAJE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64383002682178838)
,p_event_id=>wwv_flow_imp.id(64382875877178836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.CALCULAR_P(pseq_id     => :P224_EDIT_DATA,',
'                        pporcentaje => :P224_PORCENTAJE_ADD,',
'                        pmonto      => :P224_MONTO_ADD);',
'                        ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR_P ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P224_EDIT_DATA,P224_PORCENTAJE_ADD'
,p_attribute_03=>'P224_MONTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64383298489178840)
,p_name=>'DA_DELETE_COL'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64383332559178841)
,p_event_id=>wwv_flow_imp.id(64383298489178840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P224_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64383420154178842)
,p_event_id=>wwv_flow_imp.id(64383298489178840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.DELETE_COL(pseq_id   => :P224_DELETE_DATA, ',
'                        p_col     => ''COLEC_FV_COM_PROMOTORAS'',',
'                        patributo => 30);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P224_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64383520618178843)
,p_event_id=>wwv_flow_imp.id(64383298489178840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50721899923458525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69485799344695127)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_PORCENTAJE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69485853285695128)
,p_event_id=>wwv_flow_imp.id(69485799344695127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64383876800178846)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50721074697458517)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P224_COD_MODULO := ''FV'';',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_FV_COM_PROMOTORAS'');',
':P224_MENSAJE := NULL;',
':P224_CONTROL := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64383733917178845)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVCOPROM.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG. 224 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar los datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(64383653081178844)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
