prompt --application/pages/page_00802
begin
--   Manifest
--     PAGE: 00802
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
 p_id=>802
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Vehiculos Disponibles'
,p_alias=>'VEHICULOS-DISPONIBLES'
,p_step_title=>'Vehiculos Disponibles'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #003A85;',
'  color: yellow;',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
' ',
'#P94_FECHA_FIN, #P94_FECHA_INI, #P94_ORIGEN, #P94_ESTADO, #P94_CLIENTE {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
' .a-IRR-header{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
' ',
'',
'',
' ',
'',
'',
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}',
'',
'#btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241028150420'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(421802152589113359)
,p_plug_name=>'Vehiculos Disponibles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'E.ID_REGISTRO seq_id,',
'E.CHAPA,',
'    V.DESCRIPCION ,',
'    V.TIPO,',
'    V.VOLUMEN,',
'    V.PESO_KG,',
'    E.FECHA_ENTRADA,',
'    E.NCI_CHOFER CI_CHOFER,',
'    E.CHOFER,',
'    E.OBSERVACION,',
'    E.FECHA_SALIDA,',
'    E.NRO_PLANILLA_REPARTO ,',
'    CASE WHEN E.FECHA_SALIDA IS NULL THEN ',
'      ''<span class="chip chip-success ">''||''DISPONIBLE''||''</span> '' ',
'      ELSE',
'            ''<span class="chip chip-danger ">''||''NO DISPONIBLE PLA: ''||E.NRO_PLANILLA_REPARTO||''</span> ''  END estado ',
'        FROM inv.RP_REGISTRO_VEHI_TERC e, RP_VEHICULOS V',
'       WHERE   e.cod_empresa=:p_cod_empresa',
'         and trunc(e.fecha_entrada)= :P802_FECHA_ENTRADA',
'         AND E.COD_EMPRESA=V.COD_EMPRESA',
'         AND E.CHAPA=V.CHAPA',
'       ORDER BY E.fecha_entrada ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P802_FECHA_ENTRADA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Vehiculos Disponibles'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(421802230263113359)
,p_name=>'Vehiculos Disponibles'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>421802230263113359
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421802630511113364)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421803099776113365)
,p_db_column_name=>'CHAPA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Chapa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421803469085113365)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421803832620113365)
,p_db_column_name=>'TIPO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421804279107113365)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421804680844113365)
,p_db_column_name=>'PESO_KG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Peso Kg'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421805067620113366)
,p_db_column_name=>'FECHA_ENTRADA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Entrada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421805432711113366)
,p_db_column_name=>'CI_CHOFER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ci Chofer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421805823578113366)
,p_db_column_name=>'CHOFER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Chofer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421806285363113366)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421806611731113366)
,p_db_column_name=>'FECHA_SALIDA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fecha Salida'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421807019123113366)
,p_db_column_name=>'NRO_PLANILLA_REPARTO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Nro Planilla Reparto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(421807450339113367)
,p_db_column_name=>'ESTADO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(901355205780733735)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9013553'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHAPA:DESCRIPCION:TIPO:VOLUMEN:PESO_KG:FECHA_ENTRADA:CI_CHOFER:CHOFER:OBSERVACION:FECHA_SALIDA:NRO_PLANILLA_REPARTO:ESTADO:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(903687047202409032)
,p_report_id=>wwv_flow_imp.id(901355205780733735)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'<span class="chip chip-success ">DISPONIBLE</span> '
,p_condition_sql=>'"ESTADO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''<span class="chip chip-success ">DISPONIBLE</span> ''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(898740357912768324)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(898740414068768325)
,p_name=>'P802_FECHA_ENTRADA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(898740357912768324)
,p_prompt=>'Fecha Entrada'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(898740633220768327)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_init'
,p_process_sql_clob=>':P802_FECHA_ENTRADA:=SYSDATE;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
