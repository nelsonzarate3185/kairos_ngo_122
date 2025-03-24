prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('M\00F3dulos')
,p_alias=>unistr('M\00D3DULOS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('M\00F3dulos')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doSet(pid) {',
'    $s("P12_LAST", pid);',
'    $s("P12_SET", pid);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230121102732'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40328123188321609)
,p_plug_name=>'Static'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40328235793321610)
,p_plug_name=>'Configuracion del Rol'
,p_parent_plug_id=>wwv_flow_imp.id(40328123188321609)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vw.stat, ',
'       vw.leve,',
'       vw.labe title,',
'       CASE WHEN seguridad.existe_modulo_rol(:P12_ID, vw.id) > 0 THEN ',
'                CASE WHEN vw.dm$acti = 1 THEN ''fa fa fa-window-check fa-3x''',
'                     ELSE ''fa fa fa-folder-check fa-3x'' END',
'            ELSE CASE WHEN vw.dm$acti = 1 THEN ''fa fa fa-window-ban fa-3x''',
'                     ELSE ''fa fa fa-folder-x fa-3x'' END END icon,',
'       vw.ID value, ',
'       null tooltip,',
'       ''javascript:doSet('' || vw.id || '');'' link',
'from VW$ASP$MODU0300 vw',
'WHERE vw.apli0100$id = :P_APLI0100_ID',
'  AND vw.dm$acti = 1',
'  /*AND EXISTS (SELECT 1',
'                FROM asp$modu0340 a340',
'               WHERE a340.empr0100$id = :P_EMPR0100_ID',
'                 AND a340.modu0300$id = vw.id)*/',
'order by vw.path',
'--order by vw.orde'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_ajax_items_to_submit=>'P12_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'D'
,p_attribute_03=>'RMAIN'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVE'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STAT'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40307838334094517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40328235793321610)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Contraer todo'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40307977614094518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40328235793321610)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expandir todo'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40307397838094512)
,p_name=>'P12_SET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40328235793321610)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40307416051094513)
,p_name=>'P12_LAST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40328235793321610)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40329464380321622)
,p_name=>'P12_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40328235793321610)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40307515010094514)
,p_name=>'DA_SAVE_MODU_ROL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_SET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40307696234094515)
,p_event_id=>wwv_flow_imp.id(40307515010094514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vpadre NUMBER;',
'   vcount NUMBER;',
'BEGIN',
'',
'   SELECT COUNT(1)',
'     INTO vcount',
'     FROM asp$modu0330',
'    WHERE role0100$id = :P12_ID',
'      AND modu0300$id = :P12_SET;',
'',
'      /*errores.handle(nomb => ''vcount: '' || vcount,',
'                     modu => ''DA_SAVE_MODU_ROL'',',
'                     logerr => TRUE,',
'                     reraise => FALSE);*/',
'',
'   IF vcount > 0 THEN',
'      DELETE FROM asp$modu0330',
'       WHERE role0100$id = :P12_ID',
'         AND modu0300$id = :P12_SET;',
'',
'      DELETE FROM asp$modu0330',
'       WHERE role0100$id = :P12_ID',
'         AND modu0300$id IN (SELECT id ',
'                               FROM asp$modu0300',
'                              WHERE modu0300$id = :P12_SET);',
'   ELSE',
'',
'      SELECT modu0300$id',
'        INTO vpadre',
'        FROM asp$modu0300',
'       WHERE id = :P12_SET;',
'',
'',
unistr('      /*INSERTO EL M\00D3DULO EN LA SEGURIDAD**/'),
'      INSERT INTO asp$modu0330 (modu0300$id, role0100$id)',
'         VALUES (:P12_SET, :P12_ID);',
'',
'',
'      /*INSERTO EL PADRE EN LA SEGURIDAD**/',
'      IF vpadre IS NOT NULL THEN',
'         INSERT INTO asp$modu0330 (modu0300$id, role0100$id)',
'            SELECT vpadre, :P12_ID',
'              FROM dual',
'             WHERE NOT EXISTS (SELECT 1',
'                                 FROM asp$modu0330',
'                                WHERE role0100$id = :P12_ID',
'                                  AND modu0300$id = vpadre);',
'      END IF;',
'',
'',
'      /*INSERTO LOS HIJOS EN LA SEGURIDAD**/',
'      FOR cc IN (SELECT id',
'                    FROM asp$modu0300',
'                   WHERE modu0300$id = :P12_SET)',
'      LOOP',
'         INSERT INTO asp$modu0330 (modu0300$id, role0100$id)',
'            SELECT cc.id, :P12_ID',
'              FROM dual',
'             WHERE NOT EXISTS (SELECT 1',
'                                 FROM asp$modu0330',
'                                WHERE role0100$id = :P12_ID',
'                                  AND modu0300$id = cc.id);',
'      END LOOP;',
'',
'',
'      /*INSERTO LOS NIETOS EN LA SEGURIDAD**/',
'      FOR cc IN (SELECT id',
'                   FROM asp$modu0300',
'                  WHERE modu0300$id IN (SELECT id',
'                                          FROM asp$modu0300',
'                                         WHERE modu0300$id = :P12_SET))',
'      LOOP',
'         INSERT INTO asp$modu0330 (modu0300$id, role0100$id)',
'            SELECT cc.id, :P12_ID',
'              FROM dual',
'             WHERE NOT EXISTS (SELECT 1',
'                                 FROM asp$modu0330',
'                                WHERE role0100$id = :P12_ID',
'                                  AND modu0300$id = cc.id);',
'      END LOOP;',
'',
'   END IF;',
'   :P12_SET := NULL;',
'   ',
'   --ACTUALIZO LA FECHA DE MODIFICACION Y EL USUARIO EN LA TABLA DE ROLES',
'   UPDATE ASP$ROLE0100 ',
'      SET LAST_UPDATE_DATE = SYSDATE,',
'          LAST_UPDATED_BY = :APP_USER',
'      WHERE ID = :P12_ID;',
'',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      /*errores.handle(nomb => dbms_utility.format_error_backtrace,',
'                     modu => ''DA_SAVE_MODU_ROL'',',
'                     logerr => TRUE,',
'                     reraise => FALSE);*/',
'      null;               ',
'END;'))
,p_attribute_02=>'P12_ID,P12_SET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64084821126872813)
,p_event_id=>wwv_flow_imp.id(40307515010094514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40308094266094519)
,p_name=>'DA_CONTRACT_ALL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40307838334094517)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40308117650094520)
,p_event_id=>wwv_flow_imp.id(40308094266094519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40328235793321610)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40308240236094521)
,p_name=>'DA_EXPAND_ALL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40307977614094518)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40308359901094522)
,p_event_id=>wwv_flow_imp.id(40308240236094521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40328235793321610)
);
wwv_flow_imp.component_end;
end;
/
