prompt --application/shared_components/user_interface/lovs/camotlla_lv_comprobantes
begin
--   Manifest
--     CAMOTLLA.LV_COMPROBANTES
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
 p_id=>wwv_flow_imp.id(64078526830799765)
,p_lov_name=>'CAMOTLLA.LV_COMPROBANTES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ORDEN DE TRABAJO''D, ''ORT'' C from DUAL UNION ALL',
'select ''LLAMADAS''D, ''RLLA'' from DUAL UNION ALL',
'select ''FICHA COMERCIAL''D, ''FICH'' from DUAL UNION ALL',
'select ''PRESUPUESTO''D, ''PED'' from DUAL UNION ALL',
'select ''PAGAOS''D, ''PAG'' from DUAL UNION ALL',
'select ''OBRAS''D, ''OBR'' from DUAL UNION ALL',
'select ''COBRANZAS''D, ''CBR'' from DUAL UNION ALL',
'select ''REFERENCIA''D, ''REF'' from DUAL UNION ALL',
'select ''COMPRAS''D, ''FAC'' from DUAL UNION ALL',
'select ''TC''D, ''TC'' from DUAL  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'C'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
