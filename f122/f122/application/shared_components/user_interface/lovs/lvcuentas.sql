prompt --application/shared_components/user_interface/lovs/lvcuentas
begin
--   Manifest
--     LVCUENTAS
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
 p_id=>wwv_flow_imp.id(18671059472154841)
,p_lov_name=>'LVCUENTAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_PER_JURIDICA R, ',
'	   C.COD_PER_JURIDICA||'' - ''||P.NOMBRE D',
'  FROM CC_CUENTAS_BANCARIAS C, ',
'	   PERSONAS P ',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND C.COD_PER_JURIDICA = P.COD_PERSONA'))
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
