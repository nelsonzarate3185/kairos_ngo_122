prompt --application/shared_components/user_interface/lovs/lvcustodiosent
begin
--   Manifest
--     LVCUSTODIOSENT
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
 p_id=>wwv_flow_imp.id(112269670876600368)
,p_lov_name=>'LVCUSTODIOSENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_custodio ||'' - ''||descripcion D, cod_custodio R ',
'from cc_custodios ',
'where cod_empresa = :P_COD_EMPRESA',
'and (:P375_COD_CUSTODIO_SAL is null ',
'or cod_custodio <> :P375_COD_CUSTODIO_SAL )',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
