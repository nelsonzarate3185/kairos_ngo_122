prompt --application/pages/page_00826
begin
--   Manifest
--     PAGE: 00826
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
 p_id=>826
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BS_DOCUMENTOS_ORG'
,p_alias=>'BS-DOCUMENTOS-ORG'
,p_step_title=>'BS_DOCUMENTOS_ORG'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
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
'',
'',
'',
'',
'',
'.t-Cards-item .t-Card-wrap {',
'    list-style: none;',
'    padding: 0;',
'   ',
'    overflow: hidden;',
'    flex-wrap: wrap;',
'    border-radius: 10px;',
'',
'    box-shadow:  0px 3px 3px #003a8586; ',
'}',
'',
'',
'#FILTROS{',
'border-radius: 10px;',
'}',
'#FILTROS{',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
' #FILTROS  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250211091712'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(580323042695216823)
,p_plug_name=>'Procesos  | Politicas | instructivos'
,p_region_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(588498382242898621)
,p_plug_name=>'Buscador'
,p_parent_plug_id=>wwv_flow_imp.id(580323042695216823)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(606708605392681508)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(606708605392681508)
,p_plug_name=>'Areas'
,p_region_name=>'CARDS'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null CARD_INITIALS,',
'       NULL CARD_TITLE,',
'       a.descripcion AREA_DESC,',
'       NULL TENSION,',
'       NULL POTENCIA,',
'       NULL CARACTERISTICAS,',
'       NULL MEDIDA,',
'       NULL CARD_SUBTEXT,',
'       R.COD_AREA CARD_TEXT,',
'       R.COD_AREA,',
'       /*(SELECT V.IMAGEN_BLOB',
'      FROM V_IMAGEN_ORG_DIR V',
'     WHERE V.COD_AREA = R.COD_AREA',
'       AND V.COD_CONCEPTO = R.COD_CONCEPTO)*/null IMAGEN_BLOB,',
'       ''image/png+jpg+jpeg'' mymetype,',
'       r.COD_DOCUMENTO,',
'       NULL ID_IMAGEN,',
'       APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 827,',
'            p_items  => ''P827_ID_CATALOGO,P827_ID_IMAGEN'',',
'            p_values => null||'',''||null )CARD_LINK,',
'       NULL cant_imagen,',
'       null Editar',
'  from inv.bs_documentos_org R,',
'       rh_areas a',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   and a.cod_empresa = r.cod_empresa',
'   and a.cod_sucursal = ''01''',
'   and a.cod_area = r.cod_area'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(469545883566793302)
,p_region_id=>wwv_flow_imp.id(606708605392681508)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'AREA_DESC'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'Codigo: &COD_AREA.<br/>'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(469546316940793303)
,p_card_id=>wwv_flow_imp.id(469545883566793302)
,p_action_type=>'TITLE'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:827:&SESSION.::&DEBUG.::P827_ID_IMAGEN,P827_COD_AREA,P827_COD_CONCEPTO:&COD_AREA.,&COD_AREA.,'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(472787513960843816)
,p_card_id=>wwv_flow_imp.id(469545883566793302)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Editar'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:832:&SESSION.::&DEBUG.::P832_COD_DOCUMENTO:&COD_DOCUMENTO.'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-file-edit'
,p_is_hot=>true
,p_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(472787684049843817)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(606708605392681508)
,p_button_name=>'Crear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_redirect_url=>'f?p=&APP_ID.:832:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column=>12
,p_security_scheme=>wwv_flow_imp.id(54258922546073523)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(469545178485793301)
,p_name=>'P826_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(588498382242898621)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(472789973093843840)
,p_name=>'After dialog close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(472787684049843817)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(472790090417843841)
,p_event_id=>wwv_flow_imp.id(472789973093843840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(606708605392681508)
);
wwv_flow_imp.component_end;
end;
/
