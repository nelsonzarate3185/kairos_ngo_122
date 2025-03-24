prompt --application/shared_components/user_interface/lovs/lv_vehiculos_rprotv
begin
--   Manifest
--     LV_VEHICULOS_RPROTV
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
 p_id=>wwv_flow_imp.id(136285316754782560)
,p_lov_name=>'LV_VEHICULOS_RPROTV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VE.COD_VEHICULO,',
'       VE.DESCRIPCION,',
'       VE.CHAPA,',
'       VT.DESCRIPCION TIPO,',
'       decode(VE.ACTIVO, ''S'', ''ACTIVO'', ''INACTIVO'') estado,',
'       MR.DESCRIPCION MARCA,',
'       MO.DESCRIPCION MODELO',
'  FROM RP_VEHICULOS VE,',
'       RP_MODELOS MO,',
'       RP_MARCAS MR,',
'       RP_VEHICULOS_TIPOS VT',
' WHERE VE.COD_EMPRESA = :P_COD_EMPRESA',
'   AND VE.COD_MARCA   = MR.COD_MARCA(+)',
'   AND VE.COD_MODELO  = MO.COD_MODELO(+)',
'   AND MR.COD_MARCA   = MO.COD_MARCA(+)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VEHICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
