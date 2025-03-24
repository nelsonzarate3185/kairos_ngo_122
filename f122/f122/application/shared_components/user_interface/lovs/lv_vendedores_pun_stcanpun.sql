prompt --application/shared_components/user_interface/lovs/lv_vendedores_pun_stcanpun
begin
--   Manifest
--     LV_VENDEDORES_PUN_STCANPUN
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
 p_id=>wwv_flow_imp.id(69399079886594335)
,p_lov_name=>'LV_VENDEDORES_PUN_STCANPUN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre D, COD_VENDEDOR R, P.COD_PERSONA, I.NUMERO',
'  from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
' where v.cod_empresa=:P_COD_EMPRESA',
'   and v.cod_persona=p.cod_persona',
'   AND  NVL(ACTIVO,''A'')<>''I''',
'   AND I.COD_PERSONA = P.COD_PERSONA',
'   AND I.COD_IDENT IN(''CI'',''RUC'')'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69400048765599280)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69400499621599280)
,p_query_column_name=>'D'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69400839526599280)
,p_query_column_name=>'COD_PERSONA'
,p_heading=>'Cod. Persona'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69401267829599280)
,p_query_column_name=>'NUMERO'
,p_heading=>unistr('C\00E9dula')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
