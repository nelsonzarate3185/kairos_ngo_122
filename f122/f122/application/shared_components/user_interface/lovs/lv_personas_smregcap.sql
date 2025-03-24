prompt --application/shared_components/user_interface/lovs/lv_personas_smregcap
begin
--   Manifest
--     LV_PERSONAS_SMREGCAP
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
 p_id=>wwv_flow_imp.id(63974134044357403)
,p_lov_name=>'LV_PERSONAS_SMREGCAP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre , p.cod_persona',
'  from  personas p ',
'',
'  where p.cod_persona in ( select distinct cod_persona',
'                             from fv_vendedores',
'                             where cod_empresa= :P_COD_EMPRESA',
'                             and estado =''A''',
'                             and :P_TIPO_PARTICIPANTE=''VENDEDOR'')',
'  OR ',
' ',
' p.cod_persona in (  ',
'                      SELECT DISTINCT EE.cod_persona',
'                      FROM FV_PROMOTORAS PP,',
'                           RH_EMPLEADOS EE',
'                      WHERE PP.COD_EMPRESA= :P_COD_EMPRESA',
'                      AND   PP.COD_EMPRESA=EE.COD_EMPRESA',
'                      AND   PP.COD_EMPLEADO=EE.COD_EMPLEADO',
'                      AND   EE.ACTIVO=''S''',
'                   and :P_TIPO_PARTICIPANTE=''PROMOTOR'')',
'                   ',
'                   ',
'',
'  OR ',
' ',
' p.cod_persona in (   SELECT DISTINCT PP.COD_PERSONA',
'                         FROM CM_PROVEEDORES  PP',
'                         WHERE PP.COD_EMPRESA=:P_COD_EMPRESA',
'                         AND   PP.ESTADO=''A''',
'                         and :P_TIPO_PARTICIPANTE=''SERV.TEC.'') ',
' ',
'  OR ',
' ',
' p.cod_persona in (    SELECT DISTINCT CC.COD_PERSONA',
'                       FROM CC_CLIENTES  CC',
'                       WHERE CC.COD_EMPRESA=:P_COD_EMPRESA',
'                       AND   CC.ESTADO=''A''',
'                         and :P_TIPO_PARTICIPANTE=''DISTRIB/CLIENTE'')  ',
'',
' OR ( p.cod_persona in (''6101'',''196590'') AND :P_TIPO_PARTICIPANTE=''STAFF'')',
'',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
