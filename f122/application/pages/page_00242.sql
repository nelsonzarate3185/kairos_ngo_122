prompt --application/pages/page_00242
begin
--   Manifest
--     PAGE: 00242
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
 p_id=>242
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVREPMGPR Verificacion Margen Promocion'
,p_alias=>'FVREPMGPR-VERIFICACION-MARGEN-PROMOCION'
,p_page_mode=>'MODAL'
,p_step_title=>'FVREPMGPR Verificacion Margen Promocion'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221216164823'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55170607232894329)
,p_plug_name=>'Contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55170782142894330)
,p_plug_name=>unistr('Verificaci\00F3n Margen Promoci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_empresa, ',
'       cod_articulo, ',
'       (select TRIM(descripcion)descripcion  ',
'          from st_articulos ',
'         where cod_empresa = p.cod_empresa',
'           and cod_articulo = m.cod_articulo',
'           and nvl( estado, ''S'' ) <> ''N'' ',
'           and cod_rubro=''PR'') DESC_ART,',
'       precio, ',
'       porc_dto, ',
'       precio_neto, ',
'       costo_art, ',
'       utilidad, ',
'       porc_margen, ',
'       cod_usuario, ',
'       p.fecha, ',
'       cod_articulo_promo1 promo, ',
'       costo_promo1 CostoPromo,',
'       precio(cod_articulo_promo1,0)Precio_promo, ',
'       p.cod_moneda,',
'       (SELECT SIGLAS',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = P.COD_MONEDA) DESC_MONEDA,',
'       (nvl(costo_promo1,0)+nvl(costo_promo2,0))Costo_Regalo, ',
'       (nvl(costo_promo1,0)+nvl(costo_promo2,0)+nvl(costo_art,0))Costo_total,',
'       p.nro_promo,',
'       COD_ART_CORTO, ',
'       porc_margen_mk',
'  from fv_promo p,',
'       fv_margen_promo m',
' where p.cod_empresa=m.cod_empresa',
'   and p.nro_promo=m.nro_promo',
'   and cod_articulo_promo1 is not null',
'   and p.cod_empresa = :P_COD_EMPRESA',
'   and (p.nro_promo = :P242_NRO_PROMO or :P242_NRO_PROMO is null)',
'   ',
'union all',
'',
' select p.cod_empresa, ',
'        cod_articulo, ',
'        (select TRIM(descripcion)descripcion  ',
'          from st_articulos ',
'         where cod_empresa = p.cod_empresa',
'           and cod_articulo = m.cod_articulo',
'           and nvl( estado, ''S'' ) <> ''N'' ',
'           and cod_rubro=''PR'') DESC_ART,',
'        precio, ',
'        porc_dto, ',
'        precio_neto, ',
'        costo_art, ',
'        utilidad, ',
'        porc_margen, ',
'        cod_usuario, ',
'        p.fecha, ',
'        cod_articulo_promo2 promo,',
'        costo_promo2 CostoPromo,',
'        precio(cod_articulo_promo2,0)Precio_promo,',
'        p.cod_moneda,',
'        (SELECT SIGLAS',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = P.COD_MONEDA) DESC_MONEDA,',
'        (nvl(costo_promo1,0)+nvl(costo_promo2,0))Costo_Regalo, ',
'        (nvl(costo_promo1,0)+nvl(costo_promo2,0)+nvl(costo_art,0))Costo_total, ',
'        p.nro_promo,',
'        COD_ART_CORTO, ',
'        porc_margen_mk',
'   from fv_promo p,',
'        fv_margen_promo  m',
'  where p.cod_empresa=m.cod_empresa',
'    and p.nro_promo=m.nro_promo',
'    and cod_articulo_promo2 is not null',
'    and p.cod_empresa = :P_COD_EMPRESA',
'    and (p.nro_promo = :P242_NRO_PROMO or :P242_NRO_PROMO is null)',
'',
'union all',
'',
' select p.cod_empresa,',
'        cod_articulo,',
'        (select TRIM(descripcion)descripcion  ',
'          from st_articulos ',
'         where cod_empresa = p.cod_empresa',
'           and cod_articulo = m.cod_articulo',
'           and nvl( estado, ''S'' ) <> ''N'' ',
'           and cod_rubro=''PR'') DESC_ART,',
'        precio,',
'        porc_dto,',
'        precio_neto,',
'        costo_art,',
'        utilidad,',
'        porc_margen,',
'        cod_usuario,',
'        p.fecha,',
'        cod_articulo_promo1 promo,',
'        costo_promo1 CostoPromo,',
'        precio(cod_articulo_promo1, 0) Precio_promo,',
'        p.cod_moneda,',
'        (SELECT SIGLAS',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = P.COD_MONEDA) DESC_MONEDA,',
'        (nvl(costo_promo1, 0) + nvl(costo_promo2, 0)) Costo_Regalo,',
'        (nvl(costo_promo1, 0) + nvl(costo_promo2, 0) + nvl(costo_art, 0)) Costo_total,',
'        p.nro_promo,',
'        COD_ART_CORTO, porc_margen_mk',
'   from inv.fv_promo p, inv.fv_margen_promo m',
'  where p.cod_empresa = m.cod_empresa',
'    and p.nro_promo = m.nro_promo',
'    and cod_articulo_promo1 is null',
'    and cod_articulo_promo2 is null',
'    and p.cod_empresa = :P_COD_EMPRESA',
'    and (p.nro_promo = :P242_NRO_PROMO or :P242_NRO_PROMO is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P242_NRO_PROMO,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Verificaci\00F3n Margen Promoci\00F3n')
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
 p_id=>wwv_flow_imp.id(55170878852894331)
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
,p_internal_uid=>55170878852894331
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171002024894333)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171188194894334)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171265571894335)
,p_db_column_name=>'PRECIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171375168894336)
,p_db_column_name=>'PORC_DTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Porc Dto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171435355894337)
,p_db_column_name=>'PRECIO_NETO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Precio Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171594737894338)
,p_db_column_name=>'COSTO_ART'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Costo Art.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171617658894339)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171708500894340)
,p_db_column_name=>'PORC_MARGEN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Porc Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171813277894341)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55171925709894342)
,p_db_column_name=>'FECHA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172096470894343)
,p_db_column_name=>'PROMO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Promo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172170900894344)
,p_db_column_name=>'COSTOPROMO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Costopromo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172232689894345)
,p_db_column_name=>'PRECIO_PROMO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Precio Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172302579894346)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod. Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172480255894347)
,p_db_column_name=>'COSTO_REGALO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Costo Regalo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172542003894348)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172621097894349)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55172706999894350)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58686534418224301)
,p_db_column_name=>'PORC_MARGEN_MK'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Porc Margen Mk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58686841303224304)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58686970492224305)
,p_db_column_name=>'DESC_ART'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58700159725234146)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'587002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:DESC_ART:DESC_MONEDA:PRECIO:PRECIO_NETO:COSTO_ART:COSTO_REGALO:COSTO_TOTAL:UTILIDAD:PORC_MARGEN:PORC_MARGEN_MK:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58684549824178552)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55170983821894332)
,p_name=>'P242_NRO_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55170607232894329)
,p_prompt=>'Nro. Promo'
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
wwv_flow_imp.component_end;
end;
/
