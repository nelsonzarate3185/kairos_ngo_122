prompt --application/shared_components/user_interface/lovs/lv_cuentas_bancarias
begin
--   Manifest
--     LV_CUENTAS_BANCARIAS
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
 p_id=>wwv_flow_imp.id(9694892336242742)
,p_lov_name=>'LV_CUENTAS_BANCARIAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro_cuenta r, nro_cuenta|| '' - ''||referencia d',
'from cc_cuentas_bancarias',
'where cod_empresa = :P_COD_EMPRESA',
' and tip_cuenta  = ''4'''))
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
