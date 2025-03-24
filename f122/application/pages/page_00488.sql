prompt --application/pages/page_00488
begin
--   Manifest
--     PAGE: 00488
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
 p_id=>488
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Pedidos  de Envio a Sucursales - STRPEDEN'
,p_alias=>'STRPEDEN'
,p_step_title=>'Reporte de Pedidos  de Envio a Sucursales - STRPEDEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250314101010'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144526363836551432)
,p_plug_name=>'PARAMETRO'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144527617913551445)
,p_plug_name=>'VARIABLE'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145860552437668310)
,p_plug_name=>'REPORT - STENVIOPENDDET'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        select c.tip_envio, c.ser_envio, c.nro_envio, c.fecha, c.cod_sucursal_ent,',
'              s1.descripcion desc_sucur_ent, c.cod_sucursal, s2.descripcion desc_sucur_sal,',
'              c.estado, c.ind_recepcion ind_recepcion_cab, c.comentario, d.cod_articulo,',
'              a.descripcion desc_art, d.cantidad, d.ind_recepcion ind_recepcion_det,',
'              d.nro_lote,trim(c.obs)obs, C.TRANSPORTISTA, ru.descripcion rubro',
'         from st_notas_envio_cab_pend c, st_notas_envio_det_pend d, st_articulos a, Sucursales s1,',
'              sucursales s2, st_rubro ru',
'        where c.cod_empresa = :P_cod_empresa',
'          and ( ( :P488_FEC_INICIAL IS NULL AND :P488_FEC_FINAL IS NULL ) OR',
'                  c.fecha between :P488_FEC_INICIAL and :P488_FEC_FINAL )',
'          and ( :P488_COD_SUCURSAL_ENT_DES IS NULL OR c.cod_sucursal_ent = :P488_COD_SUCURSAL_ENT_DES )',
'          and ( :P488_COD_SUCURSAL_SAL_DES IS NULL OR c.cod_sucursal = :P488_COD_SUCURSAL_SAL_DES)',
'   --       and ( :P_ser_envio IS NULL OR c.ser_envio = :P_ser_envio )',
'',
'          and ( :P488_tipo_envio IS NULL OR c.tipo_envio = :P488_tipo_envio)',
'',
'--          and ( :P_nro_envio IS NULL OR c.nro_envio = :P_nro_envio )',
'--         and ( :P_reposicion IS NULL OR c.reposicion = :P_reposicion )',
'--         and ( :P_devolucion IS NULL OR c.devolucion = :P_devolucion )',
'--         and ( :P_cod_articulo_des is null or d.cod_articulo >= :P_cod_articulo_des)',
'--         and ( :P_cod_articulo_has is null or d.cod_articulo <= :P_cod_articulo_has)',
'          and c.cod_empresa = s1.cod_empresa',
'          and c.cod_sucursal_ent = s1.cod_sucursal',
'          and c.cod_empresa = s2.cod_empresa',
'          and c.cod_sucursal = s2.cod_sucursal',
'          and c.cod_Empresa= d.cod_Empresa',
'          and c.tip_envio = d.tip_envio',
'          and c.ser_envio = d.ser_envio',
'          and c.nro_envio = d.nro_envio',
'          and d.cod_empresa = a.cod_empresa',
'        and ru.cod_empresa=a.cod_empresa',
'        and ru.cod_rubro=a.cod_rubro',
'',
'          and d.cod_articulo = a.cod_articulo',
'          and ',
'            NVL(( select ''S''',
'         ',
'            from st_notas_envio_CAB',
'           where cod_empresa = c.cod_empresa',
'           ',
'             and REFERENCIA = c.nro_envio',
'             AND ROWNUM=1),''N'') =''N''',
'             AND :P488_EJECUTAR = ''S''',
'        order by c.tip_envio, c.ser_envio, c.nro_envio, lpad( d.cod_articulo, 30, '' '' ), d.nro_lote ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P488_COD_EMPRESA,P488_COD_SUCURSAL_ENT_DES,P488_DESC_SUCURSAL_ENT_DES,P488_PERIODO,P488_COD_SUCURSAL_SAL_DES,P488_DESC_SUCURSAL_SAL_DES,P488_FEC_INICIAL,P488_FEC_FINAL,P488_TIPO_ENVIO,P488_ESTADO,P488_ESTADO_AUX,P488_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - STENVIOPENDDET'
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
 p_id=>wwv_flow_imp.id(145860793028668312)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>145860793028668312
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145860837163668313)
,p_db_column_name=>'TIP_ENVIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145860917386668314)
,p_db_column_name=>'SER_ENVIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861095085668315)
,p_db_column_name=>'NRO_ENVIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Envio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861164224668316)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861228498668317)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861334547668318)
,p_db_column_name=>'DESC_SUCUR_ENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Desc Sucur Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861421169668319)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861562997668320)
,p_db_column_name=>'DESC_SUCUR_SAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Desc Sucur Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861656344668321)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861755323668322)
,p_db_column_name=>'IND_RECEPCION_CAB'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ind Recepcion Cab'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861877677668323)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145861933106668324)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862047513668325)
,p_db_column_name=>'DESC_ART'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862111380668326)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862246679668327)
,p_db_column_name=>'IND_RECEPCION_DET'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ind Recepcion Det'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862379609668328)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862466953668329)
,p_db_column_name=>'OBS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Obs'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862556879668330)
,p_db_column_name=>'TRANSPORTISTA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Transportista'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862617257668331)
,p_db_column_name=>'RUBRO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(145982787256955204)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1459828'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIP_ENVIO:SER_ENVIO:NRO_ENVIO:FECHA:COD_SUCURSAL_ENT:DESC_SUCUR_ENT:COD_SUCURSAL:DESC_SUCUR_SAL:ESTADO:IND_RECEPCION_CAB:COMENTARIO:COD_ARTICULO:DESC_ART:CANTIDAD:IND_RECEPCION_DET:NRO_LOTE:OBS:TRANSPORTISTA:RUBRO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145860672561668311)
,p_plug_name=>'REPORT - STPENDEV'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select c.Tip_Envio, c.Nro_Envio, c.fecha, c.cod_sucursal_ent, ',
'      s1.descripcion desc_sucur_ent, c.cod_sucursal, s2.descripcion desc_sucur_sal',
'      ,     NVL(( select ''S''',
' ',
'    from st_notas_envio_CAB',
'   where cod_empresa = c.cod_empresa',
'   ',
'     and REFERENCIA = c.nro_envio',
'     AND ROWNUM=1),NVL((   ',
'           select distinct ''S''',
'          from st_notas_envio_det ned,',
'               st_notas_envio_det_pend d           ',
'          where ned.cod_empresa=:p_cod_empresa',
'          and  c.cod_empresa=d.cod_empresa',
'--         and  c.ser_envio=d.ser_envio',
'          and  c.tip_envio=d.tip_envio',
'          and  c.nro_envio=d.nro_envio',
'          and   ned.cod_articulo= d.cod_articulo',
'          and   ned.tip_envio=''ENV''',
'/*          AND   ned.ser_envio=''A''',
'          AND   NED.NRO_LOTE=D.NRO_LOTE*/',
'    --      and   ned.nro_envio is not null',
'    --      and   ned.referencia is not null',
'          and   ned.referencia=  c.nro_envio ',
'          AND ROWNUM=1),''N'')',
'',
'',
') ESTADO,',
'( select SS.FECHA',
' ',
'    from st_notas_envio_CAB SS',
'   where cod_empresa = c.cod_empresa',
'   ',
'     and REFERENCIA = c.nro_envio',
'     AND ROWNUM=1)FECHA_RECEPCION,',
'     ( select SS.NRO_ENVIO',
' ',
'    from st_notas_envio_CAB SS',
'   where cod_empresa = c.cod_empresa',
'   and ss.nro_envio is null',
'   ',
'     and REFERENCIA = c.nro_envio',
'     AND ROWNUM=1)NRO_RECEPCION',
'    ',
'    ',
'',
'',
' from ST_NOTAS_ENVIO_CAB_PEND c,   sucursales s1, ',
'      sucursales s2',
'where c.cod_empresa         = :P_cod_empresa',
'  and ( c.cod_sucursal_ent = :P488_cod_sucursal_ent_des or :P488_cod_sucursal_ent_des IS NULL )',
'',
'  and ( c.cod_sucursal     = :P488_cod_sucursal_sal_des or :P488_cod_sucursal_sal_des IS NULL )',
'',
'  and (c.fecha              >= to_date(:P488_FEC_INICIAL,''dd/mm/yyyy'') or :P488_FEC_INICIAL is null)',
'  and (c.fecha              <= to_date(:P488_FEC_FINAL,''dd/mm/yyyy'') or  :P488_FEC_FINAL is null) ',
'  and c.cod_empresa         = s1.cod_empresa',
'  and c.cod_sucursal_ent    = s1.cod_sucursal -- sucursal de entrada',
'  and c.cod_empresa         = s2.cod_empresa',
'  and c.cod_sucursal        = s2.cod_sucursal -- sucursal de salida',
'  ',
'',
'  and ( :P488_tipo_envio IS NULL OR c.tipo_envio = :P488_tipo_envio)',
'  AND :P488_EJECUTAR = ''S''',
'',
'--  and nvl( c.estado, ''A'')   = ''A''',
'order by c.Nro_Envio'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P488_COD_SUCURSAL_ENT_DES,P488_COD_SUCURSAL_SAL_DES,P488_FEC_INICIAL,P488_FEC_FINAL,P488_TIPO_ENVIO,P488_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - STPENDEV'
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
 p_id=>wwv_flow_imp.id(145862794178668332)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>145862794178668332
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862831330668333)
,p_db_column_name=>'TIP_ENVIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145862991597668334)
,p_db_column_name=>'NRO_ENVIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Envio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863015461668335)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863111083668336)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Sucursal Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863217640668337)
,p_db_column_name=>'DESC_SUCUR_ENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Sucur Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863380156668338)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863438141668339)
,p_db_column_name=>'DESC_SUCUR_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desc Sucur Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863512378668340)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863663846668341)
,p_db_column_name=>'FECHA_RECEPCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Recepcion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145863715360668342)
,p_db_column_name=>'NRO_RECEPCION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Recepcion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(145983363463955138)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1459834'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_ENVIO:NRO_ENVIO:FECHA:COD_SUCURSAL_ENT:DESC_SUCUR_ENT:COD_SUCURSAL:DESC_SUCUR_SAL:ESTADO:FECHA_RECEPCION:NRO_RECEPCION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159184213895757545)
,p_plug_name=>'REPORT - STPENDEV_AUX'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select c.Tip_Envio, c.Nro_Envio, c.fecha, c.cod_sucursal_ent, ',
'      s1.descripcion desc_sucur_ent, c.cod_sucursal, s2.descripcion desc_sucur_sal',
'      ,     NVL(( select ''S''',
' ',
'    from st_notas_envio_CAB',
'   where cod_empresa = c.cod_empresa',
'   ',
'     and REFERENCIA = c.nro_envio',
'     AND ROWNUM=1),NVL((   ',
'           select distinct ''S''',
'          from st_notas_envio_det ned,',
'               st_notas_envio_det_pend d           ',
'          where ned.cod_empresa=:p_cod_empresa',
'          and  c.cod_empresa=d.cod_empresa',
'--         and  c.ser_envio=d.ser_envio',
'          and  c.tip_envio=d.tip_envio',
'          and  c.nro_envio=d.nro_envio',
'          and   ned.cod_articulo= d.cod_articulo',
'          and   ned.tip_envio=''ENV''',
'/*          AND   ned.ser_envio=''A''',
'          AND   NED.NRO_LOTE=D.NRO_LOTE*/',
'    --      and   ned.nro_envio is not null',
'    --      and   ned.referencia is not null',
'          and   ned.referencia=  c.nro_envio ',
'          AND ROWNUM=1),''N'')',
'',
'',
') ESTADO,',
'( select SS.FECHA',
' ',
'    from st_notas_envio_CAB SS',
'   where cod_empresa = c.cod_empresa',
'   ',
'     and REFERENCIA = c.nro_envio',
'     AND ROWNUM=1)FECHA_RECEPCION,',
'     ( select SS.NRO_ENVIO',
' ',
'    from st_notas_envio_CAB SS',
'   where cod_empresa = c.cod_empresa',
'   ',
'     and REFERENCIA = c.nro_envio',
'     AND ROWNUM=1)NRO_RECEPCION',
'    ',
'    ',
'',
'',
' from ST_NOTAS_ENVIO_CAB_PEND c,   sucursales s1, ',
'      sucursales s2',
'where c.cod_empresa         = :P_cod_empresa',
'  and ( c.cod_sucursal_ent = :P488_cod_sucursal_ent_des or :P488_cod_sucursal_ent_des IS NULL )',
'',
'  and ( c.cod_sucursal     = :P488_cod_sucursal_sal_des or :P488_cod_sucursal_sal_des IS NULL )',
'',
'  and (c.fecha              >= to_date(:P488_FEC_INICIAL,''dd/mm/yyyy'') or :P488_FEC_INICIAL is null)',
'  and (c.fecha              <= to_date(:P488_FEC_FINAL,''dd/mm/yyyy'') or  :P488_FEC_FINAL is null) ',
'  and c.cod_empresa         = s1.cod_empresa',
'  and c.cod_sucursal_ent    = s1.cod_sucursal -- sucursal de entrada',
'  and c.cod_empresa         = s2.cod_empresa',
'  and c.cod_sucursal        = s2.cod_sucursal -- sucursal de salida',
'',
'  and ( :P488_tipo_envio IS NULL OR c.tipo_envio = :P488_tipo_envio)',
'  AND :P488_EJECUTAR = ''S''',
'',
'--  and nvl( c.estado, ''A'')   = ''A''',
'order by c.Nro_Envio'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P488_COD_SUCURSAL_ENT_DES,P488_COD_SUCURSAL_SAL_DES,P488_FEC_INICIAL,P488_FEC_FINAL,P488_TIPO_ENVIO,P488_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - STPENDEV_AUX'
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
 p_id=>wwv_flow_imp.id(159184393486757546)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>159184393486757546
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159184405209757547)
,p_db_column_name=>'TIP_ENVIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159184561402757548)
,p_db_column_name=>'NRO_ENVIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Envio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159184666097757549)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159184704750757550)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Sucursal Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160993947915655801)
,p_db_column_name=>'DESC_SUCUR_ENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Sucur Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160994043485655802)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160994190749655803)
,p_db_column_name=>'DESC_SUCUR_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desc Sucur Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160994295063655804)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160994382386655805)
,p_db_column_name=>'FECHA_RECEPCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Recepcion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160994437575655806)
,p_db_column_name=>'NRO_RECEPCION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Recepcion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(161010213640551393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1610103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_ENVIO:NRO_ENVIO:FECHA:COD_SUCURSAL_ENT:DESC_SUCUR_ENT:COD_SUCURSAL:DESC_SUCUR_SAL:ESTADO:FECHA_RECEPCION:NRO_RECEPCION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144527515000551444)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_button_name=>'bt_Ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(145860272199668307)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_button_name=>'Bt_Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144526405136551433)
,p_name=>'P488_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Cod Empresa'
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
 p_id=>wwv_flow_imp.id(144526549207551434)
