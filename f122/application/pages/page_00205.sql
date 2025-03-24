prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
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
 p_id=>205
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Comisiones'
,p_alias=>'COMISIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Comisiones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'1300'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250206154726'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(379340123718055004)
,p_name=>unistr('Comisi\00F3n Nueva Politica')
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VTA_TOTAL',
'       ,N005 PORC_LOGRADO',
'       ,to_number(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_FACT'' ',
'and UPPER(C002) not like ''%GASTRO%''',
'',
'union all',
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VAL_ALCANZADO',
'       ,N005 PORC_LOGRADO',
'       ,to_NUMBER(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_CUMP'' ',
'and nvl(C001,''0'')<>''5''',
'AND nvl(C005,''0'')<>''2'' ',
'',
'order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341357681055016)
,p_query_column_id=>1
,p_column_alias=>'CODIGO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341445188055017)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre Descripcion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341570135055018)
,p_query_column_id=>3
,p_column_alias=>'BASE_COMISION'
,p_column_display_sequence=>40
,p_column_heading=>'Base Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341674422055019)
,p_query_column_id=>4
,p_column_alias=>'PORC_PESO'
,p_column_display_sequence=>30
,p_column_heading=>'Porc Peso'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341790693055020)
,p_query_column_id=>5
,p_column_alias=>'OBJETIVO'
,p_column_display_sequence=>50
,p_column_heading=>'Objetivo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341896516055021)
,p_query_column_id=>6
,p_column_alias=>'VTA_TOTAL'
,p_column_display_sequence=>60
,p_column_heading=>'Total Alcanzado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379341956082055022)
,p_query_column_id=>7
,p_column_alias=>'PORC_LOGRADO'
,p_column_display_sequence=>80
,p_column_heading=>'%Logrado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379342044707055023)
,p_query_column_id=>8
,p_column_alias=>'IMP_COMISION'
,p_column_display_sequence=>90
,p_column_heading=>'Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379342196905055024)
,p_query_column_id=>9
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1021512627770978309)
,p_name=>unistr('Comisi\00F3n Gastro')
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VTA_TOTAL',
'       ,N005 PORC_LOGRADO',
'       ,to_number(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_FACT'' ',
'and UPPER(C002)  like ''%GASTRO%''',
'',
'union all',
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VAL_ALCANZADO',
'       ,N005 PORC_LOGRADO',
'       ,to_NUMBER(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_CUMP'' ',
'and C001<>''5''',
'and C005=''2'' ',
'',
'order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021512745672978310)
,p_query_column_id=>1
,p_column_alias=>'CODIGO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021512832223978311)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre Descripcion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021513070103978313)
,p_query_column_id=>3
,p_column_alias=>'BASE_COMISION'
,p_column_display_sequence=>40
,p_column_heading=>'Base Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021512943645978312)
,p_query_column_id=>4
,p_column_alias=>'PORC_PESO'
,p_column_display_sequence=>30
,p_column_heading=>'Porc Peso'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021513134905978314)
,p_query_column_id=>5
,p_column_alias=>'OBJETIVO'
,p_column_display_sequence=>50
,p_column_heading=>'Objetivo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021513780980978320)
,p_query_column_id=>6
,p_column_alias=>'VTA_TOTAL'
,p_column_display_sequence=>60
,p_column_heading=>'Total Alcanzado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021513333487978316)
,p_query_column_id=>7
,p_column_alias=>'PORC_LOGRADO'
,p_column_display_sequence=>70
,p_column_heading=>'%Logrado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021513488144978317)
,p_query_column_id=>8
,p_column_alias=>'IMP_COMISION'
,p_column_display_sequence=>80
,p_column_heading=>'Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1021513543902978318)
,p_query_column_id=>9
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1021513887912978321)
,p_name=>'P205_COD_VENDEDOR'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1021513923114978322)
,p_name=>'P205_PERIODO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43935104230248495)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43935626439248496)
,p_event_id=>wwv_flow_imp.id(43935104230248495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_COD_VENDEDOR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(379341229509055015)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VERROR EXCEPTION;',
'    VMENSAJE VARCHAR2(500);',
'    VMES VARCHAR2(10);',
'    VANIO  VARCHAR2(10);',
'    VFECHA_INI VARCHAR2(30);',
'begin ',
'         select to_char(P.FEC_INICIAL,''MM''),to_char(P.FEC_INICIAL,''YYYY''),  to_char(P.FEC_INICIAL,''dd/mm/yyyy'')',
'         INTO VMES, VANIO, VFECHA_INI',
'         from fv_periodos_comision P',
'         where cod_empresa= :P_COD_EMPRESA',
'         and   num_periodo= :P205_PERIODO',
'    ;',
'',
'   ',
'   IF TO_DATE(VFECHA_INI,''DD/MM/YYYY'') <TO_DATE(''01/12/2024'',''DD/MM/YYYY'') THEN',
'              inv.fvcomisionp.pr_calcula_comision(p_cod_vendedor => :P205_COD_VENDEDOR,',
'                                                  p_mes => VMES,',
'                                                  p_anio => VANIO,',
'                                                  p_mensaje => VMENSAJE,',
'                                                  P_COD_EMPRESA=>:P_COD_EMPRESA);',
'',
'    ELSE',
'',
'              inv.fvcomisionp_V2.pr_calcula_comision(p_cod_vendedor => :P205_COD_VENDEDOR,',
'                                                  p_mes => VMES,',
'                                                  p_anio => VANIO,',
'                                                  p_mensaje => VMENSAJE,',
'                                                  P_COD_EMPRESA=>:P_COD_EMPRESA);',
'    END IF;',
' ',
'        if VMENSAJE is not null then',
'            raise verror;',
'        end if;',
'',
'exception',
'    WHEN VERROR THEN',
'            raise_application_error(-20000, VMENSAJE );',
'    when others then',
'         raise_application_error(-20000,:P205_PERIODO|| sqlerrm );',
'end;',
'',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
