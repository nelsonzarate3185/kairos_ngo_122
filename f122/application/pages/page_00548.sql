prompt --application/pages/page_00548
begin
--   Manifest
--     PAGE: 00548
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
 p_id=>548
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Parametros Comisi\00F3n - NGO')
,p_alias=>unistr('PARAMETROS-COMISI\00D3N-NGO')
,p_step_title=>unistr('Parametros Comisi\00F3n - NGO')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#param, #escalas {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230630082227'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(225298313940322265)
,p_plug_name=>'Parametros '
,p_region_name=>'param'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CC.cod_vendedor,',
'       P.NOMBRE, ',
'       CC.porc_com,',
'       CC.porc_dto_min,',
'       CC.porc_dto_max,',
'       CC.cod_empresa,',
'       CC.monto_min,',
'       CC.monto_max,',
'       case CC.cod_division',
'            when ''CLIMAR'' then ''CLIMATIZACION RESIDENCIAL''',
'            when ''CLIMAC'' then ''CLIMATIZACION COMERCIAL''',
'            when ''0'' then ''TODOS''',
'            when ''GASTRO'' then ''GASTRONOMIA''',
'            when ''ANT'' then ''ANTICIPOS''',
'            when ''VRF'' then ''VRF''',
'            when ''INSTAL'' then ''INSTALACIONES''',
'            when ''OM'' then ''OTRAS MARCAS''',
'            when ''REP'' then ''REPUESTOS''            ',
'       end cod_division,',
'       CC.porc_com_nm,',
'       CC.monto_plus,',
'       CC.cod_cliente,',
'       CC.cod_lista_precio,',
'       cc.porc_com_m2,',
'       null edit,',
'       null eliminar,',
'       cc.rowid',
'  from inv.fv_parametro_comisiones CC,',
'       FV_VENDEDORES V,',
'       PERSONAS P',
'  WHERE CC.COD_EMPRESA=:P_COD_EMPRESA',
'  AND   CC.COD_EMPRESA=V.COD_EMPRESA',
'  AND   CC.COD_VENDEDOR=V.COD_VENDEDOR',
'  AND   V.COD_PERSONA=P.COD_PERSONA',
'order by P.NOMBRE asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Parametros '
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
 p_id=>wwv_flow_imp.id(225298387451322266)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'25'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>225298387451322266
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173094707358761623)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173095062858761620)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173096222057761619)
,p_db_column_name=>'PORC_COM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'%Comision Si/Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173096627022761619)
,p_db_column_name=>'PORC_DTO_MIN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'%Dto. Vta. Min.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173097069812761618)
,p_db_column_name=>'PORC_DTO_MAX'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'%Dto Vta. Max.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173097477870761618)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173097823238761618)
,p_db_column_name=>'MONTO_MIN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173098211724761618)
,p_db_column_name=>'MONTO_MAX'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Monto Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173098632947761618)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173099013982761617)
,p_db_column_name=>'PORC_COM_NM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'%Comision No/Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173099438989761617)
,p_db_column_name=>'MONTO_PLUS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Monto Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173099847539761617)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cliente Especial'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173100223755761616)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Lista Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171356366717796115)
,p_db_column_name=>'PORC_COM_M2'
,p_display_order=>180
,p_column_identifier=>'W'
,p_column_label=>unistr('%Comisi\00F3n Meta Plus')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173101456965761613)
,p_db_column_name=>'EDIT'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P469_SQL_CHK'',''&SEQ_ID.'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173101816455761613)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P548_ROWID'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173102291024761613)
,p_db_column_name=>'ROWID'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(225438184342132816)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'523441'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'COD_VENDEDOR:NOMBRE:COD_DIVISION:PORC_DTO_MIN:PORC_DTO_MAX:PORC_COM:PORC_COM_NM:PORC_COM_M2:COD_CLIENTE:COD_LISTA_PRECIO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(225450455328984940)
,p_plug_name=>unistr('Vendedor - Nueva Parametrizaci\00F3n ')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(173109997742761582)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(173102983948761607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(225298313940322265)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-warning-text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171355995385796111)
,p_name=>'P548_PORC_DTO_VTA_MIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'%Descuento Vta. Minimo:'
,p_format_mask=>'99D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_grid_column=>1
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-left-md:t-Form-fieldContainer--radioButtonGroup:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171356096884796112)
,p_name=>'P548_PORC_DTO_VTA_MAX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'%Descuento Vta. Maximo:'
,p_format_mask=>'99D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_grid_column=>1
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-left-md:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171356111806796113)
,p_name=>'P548_PORC_COM_SM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'%Comision Si alcanza Meta:'
,p_format_mask=>'99D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_grid_column=>1
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-left-md:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171356270910796114)
,p_name=>'P548_PORC_COM_NM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'%Comision No alcanza Meta:'
,p_format_mask=>'99D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_grid_column=>1
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-left-md:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171356439183796116)
,p_name=>'P548_PORC_COM_2M'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'%Comision Meta Plus:'
,p_format_mask=>'99D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_grid_column=>1
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-left-md:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173103382753761600)
,p_name=>'P548_ROWID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173110326302761582)
,p_name=>'P548_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.cod_vendedor||'' - ''||nvl(v.descripcion, p.nombre) nombre, v.cod_vendedor',
'  FROM fv_vendedores v, personas p',
' WHERE v.cod_empresa = :P_COD_EMPRESA',
'   AND v.cod_persona = p.cod_persona',
'   AND v.estado = ''A''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione Vendedor-'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'450'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173110727052761580)
,p_name=>'P548_DIVISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(225450455328984940)
,p_prompt=>'DIVISION'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:TODOS;0,CLIMATIZACION COMERCIAL;CLIMAC,CLIMATIZACION RESIDENCIAL;CLIMAR,GASTRONOMIA;GASTRO,INSTALACIONES;INSTAL,VRF;VRF,OTRAS MARCAS;OM,REPUESTOS;REP,ANTICIPOS;ANT'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173112712030761574)
,p_name=>'da_reg_nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(173102983948761607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173113216728761569)
,p_event_id=>wwv_flow_imp.id(173112712030761574)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P548_VENDEDOR,P548_DIVISION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173113715809761567)
,p_event_id=>wwv_flow_imp.id(173112712030761574)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(225450455328984940)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173114193725761567)
,p_name=>'da_eliminar'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P548_ROWID'
,p_condition_element=>'P548_ROWID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173114635619761566)
,p_event_id=>wwv_flow_imp.id(173114193725761567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar el Registro seleccionado?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173115192679761566)
,p_event_id=>wwv_flow_imp.id(173114193725761567)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from fv_parametro_comisiones',
'    where rowid= :P548_ROWID;',
'    commit;',
'exception',
'    when others then',
'         raise_application_error(-20000, ''Error al intentar eliminar el registro - '' || sqlerrm );',
'end ;'))
,p_attribute_02=>'P548_ROWID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173115645801761566)
,p_event_id=>wwv_flow_imp.id(173114193725761567)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(173112374655761574)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'valida_guardado'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P548_VENDEDOR is null then',
' raise_application_error(-20000, ''Debe seleccionar un Vendedor.'');',
'elsif :P548_DIVISION is null then',
' raise_application_error(-20000, ''Debe cargar la Division'');',
'elsif :P548_PORC_COM_nM is null then',
' raise_application_error(-20000, ''Debe asignar un porcentaje para el caso de no llegar a la Meta'');',
'elsif :P548_PORC_COM_sM is null then',
' raise_application_error(-20000, ''Debe asignar un porcentaje si llega a la Meta'');',
'end if;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(173109997742761582)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(173111993805761575)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUADAR_PARAM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    insert into fv_parametro_comisiones ',
'    (cod_vendedor,cod_empresa,cod_division,  porc_dto_min, porc_dto_max, porc_com_nm, porc_com,porc_com_m2)',
'    values ',
'    (:P548_VENDEDOR,:P_COD_EMPRESA,:P548_DIVISION,:P548_PORC_DTO_VTA_MIN,:P548_PORC_DTO_VTA_MAX,:P548_PORC_COM_NM,:P548_PORC_COM_SM,:P548_PORC_COM_2M );',
'    commit; ',
'exception',
'    when others then   ',
'        raise_application_error(-20000, ''Error al intentar guardar los datos '' || sqlerrm );',
'end;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido crear el Registro'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(173109997742761582)
,p_process_success_message=>'Registro guardado exitosamente!'
);
wwv_flow_imp.component_end;
end;
/
