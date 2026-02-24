___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Advanced Name Splitter Pro | Tracking with Shadin",
  "description": "Automatically separates First and Last names from full name strings. Developed by Tracking with Shadin to ensure 100% precision for Meta Pixel, GA4, and other platform tracking.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "fullName",
    "displayName": "Full Name Data Layer Variable",
    "simpleValueType": true
  },
  {
    "type": "SELECT",
    "name": "outputMode",
    "displayName": "Select Output Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "first",
        "displayValue": "Extract First Name"
      },
      {
        "value": "last",
        "displayValue": "Extract Last Name"
      }
    ],
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const makeString = require('makeString');

const fullName = data.fullName;
if (!fullName) return undefined;

const name = makeString(fullName).trim();
if (!name) return undefined;

const mode = data.outputMode || 'first';

const parts = name.split(' ');
const filteredParts = [];

for (let i = 0; i < parts.length; i++) {
    if (parts[i].length > 0) {
        filteredParts.push(parts[i]);
    }
}

if (filteredParts.length === 0) return undefined;

if (filteredParts.length === 1) {
    return mode === 'first' ? filteredParts[0] : '';
}

const last = filteredParts[filteredParts.length - 1];
filteredParts.pop();
const first = filteredParts.join(' ');

return mode === 'first' ? first : last;


___TESTS___

scenarios: []


___NOTES___

Created on 2/24/2026, 11:12:59 PM


