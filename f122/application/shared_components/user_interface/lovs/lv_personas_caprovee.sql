prompt --application/shared_components/user_interface/lovs/lv_personas_caprovee
begin
--   Manifest
--     LV_PERSONAS_CAPROVEE
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
 p_id=>wwv_flow_imp.id(149456434661960883)
,p_lov_name=>'LV_PERSONAS_CAPROVEE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(p.nombre) nombre, ',
'       p.cod_persona, ',
'       i.numero ',
'  from personas p,  ',
'       ident_personas i ',
' WHERE p.cod_persona = i.cod_persona(+) ',
'   and i.cod_ident IN (''RUC'' ,''CI'')',
'order by ltrim(p.nombre)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'COD_PERSONA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(149460121843955221)
,p_query_column_name=>'COD_PERSONA'
,p_heading=>'Cod Persona'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(149460459821955221)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(149460887997955221)
,p_query_column_name=>'NUMERO'
,p_heading=>'Numero'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
