prompt --application/shared_components/user_interface/lovs/lv_departamentos_canal_verde
begin
--   Manifest
--     LV_DEPARTAMENTOS_CANAL_VERDE
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
 p_id=>wwv_flow_imp.id(59484937809511851)
,p_lov_name=>'LV_DEPARTAMENTOS_CANAL_VERDE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''AF''CODIGO, ''AUTORIZADO A FACTURA''DESCRIPCION from dual UNION ALL ',
'select ''AN''DESCRIPCION, ''ANULACION''CODIGO from dual UNION ALL ',
'select ''MA''DESCRIPCION, ''MARKETING''CODIGO from dual UNION ALL ',
'select ''CA''DESCRIPCION, ''CANJE''CODIGO from dual UNION ALL ',
'select ''DI''DESCRIPCION, ''DIRECTORIO''CODIGO from dual UNION ALL ',
'select ''CR''DESCRIPCION, ''CREDITOS''CODIGO from dual UNION ALL ',
'select ''CO''DESCRIPCION, ''COBRANZAS''CODIGO from dual UNION ALL ',
'select ''SV''DESCRIPCION, ''SUPERVISION VALORES''CODIGO from dual UNION ALL ',
'select ''RH''DESCRIPCION, ''GENTE''CODIGO from dual UNION ALL ',
'select ''VE''DESCRIPCION, ''VENTAS''CODIGO from dual  UNION ALL',
'select ''AC''DESCRIPCION, ''AUTORIZACION CREDITOS''CODIGO from dual UNION ALL',
'select ''CP''DESCRIPCION, ''CANJE PUBLICIDAD''CODIGO from dual UNION ALL',
'select ''TE''DESCRIPCION, ''TESORERIA''CODIGO from dual UNION ALL',
'select ''RP''DESCRIPCION, ''DISTRIBUCION''CODIGO from dual UNION ALL',
'select ''GC''DESCRIPCION, ''GENTE CPH''CODIGO from dual UNION ALL',
'select ''PR''DESCRIPCION, ''PENDIENTE DE RIESGOS''CODIGO from dual UNION ALL',
'select ''F''DESCRIPCION, ''FACTURACION''CODIGO from dual UNION ALL',
'select ''GA''DESCRIPCION, ''GERENCIA ADMINISTRATIVA''CODIGO from dual UNION ALL',
'select ''PR''DESCRIPCION, ''PENDIENTE DE RIESGOS''CODIGO from dual UNION ALL',
'select ''GV''DESCRIPCION, ''GERENCIA DE VENTAS''CODIGO from dual UNION ALL',
'select ''AV''DESCRIPCION, ''AUTORIZACION VALORES''CODIGO from dual UNION ALL',
'select ''AA''DESCRIPCION, ''ARREGLOS ADMINISTRATIVOS''CODIGO from dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
