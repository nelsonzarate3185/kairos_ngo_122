prompt --application/shared_components/user_interface/lovs/lv_grupos_vtrvevco
begin
--   Manifest
--     LV_GRUPOS_VTRVEVCO
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
 p_id=>wwv_flow_imp.id(38523261843108370)
,p_lov_name=>'LV_GRUPOS_VTRVEVCO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT G.COD_GRUPO_VEN||'' - ''||NVL(G.DESCRIPCION, P.NOMBRE) D,',
'		G.COD_GRUPO_VEN R',
'   FROM FV_GRUPOS_VENDEDORES G, FV_VENDEDORES V, PERSONAS P ',
'  WHERE G.COD_EMPRESA = :P_COD_EMPRESA  ',
'    AND G.ESTADO = ''A'' ',
'    AND G.COD_EMPRESA = V.COD_EMPRESA ',
'    AND G.COD_VENDEDOR = V.COD_VENDEDOR ',
'    AND V.COD_PERSONA = P.COD_PERSONA ',
'  ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
