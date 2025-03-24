prompt --application/shared_components/user_interface/lovs/lv_sub_tipo_trans_rpplagas
begin
--   Manifest
--     LV_SUB_TIPO_TRANS_RPPLAGAS
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
 p_id=>wwv_flow_imp.id(134436532270667825)
,p_lov_name=>'LV_SUB_TIPO_TRANS_RPPLAGAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans || '' - '' || descripcion D, subtipo_trans R',
'from subtipos_trans ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_modulo =''RP'''))
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
