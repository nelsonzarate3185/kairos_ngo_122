prompt --application/shared_components/user_interface/lovs/lv_cod_art_corto_stenvio
begin
--   Manifest
--     LV_COD_ART_CORTO_STENVIO
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
 p_id=>wwv_flow_imp.id(80486845980112696)
,p_lov_name=>'LV_COD_ART_CORTO_STENVIO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo, descripcion, cod_origen_art, cod_art_corto ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA ',
'   and nvl( estado, ''S'' ) <> ''N''',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_ART_CORTO'
,p_display_column_name=>'COD_ART_CORTO'
);
wwv_flow_imp.component_end;
end;
/
