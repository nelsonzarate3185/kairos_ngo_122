prompt --application/shared_components/user_interface/lovs/lov_usuarios_puestos
begin
--   Manifest
--     LOV_USUARIOS_PUESTOS
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
 p_id=>wwv_flow_imp.id(155511263048315466)
,p_lov_name=>'LOV_USUARIOS_PUESTOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE D, u.cod_usuario',
'  FROM RH_EMPLEADOS E, PERSONAS P, RH_AREAS A, RH_DEPARTAMENTOS D, usuarios u',
' WHERE E.COD_EMPRESA = ''1''',
'   AND NVL(E.ACTIVO, ''S'') <> ''N''',
'   AND E.COD_PERSONA = P.COD_PERSONA',
'   AND E.COD_AREA = A.COD_AREA',
'   AND A.COD_EMPRESA = E.COD_EMPRESA',
'   AND A.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND D.COD_DEPARTAMENTO = E.COD_DEPARTAMENTO',
'   AND E.COD_AREA = D.COD_AREA',
'   AND D.COD_EMPRESA = E.COD_EMPRESA',
'   AND D.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND E.ACTIVO = ''S''',
'   AND u.cod_persona = p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_USUARIO'
,p_display_column_name=>'COD_USUARIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_USUARIO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(155512258522311136)
,p_query_column_name=>'COD_USUARIO'
,p_heading=>'Usuario'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(155512693207311136)
,p_query_column_name=>'D'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
