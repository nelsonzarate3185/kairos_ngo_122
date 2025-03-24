prompt --application/shared_components/user_interface/lovs/lv_cliente_ticket
begin
--   Manifest
--     LV_CLIENTE_TICKET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(77911817962142735)
,p_lov_name=>'LV_CLIENTE_TICKET'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT DISTINCT  TRIM(P.NOMBRE)  nom, C.COD_CLIENTE cod, (SELECT  Numero ',
'             ',
'         FROM   IDENT_PERSONAS IP',
'         WHERE   IP.cod_ident in (''RUC'')',
'         AND    IP.COD_PERSONA=C.COD_PERSONA',
'         and rownum=1',
'         )ruc,',
'         (SELECT  Numero              ',
'         FROM   IDENT_PERSONAS IP',
'         WHERE   IP.cod_ident in (''CI'')',
'         AND    IP.COD_PERSONA=C.COD_PERSONA',
'         and rownum=1',
'         )ci,',
'   (SELECT LISTAGG(replace(''(''||codigo_area,''5959'',''09'')||'')''||Num_telefono, ''  '') ',
'             WITHIN GROUP (ORDER BY ROWNUM) ',
'        FROM   telef_personas IP',
'         WHERE  IP.COD_PERSONA=C.COD_PERSONA',
'         )         ',
'         DATOS',
'           , C.COD_CLIENTE',
'     FROM CC_CLIENTES C',
'          ,PERSONAS P',
'     WHERE C.COD_EMPRESA=''1''',
'     AND   C.COD_PERSONA=P.COD_PERSONA',
'     AND   P.NOMBRE NOT LIKE ''%NO USAR%''',
'     AND   P.NOMBRE NOT LIKE ''--%''',
'     AND   P.NOMBRE NOT LIKE ''**%''',
'     AND   P.NOMBRE NOT LIKE ''..%''',
'     ORDER BY 1 ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOM'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77912749473158575)
,p_query_column_name=>'NOM'
,p_heading=>'Nombre Cliente'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77914625860158576)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77913800322158575)
,p_query_column_name=>'CI'
,p_heading=>unistr('C\00E9dula')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77913439007158575)
,p_query_column_name=>'RUC'
,p_heading=>'RUC'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77914290933158575)
,p_query_column_name=>'DATOS'
,p_heading=>unistr('Tel\00E9fono')
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77913019319158575)
,p_query_column_name=>'COD'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
