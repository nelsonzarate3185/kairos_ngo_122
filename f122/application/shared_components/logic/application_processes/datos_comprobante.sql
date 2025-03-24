prompt --application/shared_components/logic/application_processes/datos_comprobante
begin
--   Manifest
--     APPLICATION PROCESS: datos_comprobante
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(5934834317436374)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'datos_comprobante'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DESC_MONEDA VARCHAR(200);',
'V_VENDEDOR VARCHAR(500);',
'V_MENSAJE_EX VARCHAR(1000);',
'',
'BEGIN',
'	',
'	BEGIN',
'	  SELECT LTRIM( RTRIM( NVL( P.NOMBRE, P.NOMB_FANTASIA ) ) )',
'		INTO V_VENDEDOR',
'		FROM FV_VENDEDORES U, PERSONAS P',
'	   WHERE U.COD_EMPRESA = :P_COD_EMPRESA',
'		 AND U.COD_VENDEDOR = apex_application.g_x02',
'		 AND U.COD_PERSONA = P.COD_PERSONA;',
'	EXCEPTION',
'	  WHEN OTHERS THEN',
'		V_VENDEDOR := NULL;',
'	END;',
'	',
'	BEGIN',
'	  SELECT DESCRIPCION',
'		INTO V_DESC_MONEDA',
'		FROM MONEDAS',
'	   WHERE COD_MONEDA = apex_application.g_x01;',
'	EXCEPTION',
'	  WHEN OTHERS THEN',
'		--V_DESC_MONEDA := NULL;',
'		V_MENSAJE_EX := ''ERROR EN LA TABLA DE MONEDAS - '' || SQLERRM;',
'		--RAISE FORM_TRIGGER_FAILURE;',
'	END;',
'	',
'    ',
'	IF V_VENDEDOR IS NULL AND V_DESC_MONEDA IS NULL THEN',
'        apex_json.open_object;',
'    		apex_json.write(',
'    			p_name => ''estado'',',
'    			p_value => 0',
'    		);',
'',
'            apex_json.write(',
'    			p_name => ''error'',',
'    			p_value => V_MENSAJE_EX',
'    		);',
'        apex_json.close_object; ',
'	ELSE',
'        apex_json.open_object;',
'    		apex_json.write(',
'    			p_name => ''estado'',',
'    			p_value => 1',
'    		);',
'    	',
'    		apex_json.write(',
'    			p_name => ''nombre_vendedor'',',
'    			p_value => V_VENDEDOR',
'    		);',
'    		',
'    		apex_json.write(',
'    			p_name => ''desc_moneda'',',
'    			p_value => V_DESC_MONEDA',
'    		);',
'         apex_json.close_object;',
'		',
'	END IF;',
'	',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
