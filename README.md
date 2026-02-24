# Advanced Name Splitter Pro for Google Tag Manager

Technical documentation for the Advanced Name Splitter Pro variable template.

## Overview

Advanced Name Splitter Pro is a Google Tag Manager (GTM) variable template designed for precise parsing of full name strings into constituent First and Last names. This tool is essential for maintaining data integrity when sending user identifiers to platforms such as Meta Conversions API (CAPI), Google Analytics 4 (GA4), and other marketing technologies that require fragmented name data.

## Key Features

- **Component Separation:** Distinguishes between First Name and Last Name by analyzing string structures and handling multiple middle names.
- **Data Normalization:** Automatically trims whitespace and manages common string irregularities to ensure high event match quality.
- **Configurable Output:** Offers administrative control to toggle between First Name and Last Name extraction within a single variable configuration.
- **Platform Optimization:** Enhances CAPI Event Match Quality (EMQ) by providing clean, standardized user inputs.

## Configuration Instructions

1. **Import Template:** Import the `template.tpl` file into the GTM Web Container via the Templates section.
2. **Variable Creation:** Create a new User-Defined Variable and select "Advanced Name Splitter Pro".
3. **Parameters:**
   - **Full Name Data Layer Variable:** Select the Data Layer Variable containing the source name string.
   - **Select Output Type:** Designate the required output format (First Name or Last Name).
4. **Implementation:** Map the configured variable to the appropriate user data fields in your marketing tags.

## Usage Examples

| Input String | Mode: First Name | Mode: Last Name |
| :--- | :--- | :--- |
| `Sadikul Islam Shadin` | `Sadikul Islam` | `Shadin` |
| `Md. Karim` | `Md.` | `Karim` |
| `John Doe` | `John` | `Doe` |

## Technical Support and Attribution

Developed and maintained by **Md Sadikul Islam Shadin**.

For technical inquiries or further documentation, visit the [Tracking with Shadin](https://github.com/trackingwithshadin) repository.
