prompt --application/pages/page_00371
begin
--   Manifest
--     PAGE: 00371
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
 p_id=>371
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pedido de Reposicion de Repuestos - STREPREP'
,p_alias=>'PEDIDO-REPOSICION-REPUESTOS'
,p_step_title=>'Pedido de Reposicion de Repuestos - STREPREP'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: darkblue; }',
'.a-IRR-header {    background-color: #fff8b7;',
'background-image: linear-gradient(180deg, #fff8b7 0%, #FFFB7D 100%);',
' ',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241021104710'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109196297870222506)
,p_plug_name=>'PEDIDO DE REPOSICION DE REPUESTOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110648189578937043)
,p_plug_name=>'NEW'
,p_parent_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107310898812152611)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>130
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'        COLL.C001, --COD_EMPRESA',
'        COLL.C002, --NRO_COMPROBANTE',
'        COLL.C003, --SER_COMPROBANTE',
'        COLL.C004, --TIP_COMPROBANTE',
'        (select cod_articulo||''-''||descripcion',
'        from st_articulos ',
'        where cod_empresa = :P_COD_EMPRESA ',
'        and ( estado is null or estado <> ''I'' )',
'        and cod_articulo =COLL.C005',
'        AND COD_RUBRO=''RE'') Articulo,',
'        COLL.C005, --COD_ART',
'        COLL.C006, --CANTIDAD',
'      NULL ELIMINAR',
'  FROM APEX_COLLECTIONS COLL',
' WHERE COLLECTION_NAME = ''COL_DETA_STREPREP'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle'
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
 p_id=>wwv_flow_imp.id(110644931912937011)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P371_SEQ_ID'',#SEQ_ID#);'
,p_detail_link_text=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_owner=>'FPONCE'
,p_internal_uid=>110644931912937011
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645072262937012)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645155662937013)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645266718937014)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645301432937015)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645429500937016)
,p_db_column_name=>'C004'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645565682937017)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645618974937018)
,p_db_column_name=>'C006'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110645752921937019)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P371_SEQ_BORRAR'',#SEQ_ID#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111100128649681603)
,p_db_column_name=>'ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(110684438013982165)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1106845'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ARTICULO:C006:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109198481014222528)
,p_plug_name=>'Cabecera1'
,p_parent_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110353137145802416)
,p_plug_name=>'Cabecera2'
,p_parent_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110646208787937024)
,p_plug_name=>'Editar detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110354894119802433)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_button_name=>'BTN_BUSCAR'
,p_button_static_id=>'buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110646349553937025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110646208787937024)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110646472821937026)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(110646208787937024)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110353622308802421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107310898812152611)
,p_button_name=>'BTN_AGREGA'
,p_button_static_id=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124046549438908724)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:418:&SESSION.::&DEBUG.:RP,418::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111101078707681612)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_button_name=>'BTN_GUARDAR_CABECERA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(365789038000397830)
,p_branch_name=>'Go To Page 371'
,p_branch_action=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:CR,371::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(110646349553937025)
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'BTN_GUARDAR_CABECERA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109196425397222508)
,p_name=>'P371_SUCURSAL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_prompt=>'Sucursal Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||''-''||descripcion D, cod_sucursal R',
'from sucursales ',
'where cod_empresa = :P_cod_empresa ',
'and :P_COD_SUCURSAL <> cod_sucursal',
'order by descripcion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109196564206222509)
,p_name=>'P371_SUCURSAL_ENTRADA'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_item_default=>':P_COD_SUCURSAL'
,p_prompt=>'Sucursal Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||''-''||descripcion d, cod_sucursal r ',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'----and cod_sucursal  in (:P_COD_SUCURSAL) ',
'order by descripcion'))
,p_cSize=>30
,p_tag_css_classes=>'SUCURSAL_ENTRADA'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109196674400222510)
,p_name=>'P371_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE||'' - ''||DESCRIPCION D, ',
'       TIP_COMPROBANTE R',
'  FROM TIPOS_COMPROBANTES',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
' ORDER BY DESCRIPCION',
''))
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
 p_id=>wwv_flow_imp.id(109196885253222512)
