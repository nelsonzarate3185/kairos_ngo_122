prompt --application/shared_components/files/impresora_png
begin
--   Manifest
--     APP STATIC FILES: 122
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773DF80000000970485973000000B1000000B101C62D498D0000001974455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000003114944415448';
wwv_flow_imp.g_varchar2_table(2) := '89A5954D68134114C7FFB3339BCD6EB24D6D529B44A51FD12A6A510B8A281E7AF01BF162416F0ABD8B887850D08B67C1BBE84DF4A4961E3C4805C51EFC443D6950B14A2C264D9BB49BCDEEEC8C075B6DE224A6F82ECBFEDFDBF9BD37EFCD2C81C266A45C';
wwv_flow_imp.g_varchar2_table(3) := '1112B840005BE5575989CB8EF76EF085B7B10B4384B88B3A53051B010E0504678B1C08646B8002978E2F89258AFC2E80C74D0100745F0055D16AFE8027900390A10474A9DE08B06CEB0E698FD261B2B65E274B5FAEDE1AEFD1347672E740CFD6FE75AB8F';
wwv_flow_imp.g_varchar2_table(4) := '1678EB00677AF6D5F893B7F785E037CF9C18FABCA8D754C018EB11425EFA512CA17F9915CC96E7B7795E751BD3E41B00BF016478F80EB533B98BD090669A66858C70B7651AABDA6CCB6646C86815509A2D97CA73EE9CE7BAEFFC804F1349BE95B2C92B2C';
wwv_flow_imp.g_varchar2_table(5) := 'BE696A4F658E5F2ECE1421658B23A3B6B685E70600A09422B59EBC6699EE7E3B3F53841D6B3CF25F2727E1797E8D160AE958BD664D53627B477C9085A356D9A8CC21A4778052AA0C8C44A228E4F3C0628104882712304D53191F0401AAD52A6C2B32C316';
wwv_flow_imp.g_varchar2_table(6) := '17A8384EC34CC2760CE915891A8D701FE09E329E520ACBB200D44D11E73EDC4A15810880857EC4DADB51DEBE1F52ABAD8E88006D13A348DA798475179FCB49E8A922FC2F9D35719A3AE7FF6A768DD59D031D515BFF2BC87EF60092D5EA84FF6AFAF7F29F';
wwv_flow_imp.g_varchar2_table(7) := 'ADABCFFE2F008F2520CCE87FE40B684E19AC5450039C8DBBE04C7D854D25D6C62D18ACC10E2AECD3740553AE80D93B80D8C4A81A20350DB9B15BC80C647064CF3138CBB84DAD89E7783DF6107D23E76B7426022DEFCCCF432C4C4DEAF009C4BB4CB8550F';
wwv_flow_imp.g_varchar2_table(8) := 'A363E3FF3CDD8410EC3B388468EF7AA40EAF04000442A0EABA8818E62776FAF8EE77D76E8FEFADCCBBC33297DD120110D7CD4E8D90BE78A2E3F7B8362180108228233F12F03E229785655A1FA256E4C5B95307EE11D537152E4F167C71233BF9BDA50AD2';
wwv_flow_imp.g_varchar2_table(9) := 'AB928852ED7A3A4C46EAFD0D7F389ECFF1EAC5DB96009D2B13000D29FD0D01BACEB0757073D3C597C636B2861E1108140AC5967A904C7501543DD26A0045366CB0A73B063777355F7D0947C34B95FE1380031DDDFC3CA2DC0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(106157488223789198)
,p_file_name=>'impresora.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
