prompt --application/shared_components/user_interface/lovs/lv_cod_vendedor_stprocan
begin
--   Manifest
--     LV_COD_VENDEDOR_STPROCAN
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
 p_id=>wwv_flow_imp.id(160288330116908012)
,p_lov_name=>'LV_COD_VENDEDOR_STPROCAN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, COD_VENDEDOR, P.COD_PERSONA, I.NUMERO',
'	from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
'	where v.cod_empresa=:p_cod_empresa',
'	and v.cod_persona=p.cod_persona',
'	AND  NVL(ACTIVO,''A'')<>''I''',
'AND I.COD_PERSONA = P.COD_PERSONA',
'AND I.COD_IDENT =''CI''',
'and (v.cod_distribuidor=:p529_cod_distribuidor or :p529_cod_distribuidor is null)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VENDEDOR'
,p_display_column_name=>'COD_VENDEDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_VENDEDOR'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(160289698360886833)
,p_query_column_name=>'COD_VENDEDOR'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(160290025361886833)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
