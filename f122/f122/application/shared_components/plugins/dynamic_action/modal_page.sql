prompt --application/shared_components/plugins/dynamic_action/modal_page
begin
--   Manifest
--     PLUGIN: MODAL PAGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(13056734933477259)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MODAL PAGE'
,p_display_name=>'Modal Page'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','MODAL PAGE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION F_RENDER (',
'        P_DYNAMIC_ACTION   IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'        P_PLUGIN           IN APEX_PLUGIN.T_PLUGIN',
'    ) RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT AS',
'        VR_RESULT         APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'        vURL         varchar2(4000);',
'        i            number(5,0);',
'        vPITEM       varchar2(50);',
'        vIGCOL       varchar2(50);',
'        VR_ITEMS        varchar2(4000);',
'    BEGIN',
'',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_01  - Returning Page Item(s)',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_02  - Returning IG Column(s)',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_03  - OK Button ID',
'',
'        VR_RESULT.JAVASCRIPT_FUNCTION   := ''',
'        function () { ',
'            var rgn = "#" + $(this)[0].action.affectedRegionId;',
'            var modelColumns = Object.keys(apex.region($(this)[0].action.affectedRegionId).widget().interactiveGrid("getViews", "grid").modelColumns);',
'            $(rgn).on("interactivegridselectionchange",function(event, ui) {',
'                var model = ui.model;',
'                var records = ui.selectedRecords;',
''';',
'',
'        i := 1;',
'        WHILE TRUE',
'        LOOP',
'            select regexp_substr(P_DYNAMIC_ACTION.ATTRIBUTE_01,''[^,]+'', 1, i), regexp_substr(P_DYNAMIC_ACTION.ATTRIBUTE_02,''[^,]+'', 1, i) into vPITEM, vIGCOL from dual;',
'            if vPITEM is null or vIGCOL is null then',
'                exit;',
'            end if;',
'            VR_RESULT.JAVASCRIPT_FUNCTION   := VR_RESULT.JAVASCRIPT_FUNCTION || ''',
'                    var returnval = "";',
'                    if ( records.length > 0 ) {',
'                        for ( i = 0; i < records.length; i++ ) {',
'                            record = records[i];',
'                            if ( returnval != "") {',
'                                returnval = returnval +",";',
'                            }',
'                            returnval = returnval + model.getValue(record, "''||vIGCOL||''");',
'                        }',
'                    }',
'                    apex.item("''||vPITEM||''").setValue(returnval);',
'            '';',
'            i := i + 1;',
'        END LOOP;',
'        ',
'        VR_RESULT.JAVASCRIPT_FUNCTION   := VR_RESULT.JAVASCRIPT_FUNCTION || ''',
'                   });'';',
'',
'',
'        VR_RESULT.JAVASCRIPT_FUNCTION   := VR_RESULT.JAVASCRIPT_FUNCTION || ''',
'            // Region Double Click',
'            $(rgn).on("dblclick",function(event, ui) {',
'                  apex.navigation.dialog.close(true,["''||replace(P_DYNAMIC_ACTION.ATTRIBUTE_01,'','',''","'')||''"]);     ',
'               });',
'               ',
'            // OK Button    ',
'                $("#''||P_DYNAMIC_ACTION.ATTRIBUTE_03||''").on("click",function(event, ui) {',
'                      apex.navigation.dialog.close(true,["''||replace(P_DYNAMIC_ACTION.ATTRIBUTE_01,'','',''","'')||''"]);     ',
'                   });',
'            ',
'        }'';',
'',
'        RETURN VR_RESULT;',
'    END;',
''))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_standard_attributes=>'REGION:REQUIRED'
,p_substitute_attributes=>true
,p_reference_id=>159366800444321351
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This plugin is an dynamic action for',
'1. affecting Interactive Grid Region',
'2. selected value(s) will be stored in a defined Page Item (multiple selection supported)',
'3. on region double click, close dialog and return value',
'4. on clicking defined OK button for close dialog and return value ',
'Note: You Page should be Modal Page'))
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13057034105477260)
,p_plugin_id=>wwv_flow_imp.id(13056734933477259)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Returning Page Items'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The Page Item for performing lookup.  After the Lookup Dialog closed, the selected value will be returned to it.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13057467674477260)
,p_plugin_id=>wwv_flow_imp.id(13056734933477259)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Returning IG Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_help_text=>'nteractive Grid Column ID to be returned.  e.g. EMPNO'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13057872259477260)
,p_plugin_id=>wwv_flow_imp.id(13056734933477259)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'OK Button ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'The Static ID of OK Button or Accept Button.  This trigger the dialog close with return IG Column Value(s).'
);
wwv_flow_imp.component_end;
end;
/