,p_name=>'P488_COD_SUCURSAL_ENT_DES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Cod Sucursal Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_ENT_STRPEDEN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D,cod_sucursal R',
'from sucursales ',
'where cod_empresa = :P_cod_empresa',
'and estado=''S''',
''))
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
 p_id=>wwv_flow_imp.id(144526695200551435)
,p_name=>'P488_COD_SUCURSAL_SAL_DES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Cod Sucursal Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_SAL_STRPEDEN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_sucursal',
' from sucursales',
'  where cod_empresa =:P_cod_empresa',
'and  estado=''S'''))
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
 p_id=>wwv_flow_imp.id(144526737242551436)
,p_name=>'P488_FEC_FINAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Fec Final'
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
 p_id=>wwv_flow_imp.id(144526867207551437)
,p_name=>'P488_PERIODO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:DIA;1,MES;2,A\00D1O;3,GENERAL;4')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144526998080551438)
,p_name=>'P488_DESC_SUCURSAL_SAL_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Desc Sucursal Sal Des'
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
 p_id=>wwv_flow_imp.id(144527068131551439)
,p_name=>'P488_DESC_SUCURSAL_ENT_DES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Desc Sucursal Ent Des'
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
 p_id=>wwv_flow_imp.id(144527186708551440)
,p_name=>'P488_FEC_INICIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Fec Inicial'
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
 p_id=>wwv_flow_imp.id(144527298637551441)