,p_name=>'P371_NRO_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_prompt=>'Numero'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  max( nvl(nro_comprobante, 0 )  )+ 1',
'      from VT_PEDIDOS_CABECERA_REP',
'     where cod_empresa = :P_COD_EMPRESA;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109196953201222513)
,p_name=>'P371_SER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(109197073980222514)
,p_name=>'P371_FECHA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_prompt=>'Fecha'
,p_format_mask=>'dd/mm/yyyy'
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
 p_id=>wwv_flow_imp.id(109197150885222515)
,p_name=>'P371_OBSERVACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109197233662222516)
,p_name=>'P371_ANULADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'u-pullRight'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md:margin-left-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109197342058222517)
,p_name=>'P371_MOTIVO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D , cod_motivo_anu R',
'from VT_MOTIVO_ANULACION ',
'where cod_empresa = :P_COD_EMPRESA',
'and tip_motivo=''7'' ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(109197424622222518)
,p_name=>'P371_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
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
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(109197535199222519)
,p_name=>'P371_FECHA_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(110352574855802410)
,p_name=>'P371_COD_USUARIO_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110352689169802411)
,p_name=>'P371_FECHA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110352816961802413)
,p_name=>'P371_TRASLADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>'Traslado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110352907761802414)
,p_name=>'P371_HORA_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110353137145802416)
,p_prompt=>'Hora Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110353218452802417)
,p_name=>'P371_DERIVADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110353390375802418)
,p_name=>'P371_IND_ENVIAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110353813502802423)
,p_name=>'P371_REPORT_SHOW'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110355809475802443)
,p_name=>'P371_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110646208787937024)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||''-''||descripcion D, cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'and ( estado is null or estado <> ''I'' )',
'AND COD_RUBRO=''RE'' order by descripcion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110356043748802445)
,p_name=>'P371_CANT_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110646208787937024)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110646022204937022)
,p_name=>'P371_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107310898812152611)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111100200083681604)
,p_name=>'P371_SEQ_BORRAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107310898812152611)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111101433726681616)
,p_name=>'P371_IND_INS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111102497403681626)
,p_name=>'P371_UPDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(107310898812152611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111102995861681631)
,p_name=>'P371_S_ANULADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111103896010681640)
,p_name=>'P371_ALERT_MOTIVO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111104439961681646)
,p_name=>'P371_EXIST_CAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107310898812152611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111519304258339601)
,p_name=>'P371_TOT_CANTIDAD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111519674516339604)
,p_name=>'P371_COD_VENDEDOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109196297870222506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111520299152339610)
,p_name=>'P371_REMI_COMPR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(109198481014222528)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832978488401065749)
,p_name=>'P371_PARAM_SER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832978502024065750)
,p_name=>'P371_PARAM_NRO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110648189578937043)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  max( nvl(nro_comprobante, 0 )  )+ 1',
'      from VT_PEDIDOS_CABECERA_REP',
'     where cod_empresa = :P_COD_EMPRESA;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(365788934014397829)
,p_validation_name=>'VA_SAVE'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'IF :P371_SUCURSAL IS NULL THEN',
'    RETURN ''Debe seleccionar la sucursal de Salida'';',
'',
'elsif :P371_SUCURSAL_ENTRADA IS NULL THEN',
'    RETURN ''Debe seleccionar la sucursal de Entrada'';',
'',
'elsif nvl(:P371_ANULADO,''N'')=''S'' and :P371_MOTIVO is null then',
'    RETURN ''Debe seleccionar el Motivo de Anulacion'';',
'',
'elsif :P371_SUCURSAL_ENTRADA = :P371_SUCURSAL  THEN',
'    RETURN ''Las sucursales de Enrtada y Salida deben ser distintas.'';',
'else',
'    declare',
'        vreg number;',
'    begin',
'         select nvl(count(*),0)',
'         into vreg',
'          from APEX_COLLECTIONS',
'         where collection_name = ''COL_DETA_STREPREP'';',
'         if vreg = 0 then',
'                return ''Debe cargar al menos un detalle.'';',
'         end if;',
'    exception',
'        when others then',
'            null;',
'    end;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'BTN_GUARDAR_CABECERA'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_when_button_pressed=>wwv_flow_imp.id(111101078707681612)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109198125958222525)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109198343894222527)
,p_event_id=>wwv_flow_imp.id(109198125958222525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109198658786222530)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110351745906802402)
,p_event_id=>wwv_flow_imp.id(109198658786222530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520141403339609)
,p_event_id=>wwv_flow_imp.id(109198658786222530)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P371_NRO_COMPROBANTE IS NOT NULL THEN',
'  DECLARE',
'    vnro VARCHAR2(1) := ''N'';',
'  BEGIN',
'    Select ''S''',
'      into vnro',
'      from st_remision_cab',
'     where cod_empresa = :P_cod_empresa',
'       and tip_comprobante = :P371_COMPROBANTE',
'       and ser_comprobante = :P371_SER',
'       and nro_comprobante = :P371_NRO_COMPROBANTE;',
'       :P371_REMI_COMPR:=1;',
'  EXCEPTION when others then',
'    null;',
'  END;',
'END IF;'))
,p_attribute_02=>'P371_COMPROBANTE,P371_SER,P371_NRO_COMPROBANTE'
,p_attribute_03=>'P371_REMI_COMPR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520575591339613)
,p_event_id=>wwv_flow_imp.id(109198658786222530)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Ya existe el n\00FAmero de Remisi\00F3n. Ingrese otro n\00FAmero de movimiento.')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P371_REMI_COMPR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109198790398222531)
,p_event_id=>wwv_flow_imp.id(109198658786222530)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520606143339614)
,p_event_id=>wwv_flow_imp.id(109198658786222530)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_REMI_COMPR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109198947553222533)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_SER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109199025661222534)
,p_event_id=>wwv_flow_imp.id(109198947553222533)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_SER'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109199116623222535)
,p_name=>'New_3'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109199228264222536)
,p_event_id=>wwv_flow_imp.id(109199116623222535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109199381925222537)
,p_name=>'New_4'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_SUCURSAL_ENTRADA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109199423325222538)
,p_event_id=>wwv_flow_imp.id(109199381925222537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_SUCURSAL_ENTRADA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109199519504222539)
,p_name=>'New_5'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109199611485222540)
,p_event_id=>wwv_flow_imp.id(109199519504222539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_FECHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109199735362222541)
,p_name=>'New_6'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_OBSERVACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109199862687222542)
,p_event_id=>wwv_flow_imp.id(109199735362222541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109199986850222543)
,p_name=>'New_7'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_S_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109200081055222544)
,p_event_id=>wwv_flow_imp.id(109199986850222543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_S_ANULADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109200128038222545)
,p_name=>'New_8'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_COD_USUARIO_ALTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109200267660222546)
,p_event_id=>wwv_flow_imp.id(109200128038222545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_COD_USUARIO_ALTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109200360626222547)
,p_name=>'New_9'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_FECHA_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109200446507222548)
,p_event_id=>wwv_flow_imp.id(109200360626222547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_FECHA_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109200594564222549)
,p_name=>'New_10'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109200636066222550)
,p_event_id=>wwv_flow_imp.id(109200594564222549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110353499123802419)
,p_name=>'New_11'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110353546116802420)
,p_event_id=>wwv_flow_imp.id(110353499123802419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110353903413802424)
,p_name=>'New_12'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_REPORT_SHOW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110354077189802425)
,p_event_id=>wwv_flow_imp.id(110353903413802424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_REPORT_SHOW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110354195616802426)
,p_name=>'New_13'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110353622308802421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110646126079937023)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_SEQ_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110646580435937027)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110646349553937025)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110646614969937028)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110646472821937026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(365789230135397832)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110646790392937029)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110646208787937024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110646826901937030)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_COD_ARTICULO,P371_CANT_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648497039937046)
,p_event_id=>wwv_flow_imp.id(110354195616802426)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_CANT_DET,P371_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110354457838802429)
,p_name=>'New_14'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891528078955316922)
,p_event_id=>wwv_flow_imp.id(110354457838802429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P371_SUCURSAL_ENTRADA").readOnly = true; ',
'document.getElementById("P371_SUCURSAL_ENTRADA_lov_btn").disabled = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110354546694802430)
,p_event_id=>wwv_flow_imp.id(110354457838802429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110354925339802434)
,p_name=>'New_15'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110354894119802433)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111103248611681634)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_S_ANULADO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110355024520802435)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NRO_COMPROBANTE, COD_SUCURSAL, COD_SUCURSAL_ENT, TIP_COMPROBANTE, SER_COMPROBANTE, FEC_COMPROBANTE, OBSERVACION, COD_USUARIO, FEC_ALTA, ANULADO,TRASLADO,HORA_ALTA, COD_MOTIVO_ANU',
'    INTO :P371_NRO_COMPROBANTE, :P371_SUCURSAL, :P371_SUCURSAL_ENTRADA, :P371_COMPROBANTE, :P371_SER, :P371_FECHA, :P371_OBSERVACION, :P371_COD_USUARIO_ALTA, :P371_FECHA_ALTA, :P371_ANULADO, :P371_TRASLADO, :P371_HORA_ALTA, :P371_MOTIVO',
'    FROM INV.VT_PEDIDOS_CABECERA_REP',
'    WHERE (NRO_COMPROBANTE = :P371_NRO_COMPROBANTE OR :P371_NRO_COMPROBANTE IS NULL)',
'    AND (SER_COMPROBANTE = :P371_SER OR :P371_SER IS NULL)',
'    AND (TIP_COMPROBANTE = :P371_COMPROBANTE OR :P371_COMPROBANTE IS NULL) ;',
'    IF :P371_ANULADO = ''S'' THEN',
'        :P371_S_ANULADO := ''S'';',
'    END IF;',
'    IF :P371_ANULADO = ''S'' AND :P371_MOTIVO IS NOT NULL THEN',
'        :P371_ALERT_MOTIVO := 0;',
'    ELSE ',
'        :P371_ALERT_MOTIVO := 1;',
'    END IF;',
'    exception when others then null;',
'END;'))
,p_attribute_02=>'P371_COMPROBANTE,P371_SER,P371_NRO_COMPROBANTE'
,p_attribute_03=>'P371_SUCURSAL,P371_OBSERVACION,P371_COD_USUARIO_ALTA,P371_TRASLADO,P371_SUCURSAL_ENTRADA,P371_S_ANULADO,P371_FECHA_ALTA,P371_HORA_ALTA,P371_USUARIO,P371_COMPROBANTE,P371_FECHA_ESTADO,P371_DERIVADO,P371_SER,P371_MOTIVO,P371_IND_ENVIAR,P371_NRO_COMPROB'
||'ANTE,P371_FECHA,P371_ANULADO,P371_ALERT_MOTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111519964690339607)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' INV.STREPREP.PR_CARGAR_DETALLE(PI_COD_EMPRESA  => :P_COD_EMPRESA,',
'                               PI_NRO_COMPROBANTE => :P371_NRO_COMPROBANTE,',
'                               PI_SER_COMPROBANTE => :P371_SER,',
'                               PI_TIP_COMPROBANTE => :P371_COMPROBANTE);',
'END;'))
,p_attribute_02=>'P371_NRO_COMPROBANTE,P371_SER,P371_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520766559339615)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P371_NRO_COMPROBANTE IS NOT NULL THEN',
'  DECLARE',
'    vnro VARCHAR2(1) := ''N'';',
'  BEGIN',
'    Select ''S''',
'      into vnro',
'      from st_remision_cab',
'     where cod_empresa = :P_cod_empresa',
'       and tip_comprobante = :P371_COMPROBANTE',
'       and ser_comprobante = :P371_SER',
'       and nro_comprobante = :P371_NRO_COMPROBANTE;',
'       :P371_REMI_COMPR:=1;',
'  EXCEPTION when others then',
'    null;',
'  END;',
'END IF;'))
,p_attribute_02=>'P371_COMPROBANTE,P371_SER,P371_NRO_COMPROBANTE'
,p_attribute_03=>'P371_REMI_COMPR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520841617339616)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_REMI_COMPR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110355219546802437)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109198481014222528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110355307651802438)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110353137145802416)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520053004339608)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111101943399681621)
,p_event_id=>wwv_flow_imp.id(110354925339802434)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_IND_INS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110355618262802441)
,p_name=>'New_16'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_INS_EDIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110355735174802442)
,p_event_id=>wwv_flow_imp.id(110355618262802441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_INS_EDIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110356108303802446)
,p_name=>'New_17'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110356251702802447)
,p_event_id=>wwv_flow_imp.id(110356108303802446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520956337339617)
,p_event_id=>wwv_flow_imp.id(110356108303802446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'	vexiste varchar2(400);',
'begin',
'	select f_bloquea_inventario(:P371_cod_articulo,''101'')',
'	into vexiste',
'	from dual;',
'	if VEXISTE=''S'' THEN',
'          raise_application_error(-20000,  ''El repuesto ''||:P371_cod_articulo||'' esta de inventario '');',
'	END IF;',
'	exception when others then null;',
'end;',
'	',
'	declare ',
'	vexiste varchar2(400);',
'begin',
'    select f_bloquea_inventario(:P371_cod_articulo,''1015'')',
'        into vexiste',
'    from dual;',
'    if VEXISTE=''S'' THEN',
'        raise_application_error(-20000,  ''El repuesto ''||:P371_cod_articulo||'' esta de inventario ''); ',
'    END IF;',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P371_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110356304151802448)
,p_name=>'New_18'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_CANT_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110356477840802449)
,p_event_id=>wwv_flow_imp.id(110356304151802448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_CANT_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110647149600937033)
,p_name=>'New_19'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110646472821937026)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111521751929339625)
,p_event_id=>wwv_flow_imp.id(110647149600937033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P371_CANT_DET,0) > 0 THEN',
'        IF  :P371_SUCURSAL = ''190'' then',
'',
'        	declare',
'        		vcantidad number;',
'        	begin',
'                Select nvl(sum(cant_dispon),0)',
'                    into vcantidad ',
'                from st_existencia_art',
'                where cod_empresa = :p_cod_empresa',
'                and cod_sucursal = :P371_SUCURSAL',
'                and cod_articulo = :p371_cod_articulo',
'                and nvl(cant_dispon ,0) > 0;',
'                if (vcantidad - nvl(:P371_CANT_DET,0))<0 then',
'                    raise_application_error(-20000, ''Cantidad Disponible menor a la cantidad Solicitada.''    	);',
'                end if;	',
'        	exception when others then',
'                 raise_application_error(-20000, SQLERRM);',
'        	end;',
'        end if;',
'',
'',
'        BEGIN',
'        STREPREP.INSERTAR_COLECCION(PI_COD_EMPRESA       => :P_COD_EMPRESA,',
'            					    PI_NRO_COMPROBANTE      => :P371_NRO_COMPROBANTE,',
'            					    PI_SER_COMPROBANTE  => :P371_SER,    					  ',
'            					    PI_TIP_COMPROBANTE          => :P371_COMPROBANTE,',
'                                    PI_COD_ART => :P371_COD_ARTICULO,',
'                                    PI_CANTIDAD => :P371_CANT_DET);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                 raise_application_error(-20000, SQLERRM);',
'        END;',
'                            ',
'',
'ELSE ',
'     raise_application_error(-20000, ''Cantidad incorrecta'');',
'END IF;',
'	'))
,p_attribute_02=>'P371_SUCURSAL,P371_CANT_DET,P371_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110647330403937035)
,p_event_id=>wwv_flow_imp.id(110647149600937033)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110646208787937024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110647448294937036)
,p_event_id=>wwv_flow_imp.id(110647149600937033)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648240403937044)
,p_event_id=>wwv_flow_imp.id(110647149600937033)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648375466937045)
,p_event_id=>wwv_flow_imp.id(110647149600937033)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_COD_ARTICULO,P371_CANT_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110647516182937037)
,p_name=>'New_20'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_SEQ_ID'
,p_condition_element=>'P371_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110647600865937038)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110647782296937039)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110646472821937026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110647871211937040)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110646349553937025)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110647943786937041)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C005, C006',
'      INTO :P371_COD_ARTICULO, :P371_CANT_DET',
'      FROM APEX_COLLECTIONS',
'     WHERE collection_name = ''COL_DETA_STREPREP''',
'       AND SEQ_ID = :P371_SEQ_ID;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P371_SEQ_ID'
,p_attribute_03=>'P371_COD_ARTICULO,P371_CANT_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(365789106663397831)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P371_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648092071937042)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110646208787937024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111100041657681602)
,p_event_id=>wwv_flow_imp.id(110647516182937037)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110648519036937047)
,p_name=>'New_21'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110646349553937025)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648603615937048)
,p_event_id=>wwv_flow_imp.id(110648519036937047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P371_CANT_DET,0)>0 then',
'',
'    BEGIN',
'        STREPREP.PR_EDITAR_DETALLE ( PI_SEQ_ID     => :P371_SEQ_ID,',
'                                     PI_COD_EMPRESA      => TO_CHAR(:P_COD_EMPRESA),',
'                                     PI_NRO_COMPROBANTE  => TO_CHAR(:P371_NRO_COMPROBANTE),',
'                                     PI_SER_COMPROBANTE  => TO_CHAR(:P371_SER),    					  ',
'                                     PI_TIP_COMPROBANTE  => TO_CHAR(:P371_COMPROBANTE),',
'                                     PI_COD_ART    => TO_CHAR(:P371_COD_ARTICULO),',
'                                     PI_CANTIDAD   => TO_CHAR(:P371_CANT_DET));                       ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'             raise_application_error(-20000, SQLERRM);',
'    END;',
'',
'else',
'            raise_application_error(-20000, ''Cantidad incorrecta.'');',
'end if;'))
,p_attribute_02=>'P371_COD_ARTICULO,P371_CANT_DET,P371_NRO_COMPROBANTE,P371_COMPROBANTE,P371_SER,P371_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648703882937049)
,p_event_id=>wwv_flow_imp.id(110648519036937047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110646208787937024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110648836582937050)
,p_event_id=>wwv_flow_imp.id(110648519036937047)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111100370616681605)
,p_name=>'New_22'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_SEQ_BORRAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111100492488681606)
,p_event_id=>wwv_flow_imp.id(111100370616681605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_SEQ_BORRAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111100548780681607)
,p_event_id=>wwv_flow_imp.id(111100370616681605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea eliminar el art\00EDculo?')
,p_attribute_02=>unistr('Confirmaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111100674657681608)
,p_event_id=>wwv_flow_imp.id(111100370616681605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.STREPREP.PR_ELIMINAR_DETALLE (PI_SEQ_ID => :P371_SEQ_BORRAR);',
'    APEX_COLLECTION.DELETE_MEMBER  (   p_collection_name       => ''COL_DETA_STREPREP'',',
'                                                p_seq                   => :P371_SEQ_BORRAR );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P371_SEQ_BORRAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111102844808681630)
,p_event_id=>wwv_flow_imp.id(111100370616681605)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Art\00EDculo eliminado con \00E9xito.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111100799402681609)
,p_event_id=>wwv_flow_imp.id(111100370616681605)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107310898812152611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111101531623681617)
,p_name=>'New_24'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_IND_INS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111101646569681618)
,p_event_id=>wwv_flow_imp.id(111101531623681617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_IND_INS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111102619814681628)
,p_name=>'New_26'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_UPDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111102705157681629)
,p_event_id=>wwv_flow_imp.id(111102619814681628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_UPDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111103368356681635)
,p_name=>'New_27'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111104371481681645)
,p_event_id=>wwv_flow_imp.id(111103368356681635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_ANULADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111103503206681637)
,p_event_id=>wwv_flow_imp.id(111103368356681635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110353622308802421)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P371_S_ANULADO'
,p_client_condition_expression=>'S'
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
 p_id=>wwv_flow_imp.id(111103615978681638)
