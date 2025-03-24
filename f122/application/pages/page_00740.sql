prompt --application/pages/page_00740
begin
--   Manifest
--     PAGE: 00740
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
 p_id=>740
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe de Viaticos'
,p_alias=>'INFORME-DE-VIATICOS'
,p_step_title=>'Informe de Viaticos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only, .oj-text-field-input {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'.t-Form-label{color: #003a85 !important;}',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'}  ',
' ',
' ',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #16488a  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #16488a  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #16488a  !important;',
'	  color:yellow !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240405144252'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(284807844667469905)
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
 p_id=>wwv_flow_imp.id(617791926034494511)
,p_plug_name=>'informe'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001  SER_VIATICO,',
'      C002  NRO_VIATICO,',
'      C003  estado_viatico,',
'      C004  fecha_viatico, ',
'      C005  solicitante,',
'      C006  fec_autoriza_viatico,',
'      C007  fec_entrega_viatico,',
'      C008  ser_acredita,',
'      C009  nro_acredita,',
'      C010  fec_acredita,',
'      N001   total_Acredita,',
'      C012  asiento_acredita     , ',
'      C013  ASIENTO_COMPRAS,',
'      C014  CONCEPTO_COMPRAS,',
'      C015  cod_proveedor,',
'      C016  prov,',
'      C017  RUC,',
'      C018  nro_factura,',
'      C019  IND_FACT_ELECT,',
'      C020  fecha,',
'      C021  NRO_TIMBRADO,',
'      C022  VTO_TIMBRADO,',
'      N002  MONTO, ',
'      C024  concepto,',
'      C025  estado, ',
'      C026  tip_ref,',
'      C027  ser_ref,',
'      C028  nro_ref,',
'      C029  ID_RENDICION ',
'  FROM apex_collections',
' WHERE collection_name = ''INFVIATICOS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'informe'
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
 p_id=>wwv_flow_imp.id(617792079018494512)
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
,p_internal_uid=>617792079018494512
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284812108606469948)
,p_db_column_name=>'NRO_VIATICO'
,p_display_order=>10
,p_column_identifier=>'AJ'
,p_column_label=>'Numero'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_NRO_COMPROBANTE,P33_SER_COMPROBANTE:#NRO_VIATICO#,#SER_VIATICO#'
,p_column_linktext=>'#NRO_VIATICO#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617792122175494513)
,p_db_column_name=>'SER_VIATICO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617792518773494517)
,p_db_column_name=>'SOLICITANTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Solicitante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617792676331494518)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617792733582494519)
,p_db_column_name=>'PROV'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Prov'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617792873753494520)
,p_db_column_name=>'RUC'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617792996577494521)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Factura Rendicion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617793047393494522)
,p_db_column_name=>'IND_FACT_ELECT'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Ind Fact Elect'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617793548076494527)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617793686754494528)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Estado Rendicion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617794197577494533)
,p_db_column_name=>'ESTADO_VIATICO'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Estado Viatico'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617794758425494539)
,p_db_column_name=>'TIP_REF'
,p_display_order=>130
,p_column_identifier=>'AA'
,p_column_label=>'Tip Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617794865971494540)
,p_db_column_name=>'SER_REF'
,p_display_order=>140
,p_column_identifier=>'AB'
,p_column_label=>'Ser Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617795511660494547)
,p_db_column_name=>'ASIENTO_ACREDITA'
,p_display_order=>160
,p_column_identifier=>'AI'
,p_column_label=>'Asiento Acredita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284812218722469949)
,p_db_column_name=>'FECHA_VIATICO'
,p_display_order=>180
,p_column_identifier=>'AK'
,p_column_label=>'Fecha Viatico'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284812322977469950)
,p_db_column_name=>'FEC_AUTORIZA_VIATICO'
,p_display_order=>190
,p_column_identifier=>'AL'
,p_column_label=>'Fecha Autoriza'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294138562755972101)
,p_db_column_name=>'FEC_ENTREGA_VIATICO'
,p_display_order=>200
,p_column_identifier=>'AM'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617795128168494543)
,p_db_column_name=>'SER_ACREDITA'
,p_display_order=>210
,p_column_identifier=>'AE'
,p_column_label=>'Serie Acredita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294138682660972102)
,p_db_column_name=>'NRO_ACREDITA'
,p_display_order=>220
,p_column_identifier=>'AN'
,p_column_label=>'Numero Acredita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294138791052972103)
,p_db_column_name=>'FEC_ACREDITA'
,p_display_order=>230
,p_column_identifier=>'AO'
,p_column_label=>'Fecha Acredita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294139089270972106)
,p_db_column_name=>'FECHA'
,p_display_order=>260
,p_column_identifier=>'AR'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294139138074972107)
,p_db_column_name=>'NRO_TIMBRADO'
,p_display_order=>270
,p_column_identifier=>'AS'
,p_column_label=>'Nro Timbrado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294139216465972108)
,p_db_column_name=>'VTO_TIMBRADO'
,p_display_order=>280
,p_column_identifier=>'AT'
,p_column_label=>'Vto Timbrado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294139416753972110)
,p_db_column_name=>'NRO_REF'
,p_display_order=>300
,p_column_identifier=>'AV'
,p_column_label=>'Nro Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(294139582293972111)
,p_db_column_name=>'ID_RENDICION'
,p_display_order=>310
,p_column_identifier=>'AW'
,p_column_label=>'Id Rendicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617795856453494550)
,p_db_column_name=>'ASIENTO_COMPRAS'
,p_display_order=>320
,p_column_identifier=>'AX'
,p_column_label=>'Asiento Compras'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(626549776388954301)
,p_db_column_name=>'CONCEPTO_COMPRAS'
,p_display_order=>330
,p_column_identifier=>'AY'
,p_column_label=>'Concepto Compras'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(626549845840954302)
,p_db_column_name=>'TOTAL_ACREDITA'
,p_display_order=>340
,p_column_identifier=>'AZ'
,p_column_label=>'Total Acredita'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(626549965559954303)
,p_db_column_name=>'MONTO'
,p_display_order=>350
,p_column_identifier=>'BA'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(618239199168746125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6182392'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_VIATICO:SER_VIATICO:NRO_VIATICO:ESTADO_VIATICO:SOLICITANTE:FEC_AUTORIZA_VIATICO:FEC_ACREDITA:SER_ACREDITA:NRO_ACREDITA:TOTAL_ACREDITA:ASIENTO_ACREDITA:NRO_FACTURA:FECHA:PROV:RUC:CONCEPTO:MONTO:ESTADO:TIP_REF:SER_REF:NRO_REF:CONCEPTO_COMPRAS:ASI'
||'ENTO_COMPRAS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284809041257469917)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_button_name=>'FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(284808034505469907)
,p_name=>'P740_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_prompt=>'Fecha desde:'
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
 p_id=>wwv_flow_imp.id(284808134214469908)
,p_name=>'P740_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_prompt=>'Fecha hasta:'
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
 p_id=>wwv_flow_imp.id(284808221635469909)
,p_name=>'P740_PERSONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_prompt=>'Colaborador:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE, P.COD_PERSONA',
'FROM RH_EMPLEADOS E, ',
'     PERSONAS P',
'WHERE E.COD_EMPRESA= :P_COD_EMPRESA',
'AND E.COD_PERSONA=P.COD_PERSONA',
'AND exists (SELECT distinct ''1''',
'FROM CP_VALES V',
'WHERE V.COD_EMPRESA = :P_COD_EMPRESA',
'AND   V.COD_PERSONA = E.COD_PERSONA',
') ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(284808512850469912)
,p_name=>'P740_NEW_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(284808610422469913)
,p_name=>'P740_NEW_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(284808731146469914)
,p_name=>'P740_NEW_1_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286147972401328944)
,p_name=>'P740_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SOLICITADO;SOLICITADO,APROBADO;APROBADO,RECHAZADO;RECHAZADO,ENTREGADO;ENTREGADO,RENDIDO;RENDIDO,PROCESADO;PROCESADO,FINALIZADO;FINALIZADO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(626550018205954304)
,p_name=>'P740_SECTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(284807844667469905)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT TIPO DESCTIPO, TIPO',
'from cp_vales',
'ORDER BY TIPO'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(617791636252494508)
,p_name=>'da_filtrar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284809041257469917)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294139761969972113)
,p_event_id=>wwv_flow_imp.id(617791636252494508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(617791767704494509)
,p_event_id=>wwv_flow_imp.id(617791636252494508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'cpsvales.cargar_reporte_740(p_cod_empresa => :P_COD_EMPRESA,',
'                                  p_estado => :P740_ESTADO,',
'                                  p_persona => :P740_PERSONA,',
'                                  p_fecha_ini =>  :P740_FECHA_INI ,',
'                                  p_fecha_fin =>  :P740_FECHA_FIN ,',
'                                  P_SECTOR => :P740_SECTOR);',
'EXCEPTION',
'WHEN OTHERS THEN',
'     raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P740_FECHA_INI,P740_FECHA_FIN,P740_PERSONA,P740_ESTADO,P740_SECTOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(617795658838494548)
,p_event_id=>wwv_flow_imp.id(617791636252494508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(617791926034494511)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294139833153972114)
,p_event_id=>wwv_flow_imp.id(617791636252494508)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(294139655519972112)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_init'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''INFVIATICOS'');',
'        :P740_FECHA_INI  :=NULL;',
'        :P740_FECHA_FIN  :=NULL;',
'        :P740_ESTADO  :=NULL;',
'        :P740_PERSONA :=NULL;',
'        :P740_SECTOR :=NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
