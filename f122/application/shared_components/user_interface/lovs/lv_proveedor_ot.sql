prompt --application/shared_components/user_interface/lovs/lv_proveedor_ot
begin
--   Manifest
--     LV_PROVEEDOR_OT
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
 p_id=>wwv_flow_imp.id(12766355046484980)
,p_lov_name=>'LV_PROVEEDOR_OT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, c.cod_proveedor, 1 orden',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.ind_servicio_tecnico = ''STNGO''',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')  ',
'   UNION ALL',
'   select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, c.cod_proveedor, 2 orden',
'  from cm_proveedores c, personas p',
' where c.cod_empresa =:P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'   and ( nvl(c.cod_rubro,''99'')=''88'' or nvl(c.ind_servicio_tecnico,''STNGO'') <> ''STNGO'')',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
' order by orden asc, nombre asc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ORDEN'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
