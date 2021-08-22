___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Base64",
  "description": "base64 encoding \u0026 decoding",
  "categories": [
    "UTILITY"
  ],
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "inputValue",
    "displayName": "Input Value",
    "simpleValueType": true,
    "canBeEmptyString": true
  },
  {
    "type": "SELECT",
    "name": "base64Action",
    "displayName": "Action",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "decode",
        "displayValue": "Decode"
      },
      {
        "value": "encode",
        "displayValue": "Encode"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "decode"
  }
]


___SANDBOXED_JS_FOR_SERVER___

return (data.base64Action === 'encode') ? require('toBase64')(data.inputValue) : require('fromBase64')(data.inputValue);


___TESTS___

scenarios:
- name: decodeTest
  code: "const mockData = {\n  inputValue : 'ZG9jdG9yIHdobz8=',\n  base64Action :\
    \ 'decode'  \n};\n\nlet variableResult = runCode(mockData);\nassertThat(variableResult).isEqualTo('doctor\
    \ who?');"
- name: encodeTest
  code: "const mockData = {\n  inputValue : 'doctor who?',\n  base64Action : 'encode'\
    \  \n};\n\nlet variableResult = runCode(mockData);\nassertThat(variableResult).isEqualTo('ZG9jdG9yIHdobz8=');"


___NOTES___

Created on 22.8.2021, 23:18:20


