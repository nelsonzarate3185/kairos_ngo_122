prompt --application/shared_components/user_interface/lovs/lv_horas
begin
--   Manifest
--     LV_HORAS
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
 p_id=>wwv_flow_imp.id(1006826269815667585)
,p_lov_name=>'LV_HORAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE) + (LEVEL - 1) / 24, ''HH24:MI'') AS Hora',
'FROM DUAL',
'CONNECT BY LEVEL <= 24;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'HORA'
,p_display_column_name=>'HORA'
,p_default_sort_column_name=>'HORA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
