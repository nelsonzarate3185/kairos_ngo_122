prompt --application/shared_components/user_interface/lovs/lv_cx_estados_dinamico
begin
--   Manifest
--     LV_CX_ESTADOS_DINAMICO
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
 p_id=>wwv_flow_imp.id(1008014167569714855)
,p_lov_name=>'LV_CX_ESTADOS_DINAMICO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.COD_EMPRESA,',
'       C.COD_ESTADO,',
'       C.DESC_ESTADO,',
'       C.UTILIDAD,',
'       C.DERIVADO,',
'       C.FINALIZADO,',
'       C.REABRIR,',
'       C.GESTIONADO ',
'from inv.CC_ESTADOS_CX c',
'WHERE c.cod_empresa = :p_cod_empresa',
'AND (C.DERIVADO = :P791_IND_DERIVADO) '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ESTADO'
,p_display_column_name=>'DESC_ESTADO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESC_ESTADO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
