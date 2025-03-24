prompt --application/pages/page_00827
begin
--   Manifest
--     PAGE: 00827
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
 p_id=>827
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'documento_org'
,p_alias=>'DOCUMENTO-ORG'
,p_page_mode=>'MODAL'
,p_step_title=>'documento_org'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IDR > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'  padding-left: 15px;',
'  padding-right: 15px;',
'}',
'',
' ',
'#IDR{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'',
'',
'#CT > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
' ',
'#CT{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'',
'',
'#CF > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
' ',
'#CF{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'.a-CardView-items li{',
'    list-style: none;',
'    padding: 0;',
'   ',
'    overflow: hidden;',
'    flex-wrap: wrap;',
'    border-radius: 10px;',
'    transition: 0.4s;',
'    box-shadow:  0px 3px 3px #003a8586; ',
'}',
'',
'',
'',
'.a-CardView-items li:hover {',
'  transform: translateY(-5px) scale(1.005) translateZ(0);',
'  box-shadow: 0 5px 10px #003a8586,',
'    0 5px 10px #003a8586;',
'}',
'',
'',
'/* Selecciona el AVPList por su ID */',
'#CT .t-AVPList-item {',
'    display: flex;',
'    flex-direction: row;',
'    align-items: flex-start;',
unistr('    flex-wrap: nowrap; /* Evitar que las columnas se env\00EDen a una nueva fila */'),
unistr('    width: 100%; /* Asegurar que el contenedor del \00EDtem ocupe todo el ancho */'),
'}',
'',
'/* Ajustar el comportamiento de la primera columna (label) */',
'#CT .t-AVPList-label {',
'    flex: 0 1 auto;',
'    white-space: nowrap;',
'    overflow: visible;',
'    text-overflow: ellipsis;',
unistr('    padding-right: 10px; /* A\00F1adir espacio entre las columnas si es necesario */'),
'}',
'',
'/* Ajustar el comportamiento de la segunda columna (value) */',
'#CT .t-AVPList-value {',
'    flex: 1 1 auto;',
'    white-space: normal;',
'    overflow: visible;',
'    word-wrap: break-word;',
'    min-width: 0; /* Permitir que la columna se reduzca */',
'    padding-left: 10px; /* Espaciado entre columnas si es necesario */',
'}',
'',
'',
'',
'#P827_CONCEPTOS {',
'    width: 400px !important;  /* Ajusta el ancho */',
'    height: 50px !important;  /* Ajusta la altura */',
unistr('    font-size: 20px !important;  /* Tama\00F1o de fuente */'),
'    text-align: center !important; /* Centrar el texto */',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250226094208'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(588505420368407094)
,p_plug_name=>'Documentos'
,p_region_name=>'tr'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select c.cod_concepto,c.desc_concepto Concepto,(select count(nombre_imagen)',
'                          from inv.BS_IMAGENES_ORG  CC',
'                          where cc.cod_empresa =:P_COD_EMPRESA',
'                             and cc.cod_area = :P827_COD_AREA',
'                             and cc.cod_concepto = c.cod_concepto) Cantidad, Null Documento',
' from inv.BS_CONEPTOS_ORG  c',
' ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Documentos'
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
 p_id=>wwv_flow_imp.id(472788357610843824)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>472788357610843824
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472788495937843825)
,p_db_column_name=>'COD_CONCEPTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Concepto'
,p_column_type=>'STRING'
,p_static_id=>'COD_CONCEPTO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472788515505843826)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472788684409843827)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472788724272843828)
,p_db_column_name=>'DOCUMENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(473351081147231555)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4733511'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CONCEPTO:CONCEPTO:CANTIDAD:DOCUMENTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(606714282321189968)
,p_plug_name=>'Imagenes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT cc.cod_area,cc.imagen_blob, cc.bfile_imagen, cc.nombre_referencia nombre_imagen, rowid, MIME_TYPO,',
'       cc.nombre_imagen LINK, cc.nro_img',
'  from inv.BS_IMAGENES_ORG cc',
' WHERE cc.cod_empresa = :P_COD_EMPRESA',
'   and cc.cod_area = :P827_COD_AREA',
'   and (cc.cod_concepto = :P827_COD_CONCEPTO or :P827_COD_CONCEPTO is null)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P827_COD_CONCEPTO'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No se han cargado imagenes'
,p_show_total_row_count=>true
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(469564119176301766)
,p_region_id=>wwv_flow_imp.id(606714282321189968)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE_IMAGEN'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LINK'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'COD_AREA'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGEN_BLOB'
,p_media_display_position=>'BODY'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'COD_AREA'
,p_pk2_column_name=>'LINK'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(469564694320301767)
,p_card_id=>wwv_flow_imp.id(469564119176301766)
,p_action_type=>'SUB_TITLE'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'f?p=&APP_ID.:828:&SESSION.::&DEBUG.::P828_ROW_ID_DOCU:&ROWID.'
,p_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(259357546987445536)
,p_card_id=>wwv_flow_imp.id(469564119176301766)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:828:&SESSION.::&DEBUG.::P828_ROW_ID_DOCU,P828_LINK,P828_NOMBRE_REFERENCIA,P828_NRO_IMG:&ROWID.,&LINK.,&NOMBRE_IMAGEN.,&NRO_IMG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(472790592971843846)
,p_button_sequence=>10
,p_button_name=>'Conceptos'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Conceptos'
,p_button_redirect_url=>'f?p=&APP_ID.:834:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(54258922546073523)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(469553008563301755)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(588505420368407094)
,p_button_name=>'ELIMINAR_IMAGEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar imagenes'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(469553455047301756)
,p_button_sequence=>30
,p_button_name=>'AGREGAR_IMAGEN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar archivo'
,p_button_redirect_url=>'f?p=&APP_ID.:824:&SESSION.::&DEBUG.:824:P466_COD_MODULO,P466_OPERACION,P824_ID_IMAGEN,P824_COD_AREA:RE,CATALOGO,&P827_ID_IMAGEN.,&P827_COD_AREA.'
,p_grid_new_row=>'N'
,p_grid_column=>12
,p_security_scheme=>wwv_flow_imp.id(54258922546073523)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259357348096445534)
,p_name=>'P827_COD_AREA'
,p_item_sequence=>90
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259357660638445537)
,p_name=>'P827_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(606714282321189968)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259357802285445539)
,p_name=>'P827_MIMETYPE'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(469565250392301769)
,p_name=>'P827_ID_CATALOGO'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(469565668337301769)
,p_name=>'P827_ID_IMAGEN'
,p_item_sequence=>80
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(469566003651301769)
,p_name=>'P827_COD_ARTICULO'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(469566414412301769)
,p_name=>'P827_CANTIDAD_IMG'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(472788846989843829)
,p_name=>'P827_COD_CONCEPTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(588505420368407094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(472789719025843838)
,p_name=>'P827_CONCEPTOS'
,p_item_sequence=>40
,p_prompt=>'Concepto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DOCUMENTOS_ORG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_concepto, cod_concepto',
'from inv.BS_CONEPTOS_ORG'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(469568263624301773)
,p_name=>'da_datos_img'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(469553455047301756)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469568764187301773)
,p_event_id=>wwv_flow_imp.id(469568263624301773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
' SELECT count(*) cantidad_imagenes',
'  into :P827_CANTIDAD_IMG',
'  from RE_CATALAGO_IMAGES I,',
'       V_IMAGEN_APEX_DIR D ',
' WHERE I.ID_CATALOGO =:P827_ID_CATALOGO',
'   AND I.ID_IMAGEN = D.ID_IMAGEN',
'   AND I.NRO_IMAGEN = D.NRO_IMG',
' ORDER BY I.IND_PRINCIPAL DESC,I.ID_IMAGEN,I.NRO_IMAGEN;',
' exception',
'   when others then',
'   :P827_CANTIDAD_IMG := ''0'';',
'end;'))
,p_attribute_02=>'P827_ID_CATALOGO'
,p_attribute_03=>'P827_CANTIDAD_IMG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(469569185673301773)
,p_name=>'After Dialog Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(469553455047301756)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469569648549301774)
,p_event_id=>wwv_flow_imp.id(469569185673301773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(469553455047301756)
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P827_CANTIDAD_IMG'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469570193188301774)
,p_event_id=>wwv_flow_imp.id(469569185673301773)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(606714282321189968)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(472789824166843839)
,p_event_id=>wwv_flow_imp.id(469569185673301773)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(588505420368407094)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(469566835071301770)
,p_name=>'DA_ELIMINA_IMG'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(469553008563301755)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469567337057301771)
,p_event_id=>wwv_flow_imp.id(469566835071301770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_nro_eliminar varchar(10);',
'    begin ',
'       SELECT I.ID_IMAGEN',
'        into v_nro_eliminar',
'          from RE_CATALAGO_IMAGES I,',
'               V_IMAGEN_APEX_DIR D ',
'         WHERE I.ID_CATALOGO =:P827_ID_CATALOGO',
'           AND I.ID_IMAGEN = D.ID_IMAGEN',
'           AND I.NRO_IMAGEN = D.NRO_IMG',
'           and rownum = ''1'';',
'    ',
'    if v_nro_eliminar is not null then',
'',
'    delete IMAGEN_APEX C ',
'    WHERE C.ID = V_NRO_ELIMINAR;',
'',
'     delete RE_CATALAGO_IMAGES C ',
'    WHERE C.ID_IMAGEN = V_NRO_ELIMINAR;',
'    --:P827_NRO_CATALOGO := v_nro_eliminar;',
'',
'   end if;',
'  exception',
'   WHEN NO_DATA_FOUND THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P827_ID_CATALOGO'
,p_attribute_03=>'P827_ID_CATALOGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469567866106301772)
,p_event_id=>wwv_flow_imp.id(469566835071301770)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(606714282321189968)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(472788939277843830)
,p_name=>'DA_SETEA_COD_CONCEPTO'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tr table.a-IRR-table td'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(472789029623843831)
,p_event_id=>wwv_flow_imp.id(472788939277843830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      var pk = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_CONCEPTO"]'').text(); ',
'      $s(''P827_COD_CONCEPTO'',pk);',
'       $s(''P827_CONCEPTOS'',pk);',
' //alert(pk);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(472789502890843836)
,p_event_id=>wwv_flow_imp.id(472788939277843830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(606714282321189968)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(472789128727843832)
,p_name=>'da_select_ref_foco'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(606714282321189968)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(472789203926843833)
,p_event_id=>wwv_flow_imp.id(472789128727843832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Retrasar la ejecuci\00F3n por unos milisegundos para asegurar que el valor est\00E9 actualizado'),
'setTimeout(function() {',
unistr('    // Obtener el valor del elemento de p\00E1gina'),
unistr('    var nameValue = $v(''P827_COD_CONCEPTO'');  // Aseg\00FArate de que ''P704_ID_CASO'' sea el nombre correcto del elemento de p\00E1gina'),
'',
'    // Limpiar cualquier resaltado previo',
'    $(''tr.highlight'').removeClass(''highlight'');',
'',
unistr('    // Validar si el valor no est\00E1 vac\00EDo'),
'    if (nameValue !== '''') {',
'        // Recorrer cada fila y buscar coincidencias',
'        $(''tr'').each(function() {',
'            // Buscar la celda en esta fila con headers="ID_CASO"',
'            var cellValue = $(this).find(''[headers="COD_CONCEPTO"]'').text().trim();',
'',
'            // Comparar el valor de la celda con el valor de nameValue',
'            if (cellValue === nameValue) {',
'                $(this).addClass(''highlight'');  // Resaltar solo la fila coincidente',
'            }',
'        });',
'    }',
'}, 100);  // Retraso de 100 ms',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(472790120105843842)
,p_name=>'deshabilita_campo'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(588505420368407094)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(472790242481843843)
,p_event_id=>wwv_flow_imp.id(472790120105843842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P827_CONCEPTOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(266135585473443711)
,p_name=>'Alfter Dialogo Close'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(606714282321189968)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(266135690065443712)
,p_event_id=>wwv_flow_imp.id(266135585473443711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(606714282321189968)
);
wwv_flow_imp.component_end;
end;
/