,p_name=>'P488_TIPO_ENVIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Tipo Envio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:REPUESTO;RE,PRODUCTO;PR,MUESTRAS;MU,PUBLICIDAD;POP,HERRAMIENTA SERVICIO;HE'
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
 p_id=>wwv_flow_imp.id(144527341653551442)
,p_name=>'P488_ESTADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE DETALLADO;PD,RECEPCIONADO;S,PENDIENTE - EX;N'
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
 p_id=>wwv_flow_imp.id(144527722762551446)
,p_name=>'P488_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144527813757551447)
,p_name=>'P488_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144527955193551448)
,p_name=>'P488_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144528000082551449)
,p_name=>'P488_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144528132390551450)
,p_name=>'P488_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145859673493668301)
,p_name=>'P488_COD_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145859755559668302)
,p_name=>'P488_NOM_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145859837688668303)
,p_name=>'P488_COD_USUARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145859980033668304)
,p_name=>'P488_COD_IDIOMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145860058539668305)
,p_name=>'P488_CODSISMENU'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(144527617913551445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146906237873183301)
,p_name=>'P488_ESTADO_AUX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146952329390827304)
,p_name=>'P488_EJECUTAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(144526363836551432)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145863813151668343)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144527515000551444)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145863942333668344)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P488_EJECUTAR := ''S'';',
'',
'IF :P488_ESTADO=''PD'' THEN',
'	:P488_ESTADO_AUX:=''1'';',
'ELSE',
'    :P488_ESTADO_AUX:=NULL;',
'end IF;',
''))
,p_attribute_02=>'P488_COD_EMPRESA,P488_COD_SUCURSAL_ENT_DES,P488_DESC_SUCURSAL_ENT_DES,P488_PERIODO,P488_COD_SUCURSAL_SAL_DES,P488_DESC_SUCURSAL_SAL_DES,P488_FEC_INICIAL,P488_FEC_FINAL,P488_TIPO_ENVIO,P488_ESTADO'
,p_attribute_03=>'P488_ESTADO_AUX,P488_EJECUTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146952448490827305)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860552437668310)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'PD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146952554675827306)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860672561668311)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'PD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146952608551827307)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860672561668311)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'PD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146952818944827309)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860552437668310)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'PD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160994696261655808)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159184213895757545)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160994784273655809)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159184213895757545)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160994868815655810)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860672561668311)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146953055890827311)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860552437668310)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P488_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146953160184827312)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860672561668311)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P488_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160994585773655807)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159184213895757545)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P488_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145864018994668345)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860552437668310)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'PD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145864122811668346)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860672561668311)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'PD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160994979307655811)
,p_event_id=>wwv_flow_imp.id(145863813151668343)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159184213895757545)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P488_ESTADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145864256420668347)
,p_name=>'DA_COD_SUCURSAL_ENT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P488_COD_SUCURSAL_ENT_DES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145864311106668348)
,p_event_id=>wwv_flow_imp.id(145864256420668347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'INTO :P488_DESC_SUCURSAL_ENT_DES',
'from sucursales ',
'where cod_empresa = :P_cod_empresa and COD_SUCURSAL=:P488_COD_SUCURSAL_ENT_DES and estado=''S'';'))
,p_attribute_02=>'P488_COD_SUCURSAL_ENT_DES'
,p_attribute_03=>'P488_DESC_SUCURSAL_ENT_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145864475722668349)
,p_name=>'DA_COD_SUCURSAL_SAL'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P488_COD_SUCURSAL_SAL_DES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145864583206668350)
,p_event_id=>wwv_flow_imp.id(145864475722668349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'INTO :P488_DESC_SUCURSAL_SAL_DES',
'from sucursales ',
'where cod_empresa = :P_cod_empresa and COD_SUCURSAL=:P488_COD_SUCURSAL_SAL_DES and estado=''S'';'))
,p_attribute_02=>'P488_COD_SUCURSAL_SAL_DES'
,p_attribute_03=>'P488_DESC_SUCURSAL_SAL_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146952043395827301)
,p_name=>'da_ocultar_reportes'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146952101497827302)
,p_event_id=>wwv_flow_imp.id(146952043395827301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860552437668310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146952279954827303)
,p_event_id=>wwv_flow_imp.id(146952043395827301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145860672561668311)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146906702061183306)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(145860272199668307)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146906972577183308)
,p_event_id=>wwv_flow_imp.id(146906702061183306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146907014902183309)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145860183627668306)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P488_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P488_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
':P488_EJECUTAR := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
