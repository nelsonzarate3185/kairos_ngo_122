prompt --application/pages/page_00544
begin
--   Manifest
--     PAGE: 00544
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
 p_id=>544
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Busqueda de Pedidos - CPPRPECM'
,p_alias=>'BUSQUEDA-DE-PEDIDOS-CPPRPECM'
,p_step_title=>'Busqueda de Pedidos - CPPRPECM'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240909110210'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63689591049554218)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63689682321554219)
,p_plug_name=>'R1'
,p_parent_plug_id=>wwv_flow_imp.id(63689591049554218)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63689741263554220)
,p_plug_name=>'R2'
,p_parent_plug_id=>wwv_flow_imp.id(63689591049554218)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_sucursal,',
'        nro_pedido,',
'        cod_persona || '' -'' || nombre Persona,',
'        fecha, ',
'        fec_compra,',
'        ROWID,',
'        cod_area,',
'        COD_DEPARTAMENTO,',
'        COD_PROVEEDOR,	',
'        REFERENCIA,	',
'        ESTADO,	',
'        TOTAL,	',
'        COMENTARIO,	',
'        COD_USUARIO,	',
'        COD_USUARIO_EST,	',
'        FEC_ESTADO,	',
'        NOMBRE,	',
'        TIPO,	',
'        COD_SECTOR,		',
'        COD_CENTRO_COSTO,	',
'        COD_EJERCICIO,',
'        null detalle,',
'        null editar,',
'        null eliminar',
'from CP_ORD_PEDIDOS_CAB',
'where (:P544_COD_SUCURSAL = cod_sucursal or :P544_COD_SUCURSAL is null)',
'and (:P544_NRO_PEDIDO = nro_pedido or :P544_NRO_PEDIDO IS NULL)',
'and (:P544_PERSONA = cod_persona or :P544_PERSONA is null)',
'and (cod_area = :P544_AREA or :P544_AREA is null)',
'and (cod_departamento = :P544_DPTO or :P544_DPTO is null)',
'and cod_empresa =:P_COD_EMPRESA;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P544_NRO_PEDIDO,P544_COD_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'R2'
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
 p_id=>wwv_flow_imp.id(63689863667554221)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>63689863667554221
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63690179324554224)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63690941994554232)
,p_db_column_name=>'ROWID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63691892336554241)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63691991895554242)
,p_db_column_name=>'PERSONA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63692033249554243)
,p_db_column_name=>'FECHA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63692194514554244)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fec Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63692233793554245)
,p_db_column_name=>'DETALLE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ver Detalle'
,p_column_link=>'f?p=&APP_ID.:461:&SESSION.::&DEBUG.::P461_NRO_PEDIDO,P461_COD_SUCURSAL,P461_COD_PERSONA,P461_COD_AREA,P461_COD_DEPARTAMENTO,P461_AUX_CREAR:#NRO_PEDIDO#,#COD_SUCURSAL#,#PERSONA#,#COD_AREA#,#COD_DEPARTAMENTO#,N'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63692362151554246)
,p_db_column_name=>'COD_AREA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Area'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63692433166554247)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63692555006554248)
,p_db_column_name=>'EDITAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:461:&SESSION.::&DEBUG.:Y,:P461_COD_SUCURSAL,P461_NRO_PEDIDO,P461_COD_PERSONA,P461_COD_AREA,P461_COD_DEPARTAMENTO,P461_AUX_CREAR:#COD_SUCURSAL#,#NRO_PEDIDO#,#PERSONA#,#COD_AREA#,#COD_DEPARTAMENTO#,N'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164416748606279814)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164416854308279815)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164416947143279816)
,p_db_column_name=>'ESTADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(165040863043531644)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417008030279817)
,p_db_column_name=>'TOTAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417193925279818)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417287500279819)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417344148279820)
,p_db_column_name=>'COD_USUARIO_EST'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cod Usuario Est'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417405783279821)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417591816279822)
,p_db_column_name=>'NOMBRE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417657226279823)
,p_db_column_name=>'TIPO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417744527279824)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417875640279825)
,p_db_column_name=>'COD_CENTRO_COSTO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Cod Centro Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164417960603279826)
,p_db_column_name=>'COD_EJERCICIO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Ejercicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164912637756155913)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P544_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(164379830690505780)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1643799'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_SUCURSAL:NRO_PEDIDO:PERSONA:FECHA:FEC_COMPRA:COMENTARIO:REFERENCIA:TOTAL:ESTADO:DETALLE:ELIMINAR:'
,p_sort_column_1=>'FECHA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63691236061554235)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-folder-search'
,p_button_cattributes=>'style = "margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164416369270279810)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Pedido'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:461:&SESSION.::&DEBUG.:RP,461:P461_AUX_CREAR:S'
,p_icon_css_classes=>'fa-file-new'
,p_button_cattributes=>'style = "margin-top:15px;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63691048623554233)
,p_name=>'P544_NRO_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_prompt=>'Nro Pedido'
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
 p_id=>wwv_flow_imp.id(63691153431554234)
,p_name=>'P544_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_PEDIDOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.cod_sucursal || '' - '' || s.descripcion D, ',
'       s.cod_sucursal R',
'from SUCURSALES s, CP_ORD_PEDIDOS_CAB c ',
'where s.cod_empresa = :p_cod_empresa',
'and s.cod_sucursal = c.cod_sucursal'))
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
 p_id=>wwv_flow_imp.id(63691335253554236)
