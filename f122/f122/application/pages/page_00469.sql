prompt --application/pages/page_00469
begin
--   Manifest
--     PAGE: 00469
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
 p_id=>469
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - ATC_TICKET_STNGO'
,p_alias=>'ATC-TICKET-STNGO'
,p_step_title=>'GENERACION DE TICKET PARA ATENCION'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  /*',
'const createReportUrl1 = (reportName, parametros) => {',
'  const params = parametros;',
'',
'  for (let input of $(''.report-input'')) {',
'    const id = $(input).attr(''id'');',
'    const value = $v(id) + '''';',
'    params.push({',
'      name: id.replace(''P&APP_PAGE_ID._'', ''''),',
'      value',
'    });',
'  }',
'',
'  const paramsUrl = params.map(({ name, value }) => `${name}=${value}`).join(''&'');',
'  var today = new Date();',
'  var vREPORTE = ''ticket'' + today.toLocaleString();',
'',
'  const fileName = vREPORTE + ''.pdf''; // Nuevo nombre del archivo',
'',
'  const url = `https://ngosaeca.com.py/reportes/rest_v2/reports/reports/caticket.pdf?p_id_ticket=3&j_username=jasperadmin&j_password=jasperadmin`;',
'',
'  fetch(url)',
'    .then(response => response.blob())',
'    .then(blob => {',
'      // Crear enlace de descarga',
'      const downloadLink = document.createElement(''a'');',
'      downloadLink.href = URL.createObjectURL(blob);',
'      downloadLink.download = fileName;',
'    ',
'',
'      // Simular clic en el enlace de descarga',
'   //   window.print(url);',
'      downloadLink.click();',
'',
'      // Liberar la URL temporal del objeto blob',
'      URL.revokeObjectURL(downloadLink.href);',
'',
'',
'',
'      var myWindow=window.open(URL.createObjectURL(blob));',
'        myWindow.focus();',
'        myWindow.open();',
'        myWindow.close();',
'    });',
'} ',
'',
'*/ ',
' ',
'const createReportUrl1 = (reportName, parametros) => {',
'      const params = parametros',
'   ',
'      for(let input of $(''.report-input'')) {',
'            const id = $(input).attr(''id'')',
'       ',
'        const value = $v(id) + ''''',
'            params.push({',
'                  name: id.replace(''P&APP_PAGE_ID._'', ''''),',
'                  value',
'            })',
'      }',
'',
'    const paramsUrl = params.map(({name,value}) => `${name}=${value}`).join(''&'')',
'    var today = new Date();',
'    var vREPORTE = ''ticket'' + today.toLocaleString();',
'',
'     const url =  `https://ngosaeca.com.py/reportes/rest_v2/reports/reports/caticket.pdf?p_id_ticket=3&j_username=jasperadmin&j_password=jasperadmin`  ',
'      window.open(url);',
'',
'     ',
'}',
'',
'/*',
'const createReportUrl1 = (reportName, parametros) => {',
'      const params = parametros',
'   ',
'      for(let input of $(''.report-input'')) {',
'            const id = $(input).attr(''id'')',
'       ',
'        const value = $v(id) + ''''',
'            params.push({',
'                  name: id.replace(''P&APP_PAGE_ID._'', ''''),',
'                  value',
'            })',
'      }',
'',
'    const paramsUrl = params.map(({name,value}) => `${name}=${value}`).join(''&'')',
'      ',
'    var today = new Date();',
'    var vREPORTE = ''ticket''+today.toLocaleString();',
'',
'    var req = new XMLHttpRequest();',
'        req.open(''GET'',',
'                ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/caticket.pdf?p_id_ticket=3&j_username=jasperadmin&j_password=jasperadmin''',
'                , true);',
'',
'                ',
'            req.withCredentials = false;',
'            req.responseType = "blob";',
'            req.onload = function (event) {',
'                var blob = req.response;',
'                console.log(blob.size);',
'                var link=document.createElement(''a'');',
'                link.href=window.URL.createObjectURL(blob);',
'                link.download=vREPORTE;',
'              //  window.location.assign(blob);',
'              link.click();',
'              // alert(window.URL.createObjectURL(blob));',
'            //    window.open(window.URL.createObjectURL(blob), ''_self'');              ',
'           // sleep(4000); click',
'           // window.open(vREPORTURL,"_self");',
'           // sleep(4000);',
'        //    window.close();',
'        };',
'',
'        req.send(); ',
'}',
' ',
'',
'*/',
'',
'',
' const Keyboard = {',
'  elements: {',
'    main: null,',
'    keysContainer: null,',
'    keys: []',
'  },',
'',
'  eventHandlers: {',
'    oninput: null,',
'    onclose: null',
'  },',
'',
'  properties: {',
'    value: "",',
'    capsLock: false',
'  },',
'',
'  init() {',
'    this.elements.main = document.createElement("div");',
'    this.elements.keysContainer = document.createElement("div");',
'',
'    this.elements.main.classList.add("keyboard", "keyboard-hidden");',
'    this.elements.keysContainer.classList.add("keyboard-keys");',
'    this.elements.keysContainer.appendChild(this._createKeys());',
'',
'    this.elements.keys = this.elements.keysContainer.querySelectorAll(',
'      ".keyboard-key"',
'    );',
'',
'    this.elements.main.appendChild(this.elements.keysContainer);',
'    document.body.appendChild(this.elements.main);',
'',
'    document.querySelectorAll(".keyboard-input").forEach((element) => {',
'      element.addEventListener("focus", () => {',
'        this.open(element.value, (currentValue) => {',
'          element.value = currentValue;',
'          ',
'        });',
'      });',
'    });',
'  },',
'',
'  _createKeys() {',
'    const fragment = document.createDocumentFragment();',
'    const keyLayout = [',
'      "1",',
'      "2",',
'      "3",',
'      "4",',
'      "5",',
'      "6",',
'      "7",',
'      "8",',
'      "9",',
'      "0",',
'      "backspace",',
'      "q",',
'      "w",',
'      "e",',
'      "r",',
'      "t",',
'      "y",',
'      "u",',
'      "i",',
'      "o",',
'      "p",',
'      "caps",',
'      "a",',
'      "s",',
'      "d",',
'      "f",',
'      "g",',
'      "h",',
'      "j",',
'      "k",',
'      "l",',
'      "enter",',
'      "done",',
'      "z",',
'      "x",',
'      "c",',
'      "v",',
'      "b",',
'      "n",',
'      "m",',
'      "-",',
'      ".",',
'      "?",',
'      "space"',
'    ];',
'    ',
'    const createIconHTML = (icon_name) => {',
'      return `<i class="material-icons">${icon_name}</i>`;',
'    };',
'',
'    keyLayout.forEach((key) => {',
'      const keyElement = document.createElement("button");',
'      const insertLineBreak =',
'        ["backspace", "p", "enter", "?"].indexOf(key) !== -1;',
'',
'      keyElement.classList.add("keyboard-key");',
'',
'      switch (key) {',
'        case "backspace":',
'          keyElement.classList.add("keyboard-wide");',
'          keyElement.innerHTML = createIconHTML("Borrar");',
'          keyElement.addEventListener("click", () => {',
'            this.properties.value = this.properties.value.substring(',
'              0,',
'              this.properties.value.length - 1',
'            );',
'            this._triggerEvent("oninput");',
'          });',
'          break;',
'',
'        case "caps":',
'          keyElement.classList.add("keyboard-wide", "keyboard-active");',
unistr('          keyElement.innerHTML = createIconHTML("Bloq. May\00FAs");'),
'          keyElement.addEventListener("click", () => {',
'            this._toggleCapsLock();',
'            keyElement.classList.toggle(',
'              "keyboard-check",',
'              this.properties.capsLock',
'            );',
'          });',
'          break;',
'',
'        case "enter":',
'          keyElement.classList.add("keyboard-wide");',
'          keyElement.innerHTML = createIconHTML("enter");',
'          keyElement.addEventListener("click", () => {',
'            ///this.properties.value += "\n";',
'            $(''#btn1'').click();',
'',
'          });',
'          break;',
'',
'        case "space":',
'          keyElement.classList.add("keyboard-extrawide");',
'          keyElement.innerHTML = createIconHTML("Espacio");',
'          keyElement.addEventListener("click", () => {',
'            this.properties.value += " ";',
'            this._triggerEvent("oninput");',
'          });',
'          break;',
'',
'        case "done":',
'          keyElement.classList.add("keyboard-wide", "keyboard-dark");',
'          keyElement.innerHTML = createIconHTML("ocultar");',
'          keyElement.addEventListener("click", () => {',
'            this.close();',
'            this._triggerEvent("onclose");',
'          });',
'          break;',
'        default:',
'          keyElement.textContent = key.toLowerCase();',
'          keyElement.addEventListener("click", () => {',
'            this.properties.value += this.properties.capsLock',
'              ? key.toUpperCase()',
'              : key.toLowerCase();',
'            this._triggerEvent("oninput");',
'          });',
'          break;',
'      }',
'      fragment.appendChild(keyElement);',
'',
'      if (insertLineBreak) {',
'        fragment.appendChild(document.createElement("br"));',
'      }',
'    });',
'',
'    return fragment;',
'  },',
'',
'  _triggerEvent(name) {',
'    if (typeof this.eventHandlers[name] === "function") {',
'      this.eventHandlers[name](this.properties.value);',
'    }',
'  },',
'',
'  _toggleCapsLock() {',
'    this.properties.capsLock = !this.properties.capsLock;',
'',
'    for (const key of this.elements.keys) {',
'      if (key.childElementCount === 0) {',
'        key.textContent = this.properties.capsLock',
'          ? key.textContent.toUpperCase()',
'          : key.textContent.toLowerCase();',
'      }',
'    }',
'  },',
'',
'  open(initialValue, oninput, onclose) {',
'    this.properties.value = initialValue || "";',
'    this.eventHandlers.oninput = oninput;',
'    this.eventHandlers.onclose = onclose;',
'    this.elements.main.classList.remove("keyboard-hidden");',
'  },',
'',
'  close() {',
'    this.properties.value = "";',
'    this.eventHandlers.oninput = oninput;',
'    this.eventHandlers.onclose = onclose;',
'    this.elements.main.classList.add("keyboard-hidden");',
'  }',
'}; ',
'document.getElementById("P469_NOMBRE").classList.remove("keyboard-input");',
'document.getElementById("P469_RUC").classList.add("keyboard-input"); ',
'Keyboard.init();',
'',
'',
'',
'function  refrescargrilla() {',
'    apex.submit();',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-items {',
'    margin-top: 10px;',
'}',
'',
'',
'.t-Body-mainContent, .t-Footer, .t-Header',
'                    { background-color:  #001b3f;',
'                    background-image:  linear-gradient(15deg, #0f4667 0%, #2a6973 150%)  !important;',
'            ',
'                    }',
'                    ',
'.t-Header-branding, #floating-menu { visibility: hidden;}',
'',
'',
'#DATOS {',
'        background-color:  darkblue;',
'        border-color: #FFED00 !important; ',
'        position: fixed;',
'        top: 40%;',
'        left: 50%;',
'        transform: translate(-50%, -50%);',
'        height: 45%; ',
'        width: 60%;      ',
'',
'        border-radius: 0.5rem; ',
'        box-shadow: 0px 0px 30px 1px #9499ac; ',
'} ',
' .t-Form-fieldContainer--stacked .t-Form-labelContainer {',
'     text-align: center!important; }',
'',
' #P469_RUC_LABEL{',
'     font-size: 50px;   ',
'     margin-bottom: 2%;',
'     font-family: ''Oswald'', sans-serif;',
'     color: #FFED00;',
' }',
'',
'#P469_NOMBRE_LABEL ',
'{ ',
'     font-size: 40px;   ',
'     margin-bottom: 1%;',
'     font-family: ''Oswald'', sans-serif;',
'     color: #FFED00; ',
'',
'}',
'',
'.t-Login-region { ',
'        margin-left: 40%;;',
'        }',
' ',
' #btn1{',
'            border: 1px solid #487ab8; ',
'            color:darkblue ;  ',
'            font-size:  30px;',
'            height: 60px;       ',
'            border-radius: 0.5rem;',
'            background-color: yellow;',
'            background-image: linear-gradient(0deg, #f0e79a 10%, #FFED00 100%, YELLOW 30%);',
'            margin-left: 43%;',
' ',
'    }',
'',
' #btn1, #btn2, #btn3, #btn4, #btn5, #btn6, #btn7 {',
'            border: 1px solid #487ab8; ',
'            color: #001d3d ;  ',
'            font-size:  30px;',
'            height: 60px;       ',
'            border-radius: 0.5rem;',
'            background-color: #FFED00;',
'            background-image: linear-gradient(0deg, #f0e79a 10%, #FFED00 100%, YELLOW 30%); ',
'            ',
' ',
'    }',
'',
' #BTN_NOMBRE{',
'     ',
'            background-color: #c4ffb8; ',
'            color: #ff0000 ;  ',
'            font-size:  30px;',
'            height: 60px;       ',
'            border-radius: 0.5rem;',
'    }',
'',
'',
'',
'.t-Login-body .t-Form-inputContainer{padding: 0%; margin: 0%;}',
'',
' #P469_RUC{',
'     font-weight: bold;',
'     font-family:  ''Helvetica Neue'', Helvetica, Arial;',
'     border-radius: 1rem;  ',
'     font-size: 100px;   ',
'     height: 110px;  ',
'',
' }',
'',
'',
'#P469_NOMBRE ',
'{    border-radius: 1rem;',
'     color: #1b1b1b;',
'     font-size: 40px;  ',
'     font-weight: bold;',
'     width:100%;',
'     height: 60px; ',
'     ',
'',
'}',
' ',
'#P469_DATOS, #P469_DATOS1, #P469_TICKET ,#P469_RUC1 {',
'    text-align: center;',
'    background-color: transparent;',
'    border-color: transparent;',
'    font-weight: bold; ',
'    padding: 0%;',
'    margin: 0%;',
'}  ',
'',
'',
'#P469_DATOS, #P469_DATOS1 ,#P469_RUC1 {',
'    text-align: center;',
'    background-color: transparent;',
'    border-color: transparent;',
'    font-weight: bold; ',
'    padding: 0%;',
'    margin: 0%;',
'    font-family: "Times New Roman", Times, serif;',
'}  ',
'',
'#serv_selec .t-Region-body {padding: 0% !important;}',
'#serv_selec .a-ListView-item {',
'                                font-size: 20px !important;',
'                                color: #001d3d;    ',
'                             }',
'',
'.center{',
'  display: block;',
'  margin-left: auto;',
'  margin-right: auto;}',
'',
' ',
'#opciones .a-CardView-items { padding: 10px;}',
'',
'.a-CardView ,.a-CardView-item{',
'        border-radius: 40px !important;           ',
'        text-align: center;  ',
'        box-shadow: #0000002b 0px -23px 25px 0px inset, #00000026 0px -36px 30px 0px inset, #0000001a 0px -10px 10px 0px inset, 0 0px 3px 3px #f5ffc98c;',
'        /*',
'        background-color: #003f91;',
'        background: linear-gradient(145deg, #15224eea 0%, #0066ff 100%);',
'        /*#0000000f 0px 2px 1px, #f5ffc98c 0px 4px 2px, #f5ffc98c 0px 8px 4px, #f5ffc98c 0px 16px 8px, #f5ffc98c 0px 32px 16px;*/',
'      /*  rgb(33 150 243);',
'        box-shadow: 0 0px 3px 3px #f5ffc98c;*/ ',
'   }',
'',
'',
'    /*.a-CardView-header {background-color:#2196f3;}*/',
'   .a-CardView-title{    color: #01015a;/* #2196f3;*/  ',
'     }',
'',
'',
'  #opciones  .a-CardView-title{ ',
'    font-weight: bold;  ',
'    font-size: 50px; ',
'    }',
'   ',
'',
'  #servicios  .a-CardView-title{ ',
'    font-weight: bold;  ',
'    font-size: 25px; ',
'    }',
' ',
'.slide-in-bck-center {',
'	-webkit-animation: bounce-in-top 1.1s both;',
'	        animation: bounce-in-top 1.1s both;',
'}',
'',
'@-webkit-keyframes bounce-in-top {',
'  0% {',
'    -webkit-transform: translateY(-500px);',
'            transform: translateY(-500px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'    opacity: 0;',
'  }',
'  38% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'    opacity: 1;',
'  }',
'  55% {',
'    -webkit-transform: translateY(-65px);',
'            transform: translateY(-65px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  72% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  81% {',
'    -webkit-transform: translateY(-28px);',
'            transform: translateY(-28px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  90% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  95% {',
'    -webkit-transform: translateY(-8px);',
'            transform: translateY(-8px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'}',
'@keyframes bounce-in-top {',
'  0% {',
'    -webkit-transform: translateY(-500px);',
'            transform: translateY(-500px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'    opacity: 0;',
'  }',
'  38% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'    opacity: 1;',
'  }',
'  55% {',
'    -webkit-transform: translateY(-65px);',
'            transform: translateY(-65px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  72% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  81% {',
'    -webkit-transform: translateY(-28px);',
'            transform: translateY(-28px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  90% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  95% {',
'    -webkit-transform: translateY(-8px);',
'            transform: translateY(-8px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'}',
'',
'',
'',
'.slide-in-bottom {',
'	-webkit-animation: slide-in-bottom 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;',
'	        animation: slide-in-bottom 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;',
'}',
'@-webkit-keyframes slide-in-bottom {',
'  0% {',
'    -webkit-transform: translateY(1000px);',
'            transform: translateY(1000px);',
'    opacity: 0;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    opacity: 1;',
'  }',
'}',
'@keyframes slide-in-bottom {',
'  0% {',
'    -webkit-transform: translateY(1000px);',
'            transform: translateY(1000px);',
'    opacity: 0;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    opacity: 1;',
'  }',
'}',
'',
'/*',
'#servicios .a-CardView-items {',
'        display: inline-flex !important;  ',
'',
'}',
'#servicios .a-CardView  { ',
'        background: url(''https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/giant-bg.jpg'');',
'',
'}',
' */',
'#resumen .a-CardView  { background-color: #ffd166; align-items: center !important; }',
'',
'/*#servicios*/ .titserv{',
' margin-top: 1%;',
'    margin-bottom: 3%;',
'    color: #FFED00;',
'    font-weight: bold;  ',
'    font-size: 50px; ',
'    text-align: center;',
'}  ',
'',
'',
'#servicios .check    ',
'{   background-color: lightblue !important;',
'    background: lightblue !important;',
'    border: 5px solid;',
'    border-color: lightseagreen ; ',
'}',
'',
'',
'#servicios  .a-CardView-body { padding-top: 0px;',
'                    margin-top: 0px;',
'                    visibility:hidden;',
'                 } ',
'',
'',
'',
'/* --------------------- keyboard --------------------------- */',
'',
' body {',
'  margin: 0;',
'  height: 100vh;',
'  background: radial-gradient(circle at top, skyblue, steelblue);',
'  overflow: hidden;',
'}',
'',
'textarea {',
'  display: block;',
'  margin: 1em auto;',
'  padding: 0.4em;',
'  width: 90%;',
'  height: 30%;',
'  resize: none;',
'  font-size: 1.2em;',
'  font-family: system-ui, monospace;',
'  border-radius: 5px;',
'}',
'',
'.keyboard {',
'  position: fixed;',
'  left: 0;',
'  bottom: 0;',
'  width: 100%;',
'  padding: 5px 0;',
'  background:  #16697a; ',
'  box-shadow: 0 0 50px rgba(0, 0, 0, 0.5);',
'  user-select: none;',
'  transition: bottom 0.4s;',
'}',
'',
'.keyboard-hidden {',
'  bottom: -100%;',
'}',
'',
'.keyboard-keys {',
'  text-align: center;',
'}',
'',
'.keyboard-key {',
'  height: 45px;',
'  width: 6%;',
'  max-width: 90px;',
'  margin: 3px;',
'  border-radius: 4px;',
'  border: none;',
'  background: rgba(255, 255, 255, 0.2);',
'  color: #fff;',
'  font-size: 2rem;',
'  outline: none;',
'  cursor: pointer;',
'  display: inline-flex;',
'  align-items: center;',
'  justify-content: center;',
'  vertical-align: top;',
'  padding: 0;',
'  -webkit-tap-highlight-color: transparent;',
'  position: relative;',
'}',
'',
'.keyboard-key:active {',
'  background: rgba(255, 255, 255, 0.12);',
'}',
'',
'.keyboard-wide {',
'  width: 12%;',
'}',
'',
'.keyboard-extrawide {',
'  width: 36%;',
'  max-width: 500px;',
'}',
'',
'.keyboard-active::after {',
'  content: "";',
'  top: 10px;',
'  right: 10px;',
'  position: absolute;',
'  width: 8px;',
'  height: 8px;',
'  background: rgba(0, 0, 0, 0.4);',
'  border-radius: 50%;',
'}',
'',
'.keyboard-check::after {',
'  background: #08ff00;',
'}',
'',
'.keyboard-dark {',
'  background: #00000040;',
'}',
'',
'',
'/* --------------------- keyboard --------------------------- */',
'',
'#imprimir_reporte {',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(40085302490263650)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230816101022'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136461951842824243)
,p_plug_name=>'DATOS'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136462043230824244)
,p_plug_name=>'OPCIONES'
,p_region_name=>'opciones'
,p_region_css_classes=>'slide-in-bck-center'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>1000
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION as DES,',
'       SUBSTR(DESCRIPCION,0,3) as TIPO,',
'       ''#WORKSPACE_FILES#''||URL_IMG as IMG,',
'       ATRIB as card_color,',
'       COD_TIPO_CLIENTE as COD',
'FROM  CA_TICKETS_TIPO_CLIENTE ',
'WHERE NVL(ACTIVO,''S'')<>''N''',
';'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="titserv">INDIQUE TIPO DE CLIENTE</p>',
''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(139746444628636230)
,p_region_id=>wwv_flow_imp.id(136462043230824244)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_card_css_classes=>'&CARD_COLOR!ATTR.'
,p_title_adv_formatting=>false
,p_title_column_name=>'DES'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&IMG.'
,p_media_display_position=>'BODY'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(139746545430636231)
,p_card_id=>wwv_flow_imp.id(139746444628636230)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P469_TIPO'',''&COD.'');'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139747297374636238)
,p_plug_name=>'SERVICIOS'
,p_region_name=>'servicios'
,p_region_css_classes=>'slide-in-bck-center'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 codigo,',
'       C002  DESCRIPCION,',
'       C003 CHK,',
'       C004 IMG,',
'       SEQ_ID ,',
'       ''u-color-20''CARD_COLOR',
'from APEX_COLLECTIONS',
'where COLLECTION_NAME = ''ATC''',
';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="titserv">QU\00C9 SERVICIO/GESTI\00D3N DESEA REALIZAR</p>'),
''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(140133915255201233)
,p_region_id=>wwv_flow_imp.id(139747297374636238)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'&CARD_COLOR!ATTR.'
,p_title_adv_formatting=>false
,p_title_column_name=>'DESCRIPCION'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i class="fa fa-check-circle fa-3x" aria-hidden="true" style="color: #0008ff;"></i>',
' '))
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'IMG'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_description=>'&DESCRIPCION.'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(140135207342201246)
,p_card_id=>wwv_flow_imp.id(140133915255201233)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P469_SEQ_CHK'',''&SEQ_ID.'');'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144675201883356708)
,p_plug_name=>'TICKET GENERADO'
,p_region_css_classes=>'slide-in-bottom'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerTitle'
,p_plug_template=>wwv_flow_imp.id(40123958035263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' ',
'',
'<img src="#WORKSPACE_FILES#logo_ngo.png" alt="NGO SAECA" width="100" height="110" class="center" >',
' ',
'',
' <!--',
'',
'<h1 style="text-align:center;font-size:120px;" >&P469_TICKET.</h1> ',
'',
'',
'<h3 style="text-align:center;font-size:30px;" >NCI/RUC: &P469_RUC.</h3>',
'',
'',
'<h2 style="text-align:center;font-size:30px;" >&P469_DATOS1.</h2>',
'',
' -->'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</p>',
' ',
'<h2 style="text-align:center;color:#1d3557;">*** GRACIAS POR SU VISITA ***</h2>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140732517959581837)
,p_plug_name=>'Servicio Selecc'
,p_region_name=>'serv_selec'
,p_parent_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_region_css_classes=>'u-color-22'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent2:t-Region--hiddenOverflow:t-Form--noPadding:margin-top-md:margin-bottom-none'
,p_region_attributes=>'style="text-align:center; font-weight: bold;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 codigo,',
unistr('      ''\2022 ''||  C002  DESCRIPCION,'),
'       C003 CHK,',
'       C004 IMG,',
'       SEQ_ID ',
'from APEX_COLLECTIONS',
'where COLLECTION_NAME = ''ATC''',
'AND NVL(C003,''N'')=''S''',
';'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attribute_02=>'DESCRIPCION'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(175730710839649245)
,p_name=>'Tickets'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>8000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DBMS_LOB.GETLENGTH(archivo) archivo, mimetype ',
'from vw_ticket_adjuntos '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(175731161300649249)
,p_query_column_id=>1
,p_column_alias=>'ARCHIVO'
,p_column_display_sequence=>30
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:VW_TICKET_ADJUNTOS:ARCHIVO:ROWID::MIMETYPE:NOMBRE:FECHA::attachment:prueba:'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(175730998954649247)
,p_query_column_id=>2
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Mimetype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(358253875717461302)
,p_name=>'Reporte'
,p_region_name=>'reporte'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>8010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*',
' select id,',
'        fecha,',
'        cod_persona,',
'        id_documento,',
'        desc_archivo,',
'        archivo,',
'        usuario,',
'        mimetype,  ',
'        rowid,',
'            DBMS_LOB.GETLENGTH(archivo)DESCARGAR',
'   from inv.sm_archivo_datascan',
'*/',
'select ',
'   archivo, mimetype,  id_ticket,  fecha, nombre,',
'            DBMS_LOB.GETLENGTH(archivo)DESCARGAR',
'',
'   from vw_ticket_adjuntos',
';'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179508663623339886)
,p_query_column_id=>2
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>80
,p_column_heading=>'Mimetype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179509425145339886)
,p_query_column_id=>3
,p_column_alias=>'ID_TICKET'
,p_column_display_sequence=>150
,p_column_heading=>'Id Ticket'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179508281084339887)
,p_query_column_id=>4
,p_column_alias=>'FECHA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179509883712339886)
,p_query_column_id=>5
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>160
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179509018374339886)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>130
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:VW_TICKET_ADJUNTOS:ARCHIVO:ID_TICKET::MIMETYPE:NOMBRE:FECHA::attachment:<span id="DESCARGAR" class="fa fa-download-alt" aria-hidden="true"></span>:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140134464765201238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(139747297374636238)
,p_button_name=>'ATRAS2'
,p_button_static_id=>'btn4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ATRAS'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(175728698810649224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_button_name=>'Imprimir'
,p_button_static_id=>'imprimir_reporte'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140134590578201239)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(139747297374636238)
,p_button_name=>'RESUMEN'
,p_button_static_id=>'btn5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136462255128824246)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_button_name=>'aceptar1'
,p_button_static_id=>'btn1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139744831840636214)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136462043230824244)
,p_button_name=>'ATRAS'
,p_button_static_id=>'btn2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ATRAS'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144676820603356724)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136462043230824244)
,p_button_name=>'BTN_NOMBRE'
,p_button_static_id=>'BTN_NOMBRE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'NOMBRE'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136462197728824245)
,p_name=>'P469_RUC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_prompt=>unistr('INGRESE SU N\00DAMERO CI/RUC')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'style="text-align:center" readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'margin-top-md:margin-bottom-md:margin-left-sm:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136462338902824247)
,p_name=>'P469_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Nombre o Raz\00F3n Social')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align:center"'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139743842761636204)
,p_name=>'P469_COD_PERSONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139743906419636205)
,p_name=>'P469_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139746748287636233)
,p_name=>'P469_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140134156576201235)
,p_name=>'P469_SEQ_CHK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140135352249201247)
,p_name=>'P469_PROPIEDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140733319511581845)
,p_name=>'P469_TICKET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_item_default=>'T-51'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="text-align:center;font-size:120px;height: 130px"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144675657764356712)
,p_name=>'P469_DATOS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_tag_attributes=>'readonly style="text-align:center;font-size:x-large;line-height: normal;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144676000958356716)
,p_name=>'P469_DATOS1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="text-align:center;font-size:30px;color:#001d3d;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144676348787356719)
,p_name=>'P469_RUC1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="text-align:center;font-size:30px;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175729037102649228)
,p_name=>'P469_NRO_TICKET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(144675201883356708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186263647671274140)
,p_name=>'P469_DESCARGAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(136461951842824243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136462457113824248)
,p_name=>'DA_LOAD'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179494533498419306)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(358253875717461302)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140132728983201221)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139747297374636238)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144675365056356709)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144675201883356708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139746669199636232)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136462043230824244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144676406364356720)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_NOMBRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139744474423636210)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_RUC,P469_COD_PERSONA,P469_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139747194150636237)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''ATC'');',
'FOR R IN (select COD_TICKET,',
'               DESCRIPCION    ',
'        from CA_TICKETS_TIPO',
'        WHERE COD_EMPRESA=:P_COD_EMPRESA',
'        AND  ORIGEN =''STNGO'') LOOP',
'     APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ATC'',',
'                                     P_C001 => R.COD_TICKET,',
'                                     P_C002 => R.DESCRIPCION,',
'                                     P_C003 => ''N'',',
'                                     P_C004 =>''#WORKSPACE_FILES#ATC_''|| R.COD_TICKET||''.png'' )',
'                                 ;',
'',
'',
'END LOOP;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139747964349636245)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139747297374636238)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140730734652581819)
,p_event_id=>wwv_flow_imp.id(136462457113824248)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_RUC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136462660796824250)
,p_name=>'da_trae_datos'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136462255128824246)
,p_condition_element=>'P469_RUC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140730145681581813)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar el NCI/RUC y Nombre.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144676589923356721)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_NOMBRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139743707478636203)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_NOMBRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140732398879581835)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCOUNT NUMBER;',
'    VERROR EXCEPTION;',
'BEGIN ',
'    :P469_NOMBRE :=NULL;',
'    :P469_COD_PERSONA := NULL;',
'    select NVL(length(trim(TRANSLATE(:P469_RUC, ''1234567890-'', '' ''))),0)',
'    INTO VCOUNT',
'    from dual',
'    ;',
'',
'    IF VCOUNT<>0 THEN',
'        RAISE VERROR;',
'    END IF;',
'',
'',
'            BEGIN',
'                select P.COD_PERSONA, p.nombre',
'                INTO :P469_COD_PERSONA, :P469_NOMBRE',
'                from personas p,',
'                     ident_personas ci ',
'                where p.cod_persona=ci.cod_persona  ',
'                and   CI.COD_IDENT = ''CI''',
unistr('                and   ci.numero = TRANSLATE(:P469_RUC,'',.-:;!"\00B7$%&/()=?^*\00E7_{}\00AC\20AC~#@|\005C/'','' '')    '),
'                and   rownum=1;',
'            EXCEPTION',
'                WHEN NO_DATA_FOUND THEN',
'                        BEGIN',
'                        select P.COD_PERSONA, p.nombre',
'                        INTO :P469_COD_PERSONA, :P469_NOMBRE',
'                        from personas p, ',
'                             ident_personas ru     ',
'                        where p.cod_persona=ru.cod_persona',
'                        and   RU.COD_IDENT = ''RUC''',
unistr('                        and   ru.numero =  TRANSLATE(:P469_RUC,'',.:;!"\00B7$%&/()=?^*\00E7_{}\00AC\20AC~#@|\005C/'','' '')    '),
'                        and   rownum=1;',
'                        EXCEPTION',
'                            WHEN NO_DATA_FOUND THEN',
'                                    BEGIN',
'                                        select NOMBRES ||'' ''|| APELLIDOS',
'                                        INTO :P469_NOMBRE',
'                                        from cedulas_per',
unistr('                                        where numero=TRANSLATE(:P469_RUC,'',.-:;!"\00B7$%&/()=?^*\00E7_{}\00AC\20AC~#@|\005C/'','' '')'),
'                                        and   rownum=1;',
'                                    EXCEPTION                ',
'                                        WHEN OTHERS THEN         ',
'                                            :P469_COD_PERSONA:=NULL;',
'                                            :P469_COD_CLIENTE:=NULL; ',
'                                    END;',
'                            WHEN OTHERS THEN                       ',
'                                    :P469_NOMBRE :=NULL;',
'                                    :P469_COD_PERSONA:=NULL;',
'                                    :P469_COD_CLIENTE:=NULL; ',
'                        END; ',
'                WHEN OTHERS THEN ',
'                    :P469_NOMBRE :=NULL;',
'                    :P469_COD_PERSONA:=NULL;',
'                    :P469_COD_CLIENTE:=NULL; ',
'            END;',
'',
'',
'EXCEPTION',
'    WHEN VERROR THEN           ',
'                    :P469_NOMBRE :=NULL;',
'                    :P469_COD_PERSONA:=NULL;',
'                    :P469_COD_CLIENTE:=NULL;  ',
'            raise_application_error(-20000, ''Debe cargar correctamente el RUC/CI'' );',
'    WHEN OTHERS THEN    ',
'                    :P469_NOMBRE :=NULL;',
'                    :P469_COD_PERSONA:=NULL;',
'                    :P469_COD_CLIENTE:=NULL; ',
'END;'))
,p_attribute_02=>'P469_RUC,P469_NOMBRE'
,p_attribute_03=>'P469_COD_PERSONA,P469_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139743582025636201)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :P469_RUC IS NOT NULL AND :P469_NOMBRE IS NOT NULL THEN',
'    IF :P469_COD_PERSONA IS NOT NULL THEN',
'        BEGIN',
'                SELECT COD_CLIENTE',
'                INTO :P469_COD_CLIENTE',
'                FROM CC_CLIENTES',
'                WHERE COD_EMPRESA=:P_COD_EMPRESA',
'                AND   COD_PERSONA=:P469_COD_PERSONA',
'                ;',
'        EXCEPTION ',
'            WHEN OTHERS THEN',
'                :P469_COD_CLIENTE:=NULL;',
'        END ;',
'    END IF;',
'    :P469_RUC1:=:P469_RUC;',
' ELSE',
'     :P469_NOMBRE:=Null;',
'     raise_application_error(-20000, ''Debe completar los datos: RUC/Nombre'');',
' END IF;',
''))
,p_attribute_02=>'P469_RUC,P469_NOMBRE,P469_COD_PERSONA'
,p_attribute_03=>'P469_COD_CLIENTE,P469_RUC1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139744687234636212)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136462043230824244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139744701708636213)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136461951842824243)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140730922737581821)
,p_event_id=>wwv_flow_imp.id(136462660796824250)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $(".keyboard").attr( ''style'',''visibility:hidden'' );  ',
'    document.getElementById("BTN_NOMBRE").innerHTML = $v(''P469_NOMBRE'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139744148063636207)
,p_name=>'DA_trae_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_COD_PERSONA'
,p_condition_element=>'P469_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139744270979636208)
,p_event_id=>wwv_flow_imp.id(139744148063636207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select COD_CLIENTE',
'    into :P469_COD_CLIENTE',
'    from cc_clientes ',
'    where cod_empresa= :P_COD_EMPRESA',
'    and  COD_PERSONA= :P469_COD_PERSONA ;',
'',
'exception',
'    when others then',
'           :P469_COD_CLIENTE:= null;',
'end;'))
,p_attribute_02=>'P469_COD_PERSONA'
,p_attribute_03=>'P469_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139744343032636209)
,p_event_id=>wwv_flow_imp.id(139744148063636207)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139745095241636216)
,p_name=>'DA_ATRAS_DATOS'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139744831840636214)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139745177314636217)
,p_event_id=>wwv_flow_imp.id(139745095241636216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136461951842824243)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139745244932636218)
,p_event_id=>wwv_flow_imp.id(139745095241636216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136462043230824244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140731092268581822)
,p_event_id=>wwv_flow_imp.id(139745095241636216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $(".keyboard").attr( ''style'',''visibility:visible'' ); ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139746904721636235)
,p_name=>'DA_TIPO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_TIPO'
,p_condition_element=>'P469_TIPO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139747060302636236)
,p_event_id=>wwv_flow_imp.id(139746904721636235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139747297374636238)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140729715139581809)
,p_event_id=>wwv_flow_imp.id(139746904721636235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136462043230824244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144676161135356717)
,p_event_id=>wwv_flow_imp.id(139746904721636235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION  ',
'INTO :P469_DATOS1',
'FROM  CA_TICKETS_TIPO_CLIENTE ',
'WHERE COD_TIPO_CLIENTE = :P469_TIPO ;'))
,p_attribute_02=>'P469_TIPO'
,p_attribute_03=>'P469_DATOS1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140134278523201236)
,p_name=>'da_chk_collection'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_SEQ_CHK'
,p_condition_element=>'P469_SEQ_CHK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140134387808201237)
,p_event_id=>wwv_flow_imp.id(140134278523201236)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VBOL VARCHAR2(1);',
'BEGIN',
'    SELECT DECODE(NVL(C003,''N''),''N'',''S'',''N'') --- SI YA ESTA CHECK, ENTONCES DESCHECK',
'          --- ,DECODE(NVL(C003,''N''),''N'',''u-color-29 u-color-19-border'',''u-color-2 u-color-7-border'')',
'    INTO VBOL',
'    FROM apex_collectionS',
'    WHERE collection_name = ''ATC''',
'    AND SEQ_ID = :P469_SEQ_CHK',
'    ;',
' ',
'    :P469_PROPIEDAD:= VBOL;',
'',
'          apex_collection.update_member_attribute(p_collection_name => ''ATC'',',
'                                                  p_seq             => :P469_SEQ_CHK,',
'                                                  p_attr_number     => ''3'',',
'                                                  p_attr_value      => VBOL);',
'',
'END;'))
,p_attribute_02=>'P469_SEQ_CHK,P469_PROPIEDAD'
,p_attribute_03=>'P469_PROPIEDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140135411167201248)
,p_name=>'da_setea_clase'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_PROPIEDAD'
,p_condition_element=>'P469_PROPIEDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140135522918201249)
,p_event_id=>wwv_flow_imp.id(140135411167201248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var indice = $v("P469_SEQ_CHK")-1;',
' if ($v("P469_PROPIEDAD")  ===''S'')',
' {  ',
'    $("ul li[data-id="+indice+"] .a-CardView-body").attr( ''style'',''visibility:visible'' );   ',
'',
'     ',
'    $("ul li[data-id="+indice+"] .a-CardView ").addClass( ''check'' ); ',
'',
' }',
' else',
' { ',
'    $("ul li[data-id="+indice+"] .a-CardView-body").attr( ''style'',''visibility:hidden'' );   ',
'',
'    $("ul li[data-id="+indice+"] .a-CardView ").removeClass( ''check'' );   ',
'',
'',
' }',
' ',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140729206549581804)
,p_event_id=>wwv_flow_imp.id(140135411167201248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert($("a-CardView-item[data-rownum="+$v("P469_SEQ_CHK")+"]"));'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140729838516581810)
,p_name=>'New'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140134464765201238)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140729906945581811)
,p_event_id=>wwv_flow_imp.id(140729838516581810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136462043230824244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140730072018581812)
,p_event_id=>wwv_flow_imp.id(140729838516581810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139747297374636238)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140731134372581823)
,p_name=>'da_get_focus_ruc'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140731286809581824)
,p_event_id=>wwv_flow_imp.id(140731134372581823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'document.getElementById("P469_NOMBRE").classList.remove("keyboard-input");',
'document.getElementById("P469_RUC").classList.add("keyboard-input"); ',
'Keyboard.init();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140731367916581825)
,p_name=>'da_get_focus_nom'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_NOMBRE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140731707418581829)
,p_event_id=>wwv_flow_imp.id(140731367916581825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'document.getElementById("P469_NOMBRE").classList.add("keyboard-input");',
'document.getElementById("P469_RUC").classList.remove("keyboard-input"); ',
'Keyboard.init();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140732736394581839)
,p_name=>'da_resumen'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140134590578201239)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144676759744356723)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VTIPO_TKT VARCHAR2(100);',
'    VNRO_TKT  VARCHAR2(150);',
'    VERROR EXCEPTION;',
'BEGIN ',
'    select C001',
'    INTO VTIPO_TKT',
'    from APEX_COLLECTIONS',
'    where COLLECTION_NAME = ''ATC''',
'    AND NVL(C003,''N'')=''S'' ',
'    AND ROWNUM=1',
'    ;  ',
'    ',
'',
'    IF VTIPO_TKT = ''X'' THEN',
'        raise_application_error(-20000, ''Debe seleccionar al menos un Servicio/Gestion.xxxxx'');',
'    ELSE ',
'       inv.catickets.crea_ticket_atc(pi_cod_empresa => nvl(:P_COD_EMPRESA,''1''),',
'                                               pi_tipo_ticket => VTIPO_TKT,',
'                                               pi_tipo_cliente => :P469_TIPO,',
'                                               pi_cod_cliente => :P469_COD_CLIENTE,',
'                                               pi_nci => :P469_RUC,',
'                                               pi_DATOS => :P469_NOMBRE,',
'                                               pi_ticket => VNRO_TKT,',
'                                               pi_nro_ticket =>  :P469_NRO_TICKET);     ',
'           ',
'      IF VNRO_TKT IS NULL THEN ',
'            RAISE VERROR;      ',
'      ELSE',
'            :P469_TICKET:=VNRO_TKT;',
'      END IF;',
'   END IF;',
'EXCEPTION',
'    WHEN VERROR THEN',
'            raise_application_error(-20000, ''Ticket no generado, vuelva a intentarlo.'');     ',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''Debe seleccionar al menos un Servicio/Gestion.''||SQLERRM);',
'',
'',
'END;'))
,p_attribute_02=>'P469_RUC,P469_COD_CLIENTE,P469_TIPO,P469_NOMBRE,P469_NRO_TICKET'
,p_attribute_03=>'P469_TICKET,P469_NRO_TICKET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144675794551356713)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_DATOS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P469_NOMBRE',
''))
,p_attribute_07=>'P469_NOMBRE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140732913877581841)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139747297374636238)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144675443402356710)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144675201883356708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140733475119581846)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144675201883356708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144676266329356718)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140732517959581837)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175728908272649227)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).ready(function(){ $(''#imprimir_reporte'').trigger(''click''); });'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144676616848356722)
,p_event_id=>wwv_flow_imp.id(140732736394581839)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',5000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175728704112649225)
,p_name=>'Nuevo'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(175728698810649224)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175728863828649226)
,p_event_id=>wwv_flow_imp.id(175728704112649225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var nro_ticket = document.getElementById("P469_NRO_TICKET").value; ',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "caticket";',
'params.push({ name: ''p_id_ticket'', value: nro_ticket})',
'',
'createReportUrl1(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175730547633649243)
,p_name=>'Nuevo_1'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(186264092699274144)
,p_name=>'Nuevo_3'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P469_DESCARGAR'
,p_condition_element=>'P469_DESCARGAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186264188806274145)
,p_event_id=>wwv_flow_imp.id(186264092699274144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''td[headers="DESCARGAR"] a'')[0].click();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186264203846274146)
,p_event_id=>wwv_flow_imp.id(186264092699274144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P469_DESCARGAR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(175730343678649241)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REPORTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_report_blob BLOB;',
'BEGIN',
'    l_report_blob := := apex_application.g_x01;',
'  --  l_report_blob := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/caticket.pdf?p_id_ticket=3&j_username=jasperadmin&j_password=jasperadmin'';',
' apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_TICKET''); ',
'  apex_collection.add_member(p_collection_name => ''TMP_TICKET'',',
'                                           p_b001            => l_report_blob);',
'',
'',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