,p_event_id=>wwv_flow_imp.id(111103368356681635)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(111101078707681612)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P371_S_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111103962588681641)
,p_name=>'New_28'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_ALERT_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111104002484681642)
,p_event_id=>wwv_flow_imp.id(111103962588681641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_ALERT_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111104587310681647)
,p_name=>'New_29'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_EXIST_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111104690169681648)
,p_event_id=>wwv_flow_imp.id(111104587310681647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_EXIST_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111519462661339602)
,p_name=>'New_30'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_TOT_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111519591378339603)
,p_event_id=>wwv_flow_imp.id(111519462661339602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_TOT_CANTIDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111519731695339605)
,p_name=>'New_31'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111519845827339606)
,p_event_id=>wwv_flow_imp.id(111519731695339605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_COD_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111520375388339611)
,p_name=>'New_32'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_REMI_COMPR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111520449847339612)
,p_event_id=>wwv_flow_imp.id(111520375388339611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_REMI_COMPR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111521110080339619)
,p_name=>'New_33'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_INVENTARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111521219963339620)
,p_event_id=>wwv_flow_imp.id(111521110080339619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P371_INVENTARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111521578921339623)
,p_name=>'New_34'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_CANT_EXCEP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111521617079339624)
,p_event_id=>wwv_flow_imp.id(111521578921339623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P371_CANT_EXCEP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(881699095469652601)
,p_name=>'DA_CARGA_PARAM'
,p_event_sequence=>360
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P371_PARAM_NRO").getValue()!='''' && apex.item("P371_PARAM_SER").getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(881699172271652602)
,p_event_id=>wwv_flow_imp.id(881699095469652601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P371_SER  := :P371_PARAM_SER;',
':P371_NRO_COMPROBANTE := :P371_PARAM_NRO;'))
,p_attribute_02=>'P371_PARAM_SER,P371_PARAM_NRO'
,p_attribute_03=>'P371_SER,,P371_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(881699292797652603)
,p_event_id=>wwv_flow_imp.id(881699095469652601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#buscar").click();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(365788737797397827)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guardar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'dummy varchar2(1);',
'v_seq_id number;',
'BEGIN',
' ',
'    BEGIN',
'        SELECT distinct ''1''',
'        into dummy',
'        from INV.VT_PEDIDOS_CABECERA_REP',
'        where NRO_COMPROBANTE=:P371_NRO_COMPROBANTE',
'        and ser_comprobante =  NVL(:P371_SER,''A'')',
'        and tip_comprobante = NVL(:P371_COMPROBANTE,''PER'')',
'        AND cod_empresa = :P_COD_EMPRESA;',
'    exception ',
'        when others then ',
'         dummy := null;',
'     END;',
'',
'    IF dummy is null  THEN',
'        BEGIN',
'            SELECT MAX(NVL(NRO_COMPROBANTE,0))+1',
'            INTO v_seq_id',
'            FROM INV.VT_PEDIDOS_CABECERA_REP',
'            where cod_empresa = :P_COD_EMPRESA;',
'        EXCEPTION WHEN OTHERS ',
'            THEN v_seq_id:=NULL;',
'        END;',
'        INSERT INTO INV.VT_PEDIDOS_CABECERA_REP',
'        (COD_EMPRESA, TIP_COMPROBANTE, SER_COMPROBANTE, NRO_COMPROBANTE, COD_SUCURSAL, FEC_COMPROBANTE, COD_USUARIO, FEC_ALTA, OBSERVACION, ANULADO, TRASLADO, HORA_ALTA, RETIRA_DE, COD_SUCURSAL_ENT, COD_USUARIO_ANU, COD_MOTIVO_ANU, FEC_ESTADO) ',
'        VALUES',
'        (:P_COD_EMPRESA,  NVL(:P371_COMPROBANTE,''PER''), NVL(:P371_SER,''A''), NVL(v_seq_id,:P371_NRO_COMPROBANTE), :P371_SUCURSAL , trunc(sysdate) , :P371_COD_USUARIO_ALTA, :P371_FECHA_ALTA, :P371_OBSERVACION, :P371_ANULADO, :P371_TRASLADO, :P371_HORA_'
||'ALTA, ''ARTIGAS'', :P371_SUCURSAL_ENTRADA, :P371_USUARIO, :P371_MOTIVO, :P371_FECHA_ESTADO);',
'        :P371_IND_INS:=1;',
'    ELSE ',
'        IF :P371_ALERT_MOTIVO = 0 THEN ',
'            UPDATE INV.VT_PEDIDOS_CABECERA_REP',
'            SET OBSERVACION = :P371_OBSERVACION,',
'            ANULADO = :P371_ANULADO,',
'            RETIRA_DE = :P371_SUCURSAL,',
'            COD_SUCURSAL_ENT = :P371_SUCURSAL_ENTRADA,',
'            COD_USUARIO_ANU = :P371_USUARIO,',
'            COD_MOTIVO_ANU = :P371_MOTIVO,',
'            FEC_ESTADO = :P371_FECHA_ESTADO',
'            WHERE NRO_COMPROBANTE= :P371_NRO_COMPROBANTE',
'            AND TIP_COMPROBANTE = NVL(:P371_COMPROBANTE,''PER'')',
'            AND SER_COMPROBANTE = NVL(:P371_SER,''A'')',
'            AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'            :P371_IND_INS:=0;',
'        END IF;',
'',
'        IF :P371_ANULADO = ''S'' AND :P371_MOTIVO IS NOT NULL THEN',
'            :P371_S_ANULADO :=''S'';',
'        END IF;',
'    END IF;',
'    inv.streprep.pr_guardar_detalle(:P_COD_EMPRESA, NVL(v_seq_id,:P371_NRO_COMPROBANTE), NVL(:P371_SER,''A''),  NVL(:P371_COMPROBANTE,''PER''));',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         RAISE_APPLICATION_ERROR(-20000,''Error en la tabla de Remisiones (Cabecera)'' || sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido Guardar el Pedido.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BTN_GUARDAR_CABECERA'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Guardado Exitosamente!'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109198851604222532)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DETA_STREPREP'');',
':P371_SUCURSAL_ENTRADA :=NVL(:P_COD_SUCURSAL,101);',
':P371_FECHA := NULL;',
':P371_OBSERVACION := NULL;',
':P371_ANULADO := NULL;',
':P371_USUARIO := NULL;',
':P371_FECHA_ESTADO := NULL;',
':P371_MOTIVO := NULL;',
':P371_HORA_ALTA := NULL;',
':P371_IND_INS := NULL;',
':P371_SEQ_BORRAR:= NULL;',
':P371_SEQ_ID := NULL;',
'',
':P371_FECHA_ALTA := sysdate;',
':P371_HORA_ALTA  := to_char(sysdate, ''HH24:MI:SS'');',
':P371_DERIVADO   := ''F'';',
':P371_IND_ENVIAR := ''S'';',
':P371_COD_USUARIO_ALTA := :P_COD_USUARIO;',
'',
':P371_COMPROBANTE := ''PER'';',
':P371_SUCURSAL:=null;',
':P371_SER := ''A'';',
':P371_FECHA := trae_fecha( :P_cod_empresa, ''ST'' );',
':P371_TOT_CANTIDAD := 0;',
'',
'BEGIN ',
'    select v.COD_VENDEDOR',
'        into :P371_COD_VENDEDOR',
'    from fv_vendedores v, ',
'    personas p , USUARIOS U',
'    where v.cod_empresa  = :P_cod_empresa',
'    ',
'    AND V.COD_EMPRESA=U.COD_EMPRESA',
'    AND U.COD_PERSONA=V.COD_PERSONA',
'    AND U.COD_USUARIO=USER',
'    and v.cod_persona  = p.cod_persona;',
'exception when others then',
'    :P371_COD_VENDEDOR := NULL;',
'end;',
'',
'',
':P371_COD_ARTICULO := NULL;',
':P371_CANT_DET := 0;',
':P371_S_ANULADO := ''N'';',
':P371_ALERT_MOTIVO := 0;',
':P371_EXIST_CAB := 0;',
':P371_UPDATE := 0;',
':P371_REMI_COMPR := 0; ',
':P371_NRO_COMPROBANTE:=NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
