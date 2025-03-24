prompt --application/shared_components/user_interface/lovs/lv_cajeros
begin
--   Manifest
--     LV_CAJEROS
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
 p_id=>wwv_flow_imp.id(6924180297644245)
,p_lov_name=>'LV_CAJEROS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT U.COD_USUARIO||'' - ''||P.NOMBRE D,',
'	    U.COD_USUARIO R',
'   FROM CC_USUARIOS_CAJAS C,',
'		USUARIOS U, PERSONAS P',
'  WHERE C.COD_EMPRESA = ''1''',
'    AND C.COD_EMPRESA = C.COD_EMPRESA',
'    AND C.COD_USUARIO = U.COD_USUARIO',
'    AND U.COD_PERSONA = P.COD_PERSONA',
'    AND U.ESTADO = ''A''',
'    AND C.COD_EMPRESA = :P_COD_EMPRESA',
'  ORDER BY 1 '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
