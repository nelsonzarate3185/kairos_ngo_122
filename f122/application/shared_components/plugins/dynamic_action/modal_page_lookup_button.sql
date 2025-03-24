prompt --application/shared_components/plugins/dynamic_action/modal_page_lookup_button
begin
--   Manifest
--     PLUGIN: MODAL PAGE LOOKUP BUTTON
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
 p_id=>wwv_flow_imp.id(11319548825862797)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MODAL PAGE LOOKUP BUTTON'
,p_display_name=>'Modal Page Lookup Button'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','MODAL PAGE LOOKUP BUTTON'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'FUNCTION F_RENDER (',
'        P_DYNAMIC_ACTION   IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'        P_PLUGIN           IN APEX_PLUGIN.T_PLUGIN',
'    ) RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT AS',
'        VR_RESULT         APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'        vURL         varchar2(4000);',
'        vAPPID        varchar2(20);',
'        i                number(5,0);',
'        vPITEM        varchar2(50);',
'        vVALUE        varchar2(50);',
'    BEGIN',
'',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_01  - Lookup Page Items',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_02  - Lookup Page ID',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_03  - Returning Page Item',
'        --P_DYNAMIC_ACTION.ATTRIBUTE_04  - Lookup Application ID',
'',
'        vAPPID := nvl(P_DYNAMIC_ACTION.ATTRIBUTE_04,''&APP_ID.'');',
'        ',
'        vURL := apex_util.prepare_url(''f?p=''||vAPPID||'':''||P_DYNAMIC_ACTION.ATTRIBUTE_02||'':&SESSION.::NO:RP:'', p_triggering_element => ''$("#openDialogIcon")'');',
'',
'        vURL := replace(vURL,''"'',''\"'');',
'',
'        -- get the first Lookup Page Item ID',
'        select regexp_substr(P_DYNAMIC_ACTION.ATTRIBUTE_01,''[^,]+'', 1, 1) into vPITEM from dual;',
'     ',
'        VR_RESULT.JAVASCRIPT_FUNCTION   := ''',
'        function () { ',
'            var btn = "#" + $(this)[0].action.affectedButtonId;',
'            var divCon = $("#'' || vPITEM || ''").closest(".t-Form-itemWrapper");',
'            $(btn).appendTo(divCon);',
'            //$(btn).removeClass();',
'            $(btn).addClass("ui-datepicker-trigger a-Button a-Button--calendar"); ',
'',
'            $(btn).click( function () {',
'                // LOOKUP is an application process created for this application',
'                $("body").append("<div id=\"openDialogIcon\"></div>");',
'                $("#openDialogIcon").on("apexafterclosedialog",function(e,data){'';',
'                ',
'                    ',
'                    i := 1;',
'                    WHILE TRUE',
'                    LOOP',
'                        select regexp_substr(P_DYNAMIC_ACTION.ATTRIBUTE_01,''[^,]+'', 1, i), regexp_substr(P_DYNAMIC_ACTION.ATTRIBUTE_03,''[^,]+'', 1, i) into vPITEM, vVALUE from dual;',
'                        if vPITEM is null or vVALUE is null then',
'                            exit;',
'                        end if;',
'                        VR_RESULT.JAVASCRIPT_FUNCTION   := VR_RESULT.JAVASCRIPT_FUNCTION || ''',
'                                apex.item("''||vPITEM||''").setValue( data["''||vVALUE||''"]);'';',
'                        i := i + 1;',
'                    END LOOP;',
'                    ',
'                    ',
'        VR_RESULT.JAVASCRIPT_FUNCTION   := VR_RESULT.JAVASCRIPT_FUNCTION  || ''',
'                    ',
'                    $(this).remove();',
'                });',
'',
'                apex.navigation.redirect("''||vURL||''");',
'',
'            });',
'',
'            ',
'        }'';',
'',
'        RETURN VR_RESULT;',
'    END;',
'    ',
''))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_standard_attributes=>'BUTTON:REQUIRED'
,p_substitute_attributes=>true
,p_reference_id=>159368815861382560
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This plugin is an dynamic action for ',
'1. moving a button after another page item as lookup button',
'2. calling a modal page with return value',
'3. supports calling a modal page from different application (provided that both applications are sharing the same authentication session cookies)'))
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(11319848650862800)
,p_plugin_id=>wwv_flow_imp.id(11319548825862797)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Lookup Page Items'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The Page Item(s) on this page to be lookup.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(11320274070862800)
,p_plugin_id=>wwv_flow_imp.id(11319548825862797)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Lookup Page ID'
,p_attribute_type=>'PAGE NUMBER'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The Lookup Page ID (a Modal Page)  for facilitating the search feature.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(11320607037862800)
,p_plugin_id=>wwv_flow_imp.id(11319548825862797)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Returning Page Items'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The Page Item in Lookup Page to be returned'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(11321028233862801)
,p_plugin_id=>wwv_flow_imp.id(11319548825862797)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Lookup Application ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'The Lookup Page can be called from different application (provided that both applications are sharing the same authentication session cookies)'
);
wwv_flow_imp.component_end;
end;
/
