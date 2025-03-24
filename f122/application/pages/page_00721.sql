prompt --application/pages/page_00721
begin
--   Manifest
--     PAGE: 00721
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
 p_id=>721
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de Calidad - PostVta.'
,p_alias=>'CONTROL-DE-CALIDAD-POSTVTA'
,p_step_title=>'Control de Calidad'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' function  estado_css()',
'{  ',
'      $(''td[headers="ESTADO"]'').each(function() {  ',
'        if ( $(this).text() === ''PENDIENTE'' ) {',
'            $(this).css({"background-color":"#f0f3bd"});',
'        }',
'        if ( $(this).text() === ''RECHAZADO'' ) {',
'            $(this).css({"background-color":"#ff5636"});',
'        } ',
'        if ( $(this).text() === ''ESPERA REPUESTO'' ) {',
'            $(this).css({"background-color":"white","background-image":"linear-gradient(45deg, #EEE8A9 0%, #FFF9E6 100%)"});',
'        } ',
'        if ( $(this).text() === ''FINALIZADO'' ) {',
'            $(this).css({"background-color":"white","background-image":"linear-gradient(45deg, #92ceff 0%, #D6F4FF 100%)"}); ',
'        } ',
'        if ( $(this).text() === ''CERRADO'' ) {',
'            $(this).css({"background-color":"white","background-image":"linear-gradient(45deg, #AE699F 0%, #E0C3FC 100%)"}); ',
'        }',
'        if ( $(this).text() === ''VERIFICACION'' ) {',
'            $(this).css({"background-color":"white","background-image":"linear-gradient(45deg, #85FFBD  0%, #e4ffe9 100%)"});',
'        }',
'        });',
'}',
'; ',
'',
'',
'function iniciar(p_serie, p_numero, p_cod_articulo) { ',
'    ',
'     apex.server.process(',
'            ''INICIAR_VERIFICACION'', ',
'            {   x01: p_numero,',
'                x02: p_serie, ',
'                x03: p_cod_articulo',
'            }, ',
'',
'            {',
'            success: function (pData) { ',
'                if (pData.success === true) { ',
'                       var vid = pData.p_id_registro ',
'                       apex.navigation.redirect(pData.url);                        ',
'                        apex.region("reg_grilla") .refresh(); ',
'                }else{',
'                        alert(pData.message); ',
'                    apex.message.clearErrors();',
'                    apex.message.showErrors({',
'                        type: "errors",',
'                        location: "page",',
'                        message: pData.message,',
'                        unsafe: false',
'                    });',
'                     ',
'                }',
'                               ',
'                }, ',
'                error: function(request, status, error) { ',
'                    alert(request+status+ error); ',
'                    apex.message.clearErrors();',
'                    apex.message.showErrors({',
'                        type: "errors",',
'                        location: "page",',
'                        message: request+status+ error,',
'                        unsafe: false',
'                    });',
'                ',
'                } ',
'            })',
'            ',
' };',
'',
'',
'',
'',
' function ir_a(p_pagina) {     ',
'     var purl = ''f?p=&APP_ID.:''+p_pagina+'':&SESSION.::NO:'';',
'        apex.navigation.redirect(purl);      ',
' }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fa-search:hover  {',
'  color: red !important;',
'  cursor: pointer;',
'}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'	',
'#btndet {',
'  background-color: #003a85;',
'  color: yellow;',
'  border: 1px solid #003a85; ',
'  border-radius: 4px;',
'  font-weight: 400;',
'}',
'',
'#btndet:hover{',
'  background-color: #fffbcb; ',
'  color: #003a85;',
'  border: 1px solid darkblue; ',
'  border-radius: 4px;',
'  font-weight: 400;',
'  cursor: pointer;',
'}',
'',
'',
'',
'',
'',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
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
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240705103633'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(269573998245862726)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'PARAM'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(269574004295862727)
,p_plug_name=>'GRILLA'
,p_region_name=>'reg_grilla'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DECODE(ID_REGISTRO,''0'','''',''<i class="fa fa-search" style="color:blue""></i> '')  VER, --- onclick="ir_a(''''''||id_registro||'''''')',
'       SER_COMPROBANTE,  ',
'       NRO_COMPROBANTE,',
'       GARANTIA,',
'       COD_ARTICULO,',
'       DESCRIPCION,',
'       DECODE(ESTADO,''NN'',',
'                     ''<button  type="button"  id="btndet" onclick="iniciar(''''''||SER_COMPROBANTE||'''''',''''''||NRO_COMPROBANTE||'''''',''''''||COD_ARTICULO||'''''')" > INICIAR </button>''   ,',
'                    ESTADO) AS  ESTADO,',
'       ID_REGISTRO     ,',
'       FECHA_INGRESO  ,',
'       DIAS_INGRESO ,',
'       FECHA_VERIFICA,',
'       DIAS_VERIFICACION,',
'       FECHA_CIERRE,',
'       DESTINO  ',
'  from VW_CONTROL_CALIDAD',
'  where ( :P721_COD_ARTICULO IS NULL OR COD_ARTICULO = :P721_COD_ARTICULO)',
'  AND ( :P721_FECHA_INI IS NULL OR :P721_FECHA_INI <= FECHA_INGRESO)  ',
'  AND ( :P721_FECHA_FIN IS NULL OR :P721_FECHA_FIN >= FECHA_INGRESO)',
'  AND ( :P721_ESTADOS IS NULL OR  :P721_ESTADOS = ESTADO OR (:P721_ESTADOS=''P'' AND ID_REGISTRO=''0'' ))',
'  AND ( :P721_GARANTIA IS NULL OR GARANTIA = :P721_GARANTIA)',
'  AND ( :P721_NRO_OT IS NULL OR NRO_COMPROBANTE = :P721_NRO_OT)',
'  ORDER BY NVL(ID_REGISTRO,0)DESC',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P721_COD_ARTICULO,P721_ESTADOS,P721_FECHA_INI,P721_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'GRILLA'
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
 p_id=>wwv_flow_imp.id(269574137423862728)
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
,p_internal_uid=>269574137423862728
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574776676862734)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Cod.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574909630862736)
,p_db_column_name=>'VER'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'+'
,p_column_link=>'f?p=&APP_ID.:722:&SESSION.::&DEBUG.:RP,721:P722_ID_REGISTRO:#ID_REGISTRO#'
,p_column_linktext=>'#VER#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574286279862729)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574368966862730)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00BA OT')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574411082862731)
,p_db_column_name=>'GARANTIA'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574560257862732)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Codigo Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574678378862733)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269574826771862735)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'ESTADO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269575514774862742)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269575810242862745)
,p_db_column_name=>'FECHA_VERIFICA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Verifica'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269575955956862746)
,p_db_column_name=>'DIAS_INGRESO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Dias Ingreso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269576007042862747)
,p_db_column_name=>'DIAS_VERIFICACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Dias Verif.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269576156171862748)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269576243727862749)
,p_db_column_name=>'DESTINO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Destino'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(273665072927352251)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2736651'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VER:ID_REGISTRO:ESTADO:COD_ARTICULO:DESCRIPCION:SER_COMPROBANTE:NRO_COMPROBANTE:GARANTIA:FECHA_INGRESO:DIAS_INGRESO:DIAS_VERIFICACION:FECHA_VERIFICA:FECHA_CIERRE:DESTINO:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269575058201862737)
,p_name=>'P721_ID_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269575113602862738)
,p_name=>'P721_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'ARTICULO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct COD_ARTICULO ||'' -'' ||DESCRIPCION AS ARTICULO,',
'    COD_ARTICULO AS CODIGO',
'from VW_CONTROL_CALIDAD ',
'ORDER BY 1'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269575212488862739)
,p_name=>'P721_ESTADOS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTES;P,EN VERIFICACION;VERIFICACION,ESPERA REPUESTOS;ESPERA REPUESTO,FINALIZADO;FINALIZADO,CERRADO;CERRADO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269575353062862740)
,p_name=>'P721_FECHA_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'FECHA INGRESO DESDE'
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
 p_id=>wwv_flow_imp.id(269575407575862741)
,p_name=>'P721_FECHA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'FECHA INGRESO HASTA'
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
 p_id=>wwv_flow_imp.id(274729602487854110)
,p_name=>'P721_FEC_VERIFIC_INI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'FECHA VERIFICACION DESDE'
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
 p_id=>wwv_flow_imp.id(274729754820854111)
,p_name=>'P721_FEC_VERIFIC_FIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'FECHA VERIFICACION HASTA'
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
 p_id=>wwv_flow_imp.id(274729824403854112)
,p_name=>'P721_GARANTIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>'GARANTIA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(274729984993854113)
,p_name=>'P721_NRO_OT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(269573998245862726)
,p_prompt=>unistr('N\00BA OT')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269575669365862743)
,p_name=>'DA_REFRESH_GRILLA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P721_COD_ARTICULO,P721_ESTADOS,P721_FECHA_INI,P721_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269575796418862744)
,p_event_id=>wwv_flow_imp.id(269575669365862743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(269574004295862727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(273702220438399503)
,p_name=>'DA_AFREF'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(269574004295862727)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273702382733399504)
,p_event_id=>wwv_flow_imp.id(273702220438399503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'estado_css();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277122284052416407)
,p_name=>'da_refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(269574004295862727)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277122339426416408)
,p_event_id=>wwv_flow_imp.id(277122284052416407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(269574004295862727)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(273702113391399502)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIAR_VERIFICACION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50);',
'    v_ser_comprobante VARCHAR2(50);',
'    v_codigo_articulo VARCHAR2(50);',
'    v_id_registro     VARCHAR2(50) ;',
'    v_msj             VARCHAR2(500)  ;',
'    v_url             VARCHAR2(500)  ;',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_ser_comprobante := apex_application.g_x02;',
'    v_codigo_articulo := apex_application.g_x03; ',
'   ',
'       pkg_pvcalidad.crear_registro(pi_cod_empresa => :P_COD_EMPRESA,',
'                                       pi_serie => v_ser_comprobante,',
'                                       pi_numero => v_nro_comprobante,',
'                                       pi_cod_articulo => v_codigo_articulo,',
'                                       po_id_registro => v_id_registro,',
'                                       po_msj => v_msj); ',
'',
'',
' ',
'    IF v_id_registro IS NOT NULL AND v_msj=''200'' THEN ',
'        begin            	 ',
'            SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 722,',
'            p_items  => ''P722_ID_REGISTRO'',',
'            p_values => v_id_registro) ',
'            INTO v_URL',
'            FROM DUAL;',
'',
'        exception',
'            when others then',
'                null;',
'        end;',
'          apex_json.open_object;',
'          apex_json.write(''success'', TRUE);',
'          apex_json.write(''p_id_registro'', v_id_registro );',
'          apex_json.write(''url'', v_URL );',
'          apex_json.close_object;',
'',
'    ELSE ',
'        apex_json.open_object;',
'        apex_json.write(''success'', FALSE);',
'        apex_json.write(''message'', v_msj); ',
'        apex_json.close_object;',
'    END IF;',
'          ',
'EXCEPTION',
'  WHEN OTHERS THEN ',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE); ',
'    apex_json.write(''message'', sqlerrm); ',
'    apex_json.close_object;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
