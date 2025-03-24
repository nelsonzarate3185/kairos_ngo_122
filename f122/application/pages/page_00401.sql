prompt --application/pages/page_00401
begin
--   Manifest
--     PAGE: 00401
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
 p_id=>401
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RECONCAT'
,p_alias=>'RECONCAT'
,p_step_title=>'RECONCAT - Consulta de Catologos'
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
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240705142903'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110778807005423529)
,p_plug_name=>'Filtros'
,p_region_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118954146553105327)
,p_plug_name=>'Buscador'
,p_parent_plug_id=>wwv_flow_imp.id(110778807005423529)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(137164369702888214)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137164369702888214)
,p_plug_name=>'Catalogo'
,p_region_name=>'CARDS'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       null CARD_INITIALS,',
'        ',
'          NULL CARD_TITLE,',
'       A.DESCRIPCION ART_DESC,',
'       R.TENSION,',
'       R.POTENCIA,',
'       R.CARACTERISTICAS,',
'       R.LARGO||'' X ''||R.ANCHO MEDIDA,',
'       NULL CARD_SUBTEXT,',
'       R.COD_ARTICULO CARD_TEXT,',
'	   R.COD_ARTICULO,',
'       (SELECT V.IMAGEN_BLOB',
'  FROM V_IMAGEN_APEX_DIR V',
' WHERE V.ID_IMAGEN = I.ID_IMAGEN',
'   AND V.NRO_IMG = I.NRO_IMAGEN)IMAGEN_BLOB,',
'   ''image/png+jpg+jpeg'' mymetype,',
'  r.id_catalogo,',
'  R.ID_IMAGEN,',
'        APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 416,',
'            p_items  => ''P416_ID_CATALOGO,P416_ID_IMAGEN'',',
'            p_values => r.id_catalogo||'',''||R.ID_IMAGEN )CARD_LINK,',
'       (SELECT count(*) cantidad_imagenes',
'        from RE_CATALAGO_IMAGES I,',
'           V_IMAGEN_APEX_DIR D ',
'     WHERE I.ID_CATALOGO = r.id_catalogo',
'       AND I.ID_IMAGEN = D.ID_IMAGEN',
'       AND I.NRO_IMAGEN = D.NRO_IMG) cant_imagen',
'  from RE_CATALOGO_REPUESTO R,',
'       ST_ARTICULOS A ,',
'       RE_CATALAGO_IMAGES I',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   AND R.COD_ARTICULO = A.COD_ARTICULO',
'   AND R.COD_EMPRESA = A.COD_EMPRESA',
'   AND R.ID_CATALOGO = I.ID_CATALOGO(+)',
'   AND (I.NRO_IMAGEN = 1 OR I.NRO_IMAGEN IS NULL)',
'  -- AND (NVL(I.IND_PRINCIPAL,''N'') = ''S'' OR I.ID_CATALOGO IS NULL)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(137164442612888215)
,p_region_id=>wwv_flow_imp.id(137164369702888214)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_INITIALS'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Codigo: &COD_ARTICULO.<br/>',
'Articulo: &ART_DESC.<br>',
'Tension : &TENSION.<br>',
'Pontencia:&POTENCIA.<br>',
'Medidas :&MEDIDA.<br>',
'Caracteristicas : &CARACTERISTICAS.'))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGEN_BLOB'
,p_media_display_position=>'BODY'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'CARD_TEXT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(137164588104888216)
,p_card_id=>wwv_flow_imp.id(137164442612888215)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:416:&SESSION.::&DEBUG.::P416_ID_CATALOGO,P416_ID_IMAGEN,P416_COD_ARTICULO,P416_CANTIDAD_IMG:&ID_CATALOGO.,&ID_IMAGEN.,&CARD_TEXT.,&CANT_IMAGEN.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118954294004105328)
,p_name=>'P401_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118954146553105327)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp.component_end;
end;
/
