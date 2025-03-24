prompt --application/shared_components/user_interface/lovs/lv_promociones
begin
--   Manifest
--     LV_PROMOCIONES
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
 p_id=>wwv_flow_imp.id(58685133521185882)
,p_lov_name=>'LV_PROMOCIONES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a.event_name, ',
'        a.fecha_fin, ',
'        decode(ind_activo,''S'',''ACTIVO'',''INACTIVO'')ESTADO, ',
'        A.CODIGO_MARCA, ',
'        EVENTID  ',
'FROM st_promocion_cab a ',
'WHERE cod_empresa= :P_COD_EMPRESA',
'AND FECHA_FIN>TO_DATE(''01/01/2015'',''dd/mm/yyyy'')',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'EVENTID'
,p_display_column_name=>'EVENT_NAME'
);
wwv_flow_imp.component_end;
end;
/