,p_name=>'P544_PERSONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona ||'' - ''|| nombre D,',
'        cod_persona R',
'from cp_ord_pedidos_cab',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_sucursal =:P544_COD_SUCURSAL',
'and (nro_pedido = :P544_NRO_PEDIDO or :P544_NRO_PEDIDO is null);',
''))
,p_lov_cascade_parent_items=>'P544_COD_SUCURSAL,P544_NRO_PEDIDO'
,p_ajax_items_to_submit=>'P544_PERSONA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(63691458586554237)
,p_name=>'P544_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rh.cod_area||'' - '' ||rh.descripcion D,',
'        rh.cod_area R',
'from rh_areas rh, cp_ord_pedidos_cab c',
'where c.cod_empresa = :P_cod_empresa',
'    and c.cod_empresa = rh.cod_empresa',
'    and c.cod_sucursal = :P544_COD_SUCURSAL',
'    and (c.nro_pedido = :P544_NRO_PEDIDO or :P544_NRO_PEDIDO is null)',
'    and c.cod_persona = :P544_PERSONA',
'    and c.cod_area = rh.cod_area ;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P544_NRO_PEDIDO,P544_PERSONA'
,p_ajax_items_to_submit=>'P544_AREA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63691577851554238)
,p_name=>'P544_DPTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63689682321554219)
,p_prompt=>'Dpto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rh.cod_departamento || '' - ''|| rh.descripcion D,',
'       rh.cod_departamento R',
'from rh_departamentos rh, cp_ord_pedidos_cab c',
'where  c.cod_empresa = :P_cod_empresa',
'    and c.cod_empresa = rh.cod_empresa',
'    and c.cod_sucursal = rh.cod_sucursal',
'    and c.cod_sucursal = :P544_COD_SUCURSAL',
'    and (c.nro_pedido = :P544_NRO_PEDIDO or :P544_NRO_PEDIDO is null)',
'    and c.cod_persona = :P544_PERSONA',
'    and c.cod_area = rh.cod_area',
'    and c.cod_area = :P544_AREA',
'    and c.cod_departamento = rh.cod_departamento;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P544_NRO_PEDIDO,P544_PERSONA,P544_AREA'
,p_ajax_items_to_submit=>'P544_DPTO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63692765274554250)
,p_name=>'P544_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63689591049554218)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164911611124155903)
,p_name=>'P544_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164911719406155904)
,p_name=>'P544_COD_SUCURSAL_H'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164911820460155905)
,p_name=>'P544_COD_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164911951347155906)
,p_name=>'P544_COD_MODULO'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164912010140155907)
,p_name=>'P544_NOM_EMPRESA'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164912112331155908)
,p_name=>'P544_NOM_SUCURSAL'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164912789049155914)
,p_name=>'P544_ELIMINAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63689591049554218)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63691617691554239)
,p_name=>'da_buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(63691236061554235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169509224287093704)
,p_event_id=>wwv_flow_imp.id(63691617691554239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P544_COD_SUCURSAL,P544_NRO_PEDIDO,P544_PERSONA,P544_AREA,P544_DPTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63691777041554240)
,p_event_id=>wwv_flow_imp.id(63691617691554239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(63689741263554220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164415744569279804)
,p_name=>'da_editar'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P544_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164912824765155915)
,p_name=>'da_eliminar'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P544_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164912922122155916)
,p_event_id=>wwv_flow_imp.id(164912824765155915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Eliminar el pedido y sus articulos?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164913041664155917)
,p_event_id=>wwv_flow_imp.id(164912824765155915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'    V_NRO_PEDIDO NUMBER(20);',
'BEGIN',
'    IF :P544_ELIMINAR IS NOT NULL THEN',
'    -- Se pregunta por nro de pedido, y relacionar el detalle con su cabecera.',
'        BEGIN',
'            SELECT NRO_PEDIDO  ',
'            INTO V_NRO_PEDIDO',
'            FROM CP_ORD_PEDIDOS_CAB ',
'            WHERE ROWID = :P544_ELIMINAR; ',
'',
'         EXCEPTION',
'',
'            WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(''Error Nro Pedido: ''||SQLERRM);',
'        END;',
'',
'        IF V_NRO_PEDIDO IS NOT NULL THEN',
'        -- Delete en Detalle ',
'',
'            BEGIN',
'                DELETE CP_ORD_PEDIDOS_DET',
'                WHERE NRO_PEDIDO = V_NRO_PEDIDO;',
'                 ',
'                 EXCEPTION',
'                    WHEN OTHERS THEN',
'                            APEX_DEBUG.ERROR(''Eliminar detalle err: ''||SQLERRM);',
'            END;',
'    -- Delete en cabecera',
'    ',
'            BEGIN',
'                DELETE  CP_ORD_PEDIDOS_CAB',
'                 WHERE ROWID = :P544_ELIMINAR;',
'',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                            APEX_DEBUG.ERROR(''Eliminar cabecera err: ''||SQLERRM);',
'            END;',
'        END IF;',
'    END IF;',
'END;'))
,p_attribute_02=>'P544_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164913131330155918)
,p_event_id=>wwv_flow_imp.id(164912824765155915)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(63689741263554220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164912491893155911)
,p_name=>'da_solo_num'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P544_TOTAL_N'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164912546563155912)
,p_event_id=>wwv_flow_imp.id(164912491893155911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164911471799155901)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P544_Cod_Usuario  := :P_Cod_Usuario;',
':P544_Cod_Empresa  := :P_Cod_Empresa;',
':P544_Nom_Empresa  := :P_Nom_Empresa;',
':P544_Cod_Sucursal_H := :P_Cod_Sucursal;',
':P544_Nom_Sucursal := :P_Nom_Sucursal;',
':P544_Cod_Modulo   := :P_Cod_Modulo;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
