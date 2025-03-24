prompt --application/shared_components/user_interface/lovs/lv_descripcion_camostam
begin
--   Manifest
--     LV_DESCRIPCION_CAMOSTAM
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
 p_id=>wwv_flow_imp.id(148629148799081498)
,p_lov_name=>'LV_DESCRIPCION_CAMOSTAM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT S.DESCRIPCION D,',
'        V.COD_ARTICULO R',
'       FROM ST_ARTICULOS S,',
'             st_linea l,',
'             st_categorias c,',
'             vt_maestro_ot_mo_sta v',
'        WHERE S.COD_EMPRESA = :P505_COD_EMPRESA',
'         AND S.COD_ARTICULO = v.COD_ARTICULO',
'         and s.cod_linea=l.cod_linea(+)',
'         and S.COD_EMPRESA = l.cod_empresa(+)',
'         and s.cod_categoria=c.cod_categoria(+)',
'         and S.COD_EMPRESA = c.cod_empresa(+)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
