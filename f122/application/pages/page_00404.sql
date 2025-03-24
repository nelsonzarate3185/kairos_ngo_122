prompt --application/pages/page_00404
begin
--   Manifest
--     PAGE: 00404
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
 p_id=>404
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BTL'
,p_alias=>'BTL'
,p_step_title=>'BTL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240918172503'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115107822277235709)
,p_plug_name=>'Listas de BTL'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115107948777235710)
,p_plug_name=>'BTL_REP'
,p_parent_plug_id=>wwv_flow_imp.id(115107822277235709)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select ROWID,',
'       F.ID,',
'       F.COD_EMPRESA,',
'       F.COD_CLIENTE,',
'       (SELECT C.COD_CLIENTE||'' - ''||NVL(P.NOMBRE,P.NOMB_FANTASIA) D',
'          FROM CC_CLIENTES C,',
'               PERSONAS P',
'         WHERE P.COD_PERSONA = C.COD_PERSONA',
'           AND C.COD_EMPRESA = F.COD_EMPRESA',
'           AND C.COD_CLIENTE = F.COD_CLIENTE',
'           ',
'        )CLIENTE_DESC,',
'       F.COD_SUC_CLIENTE,',
'       (SELECT DISTINCT B.COD_SUCURSAL||''-''||B.NOMBRE ',
'          FROM Bs_Sucursal_Cliente B ',
'         WHERE B.COD_EMPRESA = F.COD_EMPRESA',
'           AND B.COD_CLIENTE = F.COD_CLIENTE',
'           AND B.COD_SUCURSAL = F.COD_SUC_CLIENTE',
'           and rownum=1)SUCURSAL_CLIENTE,',
'       F.FECHA,',
'       F.COD_EMPL_ENC,',
'       F.ID_ASUNTO_BTL,',
'       F.COMENTARIO,',
'       F.COD_MARCA,',
'       (SELECT M.COD_MARCA||''-''||M.DESCRIPCION D ',
'          FROM ST_MARCAS M',
'         WHERE M.COD_MARCA = F.COD_MARCA)MARCA,',
'       F.COD_CATEGORIA,',
'       F.COD_ARTICULO,  ',
'HORARIO_ACTIVACION,',
'HORARIO_DEGUSTACION,',
'COSTO_ENVIO,',
'COSTO_TRASLADO,',
'COSTO_MONTAJE,',
'COSTO_INSUMO,',
'COSTO_TOTAL',
'',
'  from FV_BTL F',
'where f.cod_empresa = :p_cod_empresa'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'BTL_REP'
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
 p_id=>wwv_flow_imp.id(115108016347235711)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.::P405_ROWID:#ROWID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>115108016347235711
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108169846235712)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108284758235713)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108353230235714)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>' Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108472909235715)
,p_db_column_name=>'COD_SUC_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Suc. Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116057174131387815)
,p_db_column_name=>'SUCURSAL_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Sucursal Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108594292235716)
,p_db_column_name=>'FECHA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108656599235717)
,p_db_column_name=>'COD_EMPL_ENC'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Encargado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12499741931502745)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108745537235718)
,p_db_column_name=>'ID_ASUNTO_BTL'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Asunto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(118574166041709300)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108855475235719)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115108928247235720)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115109018948235721)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6213561121448677)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115109129285235722)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(59858391219860496)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(115109244896235723)
,p_db_column_name=>'ROWID'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116057202993387816)
,p_db_column_name=>'CLIENTE_DESC'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118953074555105316)
,p_db_column_name=>'MARCA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181627965387034619)
,p_db_column_name=>'HORARIO_ACTIVACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Horario Activacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628009568034620)
,p_db_column_name=>'HORARIO_DEGUSTACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Horario Degustacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628111680034621)
,p_db_column_name=>'COSTO_ENVIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Costo Envio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628226790034622)
,p_db_column_name=>'COSTO_TRASLADO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Costo Traslado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628345473034623)
,p_db_column_name=>'COSTO_MONTAJE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Costo Montaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628452926034624)
,p_db_column_name=>'COSTO_INSUMO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Costo Insumo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628576978034625)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118571996961643139)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1185720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FECHA:CLIENTE_DESC:SUCURSAL_CLIENTE:COD_EMPL_ENC:ID_ASUNTO_BTL:COMENTARIO:MARCA:COD_CATEGORIA:COD_ARTICULO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115111683550235747)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(115107948777235710)
,p_button_name=>'Nuevo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.:404::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(115111726420235748)
,p_name=>'Editar registro'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(115107948777235710)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115111800627235749)
,p_event_id=>wwv_flow_imp.id(115111726420235748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(115107948777235710)
);
wwv_flow_imp.component_end;
end;
/
