prompt --application/shared_components/user_interface/lovs/lv_supervisor_smotobra
begin
--   Manifest
--     LV_SUPERVISOR_SMOTOBRA
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
 p_id=>wwv_flow_imp.id(67006071270152955)
,p_lov_name=>'LV_SUPERVISOR_SMOTOBRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT u.cod_usuario || '' - '' || nvl(p.nombre,p.nomb_fantasia) D,',
'       u.cod_usuario R',
'       --P.COD_PERSONA,',
'       --P.DIREC_ELECTRONICA',
'from usuarios u, personas p',
'WHERE u.cod_persona=p.cod_persona',
'AND u.cod_usuario in  (  Select cod_usuario',
'FROM permisos_opciones',
'WHERE nom_forma = ''SMOTOBRA''',
'AND parametro = ''SUPERVISOR_OBRA'');'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
