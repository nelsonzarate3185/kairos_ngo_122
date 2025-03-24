prompt --application/shared_components/user_interface/lovs/lv_articulos_capedrep
begin
--   Manifest
--     LV_ARTICULOS_CAPEDREP
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
 p_id=>wwv_flow_imp.id(1024414047934894253)
,p_lov_name=>'LV_ARTICULOS_CAPEDREP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   A.descripcion L, ',
'         A.cod_articulo V, ',
'         NVL((SELECT sum(cant_dispon)',
'                from st_existencia_art cc',
'                where cc.cod_empresa=nvl(:P_COD_EMPRESA,''1'')',
'                and   cc.COD_ARTICULO=A.cod_articulo',
'                and  cc.cod_sucursal in (''101'',''190'')),0)STOCK',
'from st_articulos A, st_equivalencia_art S   ',
' where A.cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
' and ( A.estado is null or A.estado <> ''I'' )',
' AND A.COD_ARTICULO = S.COD_ARTICULO_EQUI',
' AND A.COD_EMPRESA =  S.COD_EMPRESA',
' AND S.COD_ARTICULO  = :P327_COD_ARTICULO_CAB ',
' GROUP BY  A.descripcion, A.cod_articulo'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'V'
,p_display_column_name=>'L'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'L'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1024418728108903547)
,p_query_column_name=>'V'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1024419159582903548)
,p_query_column_name=>'L'
,p_heading=>'Repuesto'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1024419508815903548)
,p_query_column_name=>'STOCK'
,p_heading=>'Stock'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
