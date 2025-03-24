prompt --application/shared_components/user_interface/lovs/lv_proveedores_det_streqrep
begin
--   Manifest
--     LV_PROVEEDORES_DET_STREQREP
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
 p_id=>wwv_flow_imp.id(111004162384342890)
,p_lov_name=>'LV_PROVEEDORES_DET_STREQREP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_proveedor||'' - ''||ltrim(p.nombre) D, v.cod_proveedor R, v.cod_rubro ',
'from personas p, cm_proveedores v ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl(estado,''A'') = ''A'' ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
