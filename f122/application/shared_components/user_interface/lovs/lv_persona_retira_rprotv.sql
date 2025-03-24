prompt --application/shared_components/user_interface/lovs/lv_persona_retira_rprotv
begin
--   Manifest
--     LV_PERSONA_RETIRA_RPROTV
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
 p_id=>wwv_flow_imp.id(136963220035200898)
,p_lov_name=>'LV_PERSONA_RETIRA_RPROTV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PE.NOMBRE,',
'       RE.COD_PERSONA,',
'       ID.NUMERO CEDULA,',
'       DECODE(RE.ACTIVO, ''S'', ''ACTIVO'', ''INACTIVO'') ESTADO',
'  FROM PERSONAS PE,',
'       RP_REPARTIDORES RE,',
'       IDENT_PERSONAS ID',
' WHERE RE.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND RE.COD_PERSONA = PE.COD_PERSONA',
'   AND RE.COD_PERSONA = ID.COD_PERSONA(+)',
'   AND ID.COD_IDENT(+) IN (''RUC'', ''CI'')',
'     and activo=''S''',
'UNION ALL',
'',
'SELECT PE.NOMBRE,',
'       O.COD_PERSONA,',
'       ID.NUMERO CEDULA,',
'       DECODE(O.ESTADO, ''A'', ''ACTIVO'', ''INACTIVO'') ESTADO',
'  FROM RP_OPERADORES O,',
'       PERSONAS PE,',
'       IDENT_PERSONAS ID',
' WHERE O.COD_EMPRESA  = :P_COD_EMPRESA ',
'   AND O.COD_PERSONA  = PE.COD_PERSONA',
'   AND O.COD_PERSONA  = ID.COD_PERSONA(+)',
'   AND ID.COD_IDENT(+) IN (''RUC'', ''CI'')',
' ORDER BY 1 ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
