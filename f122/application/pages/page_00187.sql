prompt --application/pages/page_00187
begin
--   Manifest
--     PAGE: 00187
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
 p_id=>187
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTCARTERA_CLIENTE'
,p_alias=>'VTCARTERA-CLIENTE'
,p_page_mode=>'MODAL'
,p_step_title=>'VTCARTERA_CLIENTE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221111145757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38037702984336042)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  INITCAP(ma.descripcion) desc_marca, ',
'        cl.cod_cliente,',
'        P.NOMBRE, ',
'        INITCAP(cat.descripcion),',
'        SUM(D.CANTIDAD)CANTPRE,',
'        cat.cod_categoria COD_CATEGORIA, ',
'        INITCAP(cat.descripcion) desc_categoria, ',
'        to_char(ver_fecha_carte(C.COD_EMPRESA ,''I''),''dd/mm/yyyy'')INI, ',
'        to_char(ver_fecha_carte(C.COD_EMPRESA ,''F''),''dd/mm/yyyy'') FIN,',
'        C.CORREO, ',
'        c.contacto,',
'        to_char(ver_fecha_carte(C.COD_EMPRESA ,''F'')+1,''MONTH'') FIN_MES_LETRA',
'',
'FROM    vt_cartera_clientes_cab c, ',
'        vt_cartera_clientes_det d, ',
'        CC_CLIENTES CL, ',
'        PERSONAS P, ',
'        st_categorias cat, ',
'        ST_ENCARGADO_MARCAS ST, ',
'        st_marcas ma, ',
'        fv_vendedores fv, ',
'        personas pv',
'',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.cod_empresa=d.cod_empresa',
'AND c.cod_cliente=d.cod_cliente',
'AND c.anio=d.anio',
'AND c.cod_cliente= :P187_COD_CLIENTE',
'AND c.cod_empresa=d.cod_empresa',
'AND cat.cod_empresa=d.cod_empresa',
'AND cat.cod_categoria=d.cod_categoria',
'AND CL.COD_EMPRESA=C.COD_EMPRESA',
'AND CL.COD_CLIENTE=C.COD_CLIENTE',
'AND CL.COD_PERSONA=P.COD_PERSONA',
'',
'AND d.fecha_inicio>=ver_fecha_carte(C.COD_EMPRESA ,''I'')',
'AND d.fecha_fin<= ver_fecha_carte(C.COD_EMPRESA ,''F'')',
'AND ma.cod_marca=d.cod_marca',
'AND cl.cod_empresa=fv.cod_empresa',
'AND cl.cod_vendedor=fv.cod_vendedor',
'AND fv.cod_persona=pv.cod_persona',
'AND ST.COD_MARCA=D.COD_MARCA',
'AND d.cod_marca NOT IN ''WHI''',
'AND( cl.COD_CLIENTE= :P187_COD_CLIENTE or :P187_COD_CLIENTE is  null)',
'--AND ( cl.COD_vendedor= :P_COD_VENDEDOR or :P_COD_VENDEDOR is  null)',
'GROUP BY  P.NOMBRE,cl.cod_cliente,cat.cod_categoria, cat.descripcion,',
'ma.descripcion,pv.nombre ,C.CORREO,C.COD_EMPRESA,c.contacto',
'',
'UNION ALL',
'SELECT  INITCAP(ma.descripcion) desc_marca, ',
'        cl.cod_cliente,',
'        P.NOMBRE, ',
'        INITCAP(cat.descripcion),',
'        SUM(D.CANTIDAD)CANTPRE,',
'        cat.Cod_Categoria COD_CATEGORIA, ',
'        INITCAP(cat.descripcion) desc_categoria,',
'        to_char(ver_fecha_carte(C.COD_EMPRESA ,''I''),''dd/mm/yyyy'')INI, ',
'        to_char(ver_fecha_carte(C.COD_EMPRESA ,''F''),''dd/mm/yyyy'') FIN,',
'        C.CORREO, ',
'        c.contacto, ',
'        to_char(ver_fecha_carte(C.COD_EMPRESA ,''F'')+1,''MONTH'') FIN_MES_LETRA',
'',
'FROM    vt_cartera_clientes_cab c, ',
'        vt_cartera_clientes_det d,',
'        CC_CLIENTES CL, ',
'        PERSONAS P, ',
'        ST_CATEGORIAS cat, ',
'        st_marcas ma, ',
'        fv_vendedores fv, ',
'        personas pv',
'',
'WHERE c.cod_empresa=:P_COD_EMPRESA',
'AND c.cod_empresa=d.cod_empresa',
'AND c.cod_cliente=d.cod_cliente',
'AND c.anio=d.anio',
'AND c.cod_cliente= :P187_COD_CLIENTE',
'AND c.cod_empresa=d.cod_empresa',
'AND cat.cod_empresa=d.cod_empresa',
'AND cat.COD_CATEGORIA=d.COD_CATEGORIA',
'AND CL.COD_EMPRESA=C.COD_EMPRESA',
'AND CL.COD_CLIENTE=C.COD_CLIENTE',
'AND CL.COD_PERSONA=P.COD_PERSONA',
'AND d.fecha_inicio>=ver_fecha_carte(C.COD_EMPRESA ,''I'')',
'AND d.fecha_fin<= ver_fecha_carte(C.COD_EMPRESA ,''F'')',
'AND ma.cod_marca=d.cod_marca',
'AND cl.cod_empresa=fv.cod_empresa',
'AND cl.cod_vendedor=fv.cod_vendedor',
'AND fv.cod_persona=pv.cod_persona',
'AND d.cod_marca=''WHI''',
'AND( cl.COD_CLIENTE= :P187_COD_CLIENTE OR :P187_COD_CLIENTE is  null)',
'--AND ( cl.COD_vendedor= :P_COD_VENDEDOR or :P_COD_VENDEDOR is  null)',
'GROUP BY  P.NOMBRE,cl.cod_cliente,cat.COD_CATEGORIA, cat.descripcion,',
'ma.descripcion,pv.nombre ,C.CORREO,C.COD_EMPRESA,c.contacto',
'',
'ORDER BY 1 , 4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P187_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(38037834077336043)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>38037834077336043
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38037954873336044)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38038074649336045)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38038187781336046)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38038297621336047)
,p_db_column_name=>'INITCAP(CAT.DESCRIPCION)'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Initcap(cat.descripcion)'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38038316602336048)
,p_db_column_name=>'CANTPRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantpre'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38038471851336049)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38038528848336050)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39145842551800001)
,p_db_column_name=>'INI'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ini'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39145930474800002)
,p_db_column_name=>'FIN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39146082745800003)
,p_db_column_name=>'CORREO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39146180927800004)
,p_db_column_name=>'CONTACTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39146269016800005)
,p_db_column_name=>'FIN_MES_LETRA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fin Mes Letra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39336775167873668)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'393368'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_MARCA:COD_CLIENTE:NOMBRE:INITCAP(CAT.DESCRIPCION):CANTPRE:COD_CATEGORIA:DESC_CATEGORIA:INI:FIN:CORREO:CONTACTO:FIN_MES_LETRA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39146393062800006)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39146468176800007)
,p_name=>'P187_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39146393062800006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39146576518800008)
,p_name=>'P187_COD_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39146393062800006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
