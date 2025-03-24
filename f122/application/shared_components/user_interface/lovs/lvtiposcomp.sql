prompt --application/shared_components/user_interface/lovs/lvtiposcomp
begin
--   Manifest
--     LVTIPOSCOMP
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
 p_id=>wwv_flow_imp.id(112295576394796474)
,p_lov_name=>'LVTIPOSCOMP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante||'' - ''||descripcion D, tip_comprobante T, tip_origen ',
'from tipos_comprobantes ',
'where cod_empresa = :P_COD_EMPRESA',
'and tip_origen is not null order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'T'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
