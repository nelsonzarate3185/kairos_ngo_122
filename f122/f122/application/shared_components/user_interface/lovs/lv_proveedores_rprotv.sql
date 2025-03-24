prompt --application/shared_components/user_interface/lovs/lv_proveedores_rprotv
begin
--   Manifest
--     LV_PROVEEDORES_RPROTV
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
 p_id=>wwv_flow_imp.id(136451500326896800)
,p_lov_name=>'LV_PROVEEDORES_RPROTV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre, ',
'       pro.cod_proveedor, ',
'       ipe.numero',
'  from cm_proveedores pro, personas pe, ident_personas ipe',
' where pro.cod_empresa = 1',
'   and ipe.cod_ident = ''RUC''',
'   and pe.nombre not like ''%NO USAR%''',
'   and ipe.numero is not null',
'   and pro.cod_persona = pe.cod_persona',
'   and pro.cod_persona = ipe.cod_persona',
'   ',
'UNION ALL',
'select pe.nombre, ',
'       pro.cod_proveedor, ',
'       ipe.numero',
'  from cm_proveedores pro, personas pe, ident_personas ipe',
' where pro.cod_empresa = 1',
'   and ipe.cod_ident = ''CI''',
'   and pe.nombre not like ''%NO USAR%''',
'   and ipe.numero is not null',
'   and pro.cod_persona = pe.cod_persona',
'   and pro.cod_persona = ipe.cod_persona',
' order by 1 ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
