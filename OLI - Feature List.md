OLI feature list. This list of features is subject to change. 

The feature list, once further refined will be translated into epics and further expanded upon with user stories and task tickets.

The features are in no real order and will need to be prioritized.

## User Sign Up

Will need an initial page to route the Users either to the Inspector sign up or the Normal Users sign up

### Feature Outline
- Generic User
  - Standard User Details
  - Property Registration _optional the user can skip this_
  - Email Verification
  - Successful Sign up 
- Inspectors
  - Standard User Details
  - Company Details _Can either create a company or request an invite to a current company_
    - Request Invite to Company
      - Provides a company look up component
      - Once selected the company admin will receive a notification of the request upon the finalization of the users sign up
    - Create Company: Provide the following
      - Basic details and information on the Company
      - Hours of Operation
      - Service Area(s) _list of counties the company services_
      - Timezone _auto set from first service area_
      - Scheduling Settings
      - Inspectors
        - Will allow user to put in multiple email addresses to set initial list of inspectors
        - If an email is associated with an already registered inspector user that user will receive a notification to join the company
        - If it's not a recognized email address, an email will be sent to it with a link to sign up as an Inspector, during which the company section will be skipped and the user will automatically be assigned to the company upon successful sign up
      - Subscription selection _this is only for creating a new company_
      - Payment
  - Email Verification
  - Successful sign up and count down to redirect

## UI Component Style Guide

Comprehensive style guide showcasing OLI Stand alone UI components. To be used as quick and easy documentation for any new or old devs on the project.

<sub>_Feature outline coming soon_</sub>

## Login

Provides several standard utilities around user log in. Login form, forgot password, remember me, session management, and 2 factor authentication.

<sub>_Feature outline coming soon_</sub>

## User Roles and Role based permissions

Users are all assigned one or more User Roles. These roles dictate their permissions and what they can / cannot access around the site. 

Current roles are:
- System Admin _full access to everything and more, it's probably one of us_
- Guest _limited access, free_
- Home Owner _Client user access, free with possible upgrade to a "premium" subscription, not sure yet_
- Inspector _Inspector User, access to base Inspector tools and features_
- Company Admin _Inspector User with admin permissions to Company settings and company insights_

<sub>_Feature outline coming soon_</sub>

## Notification System

Will support notifications to Web Platform, email, text, Mobile Apps, and push notifications

<sub>_Feature outline coming soon_</sub>

## Stripe payment integration

Subscription payments, payment method management, and payments to Inspector Companies

<sub>_Feature outline coming soon_</sub>

## Dashboards

User Role based dashboards. These dashboards will show various "Card" components containing information pertinent to specific User Roles. 

<sub>_Feature outline coming soon_</sub>

## User Settings

Specific User settings that apply to each User Role. Includes the more complicated Company settings.

<sub>_Feature outline coming soon_</sub>

## House Fax

Component that will display home property details. Such as layout (public blue prints), size dimensions, lot sizes, inspection reports, and inspection issue history.

<sub>_Feature outline coming soon_</sub>

## Property Management <sub>_not how it sounds_</sub>

Allow users to register a property by providing standard property information. And then manage a list of their properties. Users should be able to link properties with popular web services such as zillow or redfin as well as manage any issues that come out of inspections. 

<sub>_Feature outline coming soon_</sub>

## Find an Inspector

Inspector/Inspection Company search.

<sub>_Feature outline coming soon_</sub>

## Inspection Scheduling

End to end scheduling system. From a user finding a time slot to schedule an inspection appointment, to an inspector managing his day to day schedule, to Inspection companies managing employed inspectors schedule. Includes time off requests and integrations with popular calendar applications.

<sub>_Feature outline coming soon_</sub>

## Inspection Rule Sets

Ensure accurate inspection reports by providing an up to date Rule Set for each county no matter where it is. We will need to figure out a way to consume from a public source the list of rules and regulations for a county on the fly and provide them in a consumable way to make creating inspection reports easier and quicker.

<sub>_Feature outline coming soon_</sub>

## Inspection Reports

Inspectors should be able to instantly generate inspection reports through an App, that can be accessed and even tracked live as it's being created by Client users. Inspection reports should be stored and have summarized versions that can be easily read as well as a list of issues either all together or room by room. Inspection reports should be downloadable, printable, shareable, and accessible when ever looking a property.

<sub>_Feature outline coming soon_</sub>

## Invoicing and Accounting

Provides Inspectors and Companies an easy way to send and manage payments from clients through invoicing. They should be able to see invoice history, payment history, easily find and manage unpaid invoices, and export accounting and financial data to popular accounting software like quick books.

<sub>_Feature outline coming soon_</sub>

## Insights

Insights includes several statistics and actionable data for Inspectors and Inspection Companies. We should track as much usage data as we can to provide a clear view of not only how OLI is being used but clear actionable data to Inspection Companies, Inspectors, and Users alike. 

Insight stats would include things like inspections completed, per property inspections passed/failed, inspection appointment counts, issues found count, financial charting, distance traveled, and anything else that might be actionable (like tax deductible things).

<sub>_Feature outline coming soon_</sub>

## Documentation and Usage Guides

We need to provide easy to follow tutorials and guides for how to use OLI to it's greatest effect. Standard Users and Inspector Users should have their own documentation. If possible we should provide short to the point "How To" videos for basic and advanced usage. We should have documentation of the Web and Mobile App platforms.

<sub>_Feature outline coming soon_</sub>

## Basic ChatGPT AI Integration

Experimental integration of OpenAI's ChatGPT API. Very basic integration at first until we can get more information on the best ways to utilize it.

<sub>_Feature outline coming soon_</sub>

## Inspector Mobile App

The highlight of our system, our bread and butter, should be the Inspectors Mobile App. It should provide inspectors a very streamlined and intuitive UI that helps me get their job done faster and more accurately. From the initial scheduling, to the inspection, to the report generation, and invoicing. It should provide the Inspector every tool they need to complete an Inspection and generate an accurate and complete Inspection Report onsite, instantly.

<sub>_Feature outline coming soon_</sub>

## User/Client Mobile App

A mobile app for standard users and home owners that has useful features specific to those user roles.

<sub>_Feature outline coming soon_</sub>

# Idea Board

This is just a dumping ground of potential feature ideas. Could be good, could suck, lets roll the dice! 

These ideas will require further discussion and are not likely to make it into the initial MVP version of OLI.

## App Offline Mode

Cell Service/Wifi isn't always available at a property. I've encountered this issue with the app that my pest control company uses, if it's not able to connect they have to take my info down with a pen and paper to put it in later. This is a really shitty experience for both the App user and the client.

In order to mitigate it, the OLI App should recognize if there is a connection issue and switch to "offline mode" in which it will store any activity locally in the device storage. Once the device has internet access once again it should either auto sync the local storage with the OLI servers or give the user a push notification that the app requires a sync with the OLI servers _(maybe make it a setting in the app to auto sync or not?)_. Once the sync is confirmed the local storage should be purged to avoid any security issues and to maintain a small disk space foot print _(perhaps that should be a setting to, to keep a copy of the data in device storage, thoughts?)_

Discussion points

- _Should we add a setting to allow App users to toggle auto sync? If toggled off if the App detects it is not in sync with the Oli servers it would give the user a push notification to initialize a sync_.
- _In order to maintain a small disk space foot print any local data is purged and held on the OLI servers, should we add an App setting to allow users to keep a copy of all the data locally on the device with the disclaimer that it could use up a lot of the device's storage and impact performance?_
- _I'm not sure if this should be included in MVP or not, we will need to have a discussion on if an offline mode is a necessity for MVP or not_

## Automated User Creation

It would make sense that if an Inspector is hired and is doing a home inspection using the OLI App that if a client does not yet have an account on our platform that one would be automatically generated for them. The Client would need to provide an email and the system would set up everything with the account including linking it to the property address and Inspector so that an online payment can be processed.

When a client is invoiced through OLI they would receive an email with a link to pay the invoice 

## Alternative payment options

Even in 2023 we cannot expect every client to use or want to use an internet to pay for a home inspection. If an OLI Inspector need to process a payment there should be a place in the App or on the Web Platform to take payment details and charge a customer with out requiring them to use the website or client app.

This should also be available "on-site" to take payments through the Inspectors App.  

## Inspector Marketing Sites

Allow Inspectors, _perhaps based off of subscription level_, to generate their own website as an oli subdomain `http://oli.{COMPANY_NAME}.com`.

ChatGPT could be integrated into the process to assist with landing page copy, and the generation of blog post copy if the Inspector would like to put in additional work to score higher on search engine organic results.

The pitch to the Inspectors would be to increase their visibility to potential clients and to offer a tailored pre-built website for all of their needs.

## Clippy style AI assistance using the ChatGPT integration with the OLI robot mascot

Any where we put a Generative AI integration we could utilize our awesome OLI robot mascot to promote brand recognition. Also simply having a generative pre-trained transformer AI integration will put us ahead of any competition out there.

## Automated Property Data Acquisition

Automate the gathering of basic information on a House. When a property is added to the system it should use public records to gather some basic details on the property and then output in a way that is easy to understand and consume by both clients and inspectors. 

The basic property data would be things such as: 

- Location details _(city, county, neighbor hood details, etc...)_ I'm not sure if we need this since Zillow also does this and probably would do it much better than us.
- Lot size
- Layout _(blue print maybe?)_
- Total Room count
- Room Count broken down by room type _(bedrooms, kitchens, bathrooms, etc...)_
- Room Dimensions
- Inspection Rule Set _based off of county_

Really not 100% sure of the best way to achieve this. We'll have to do some research into where data can be procured from and possibly even add some AI processing to transform some of it into a more usable format. Such as analyzing the blue print and pulling very specific data out for each room, like number of outlets, etc... 

## Client Inspection Pre-check

This would likely depend on the above feature for property data. 

The idea is that we could use ChatGPT or some other mechanism to analyze blue print data for each room and identify potential issues based off of the properties known _Inspection Rule Set_. Providing a list of potential issues on a per room basis so that clients can take care of anything that might need attention before paying for an official inspection. 

This might impact Inspectors profits though since this might prevent the need for follow up inspections so maybe we could add it as a feature for subscribing home owners. The current subscription plans do not include home owners, only inspectors. So maybe we could offer non-inspector users a "premium" subscription to access certain advanced features. 

## Direct Messages/Chat

Users can send direct messages to each other. Companies will have its own chat/message box as well where users can message a company directly to ask questions or get assistance from a company. Any Inspector user associated with a company can also see the company wide messaging as well as their own individual messages.

We should also include settings around messages to manage notifications, enable/disable messages from guest users, enable/disable messages from Clients, or enable/disable messaging completely.

## Client, Inspector Communication options

Clients and Inspectors should have easy quick buttons with which they can contact each other after an inspection has been scheduled. Once an inspection has been scheduled and an inspector has been assigned to the Client both the Client App and Inspector App should have easy to use buttons to initiate either a phone call, text message, or direct message _if the above feature has been implemented_. 

Phone calls and text messages would exit the Oli App and open the correctly function on the users phone or tablet. The options will be limited by the contact details provided by the Inspector/Client's user details.

- _Phone numbers should probably be required for accessing the App anyway_
- _Should we provide with a setting to users for preferred contact method?_

## Client App: Uber like tracking

Similar to how Uber Eats tracks orders, Clients should be able to track an Inspector leading up to a Scheduled Inspection Appointment. Through the Client App home owners should be able to see an estimated time of arrival, if there is a delay that would cause the inspector arriving after the scheduled time, and once an Inspector arrives it should be able to provide some details on the progress of the inspection. Such as inspection percent complete which is tracked by the Inspector using his App to input data for the generation of the inspection report and maybe even a live inspection report with the disclaimer that the live report may not reflect what will be in the finalized report after the inspection completes.

Inspector Companies should have a settings section where they can manage how much is tracked and if they would like to opt out of certain tracking or disable it completely.

# Page and user flow breakdown

Really rough break down of user flow and page outlines. 

This is all at a very high level is subject to change. 

Eventually all of this should be mocked up in UI/UX wire frames to make more sense.

## Marketing Site

- Landing Page _it should be very graphically pleasing and with large calls to action to hook the user_
- Login link for Platform _modal?_
- Sign up link for Platform _modal?_
- Blog _for SEO and email capture reasons_ 
- Demo Videos and Screenshots
- About Us
- Privacy Policy
- Terms & Conditions
- Social Media Links _we will need to set up social media accounts on all major platforms_
- News _doesn't have to be named "news" but it should be a place where we tease new updates. Not sure if it belongs on public facing marketing site or if it should be behind a pay wall..._

## Platform

- UI Component Styleguide 
- Sign up
- Login
- Forgot password
- Session Management
- User Role based Permissions
- Very basic ChatGPT API integration
- Notification System: MVP version will only support email and app pushes
- Stripe payment integration: Payments to us, to inspectors from clients
  - OLI subscription selection for Inspectors
  - Universal Payment Form
  - Owner payment to Inspector form _*Q: Before or after inspection completion?_ 
  - Invoice generation
  - Confirmation Page and Email
- Automated Location Detection
- Guest Role pages
  - Dashboard Cards
    - Recently Viewed
    - FAQ
    - Schedule Inspection
    - ChatGPT "advice & questions"
  - House Fax Page: Public Inspection Report search
  - Register a property: Provides a form to register your property for inspection.
      - Adds "Home Owner" role to the user after the property is registered
      - If the user already a Home Owner they will get the option to select an existing property registered to them or register a new one
      - Once finished the user will be directed to the Property View page. The user can use the "Schedule Inspection" button that only shows on Property View pages where the user is the one who registered the property. The button will navigate the user to the "Schedule Inspection" page
  - Find an Inspector - Inspector Company search, once you find an inspector it will take the user to the "Schedule Inspection" Page
  - Schedule Inspection: Provides steps to register a property, find an inspector, and schedule an inspection appointment
    1. Register Property: provides the same form that is found on the "Register a Property" page
       - If coming from the "Property View Page" this step will be skipped and the data for the property that was being viewed will be auto populated
    2. Find Inspector: Once a property is registered it will provide the user with the same "find an inspector" component used in the "Find an Inspector" page
       - If coming from the "Find an Inspector" page the inspector's details will be auto populated
    3. Schedule Inspection: Using the "Inspector Company Calendar" widget the user can select available time-slots from a calendar
       - The user can either request a specific inspector, if the property has been previously inspected it will default to the inspector that was last there.
       - If the user does not select a specific inspector it will give time-slots for any inspector in the inspector company that is available
    4. Finalize: User reviews the details of the inspection appointment and approves it. Or they can go back and edit their previous choices.
    5. Once finalized, notifications will be sent off to the Inspectors, Inspector Company, and the Client who scheduled the inspection. These will be both email and Oli notifications, which push to both the web platform and the Apps
    6. Confirmation page. Inspection appointment is all set, now offer the user the opportunity to install the app
  - Settings
    - Display Name
    - Email
    - Phone Number _used by App_
    - Security  Settings
      - Change Password
      - Require email authentication for new devices
    - Optional Default Location _can be an address, city, or zip code_
    - Theme toggle Dark/Light
- Home Owner Role pages _includes guest role features_
  - Dashboard Cards
    - Unpaid Invoices: Only shows if there is an unpaid invoice to an Inspector. Displays with "Error" styling at the top to convey urgency
    - Active Inspections progress
    - My Properties
    - Inspectors: Lists inspectors connected to properties first, and then near by 
    - My Inspections
    - Invoices: payment history 
  - Schedule Inspection: See the "Schedule Inspection" page description under the "Guest" user role section
  - My Properties Page: Property list with search and filter
  - My Inspections Page: Table List of inspections done for the user with search, filter, and other action
  - Add Property: Form to manually add a property to the system. Properties can also be auto added when scheduling an inspection with an inspector
  - Property View Page: Detail view of a property
    - List previous inspection reports with a summarized "House Fax" card and link to House Fax view that guests can see
    - Show status of any active inspections
    - Checklist for issues found in the previously scheduled inspection ordered by severity
    - Schedule New Inspection. Can select a currently assigned inspector or search for a new one
    - Images Upload and select property default image
    - Editable Property Name
    - Editable Property Description 
    - Editable Links section for linking to services like Zillow or Redfin
    - Schedule Inspection _takes the user to the "Schedule Inspection" page listed in the Guest Role Pages
  - Settings _The same as the Guest user settings_
    - Manage Payment methods 
- Inspector Role pages
  - Dashboard Cards
    - Schedule/Calendar _could be a split view with a list of upcoming appointments_
    - Active/Recent Reports
    - Invoice History
    - Client List
    - Insights _usage statistics for the individual user_
  - _Insights: Large view of insights card including usage stats, financial charting, distance traveled, and anything else that might be actionable (like tax deductible things)_
  - Invoicing: _gives a list of invoices sent and a financial break down with options to export to popular accounting software_
  - Calendar/Schedule/Inspections/Appointments
    - Displays a calendar widget that contains inspection appointments for clients.
    - List of upcoming Inspections will be shown in its own column
    - Should have integration/export options with popular calendar applications like: Google Calendar, iOS, and outlook
    - _Naming needs discussion_
    - Inspection Appointment View: Details for an Inspection appointment
      - _opportunity to display in a model, or slide out of some kind, could also just be a side column next to the calendar like google calendar but slide over the calendar with an animation (special ui component maybe?)_
      - Details should include:
        - Appointment Time and Date _should have an "edit" button that slides out a model to allow rescheduling_
          - Home Owner Role Users would open the Inspector Company scheduling widget that only allows scheduling within the available time/date slots for a company _has potential of reassigning Inspector based on availability within the component, the client user should have the ability to request a specific Inspector as well_
          - Inspector Role users would get the option to send a notification with message to the Client that the appointment will have to be rescheduled. The notification send to the user will include a link to the Home Owner Role scenario outlined in the previous bullet point.
        - Property Address _possibly with a picture, or google maps widget/link_
        - Client Details: Name, Phone Number, Email, Preferred Method of Contact, Profile _Link to OLI User Profile in new window_
        - Inspector Details: Name, Company, Phone Number, Email, 
        - _we could put extra details into accordion collapsible sections_
  - User Settings _Extends already established user settings for the other roles_
    - Contact Details
    - Availability
      - Provides a component for selecting days, and time of day that the Inspector is available to do inspections
      - Additionally the Inspector can set a time range when they will not be available. This is useful for temporary leaves of absence like vacations or sick days.
        - The inspectors assigned company can set this to require approval or not
        - If an inspector puts in a leave of absence during which there are scheduled inspections the system will attempt to auto assign another inspector in the company to the time slot. If there is none the Client will receive a notification and and email instructing them to reschedule. In this case the Inspector will receive a warning before hitting submit and can provide a short message to the Clients affected.
      - This can be edited by the company as well if they deem it necessary
    - Company: Has details on the company that the user is assigned to, or if the user is not assigned to a Company they are given the same sign up forms to either create a new Company or request an invite to an existing one 
  - Documentation: Step by step usage documentation, and if we can we should include short, easy to follow "How To" Tutorial Videos
  - Company Assignment: Not a page but a feature. When a Inspector User is created they are given the option to either add a new "company" or request an invite to an existing company. If one isn't created or requested then most account features will be inactive until the user either gets invited to a company or creates one. A banner at the top of the Dashboard will be displayed explaining this for Inspector Users not associated with a company.
- Company Admin Role
  - Schedule/Calendar is expanded to include information for all company users _filterable by user_
  - Insights is expanded to include information across all company users _filterable by user_
  - Invoice History and Invoicing is expanded to include invoices from all company users _filterable by user_
  - Client List is expanded to include all company from all company users _filterable by user_
  - Company Settings
    - Profile: View/Edit Company Profile values like Name, Logo, Description, Location, "Public" Toggle _searchable?_, etc...
    - Contact Details _will default to the same contact info on the account that created the company originally_
    - Service Area(s) _List of counties where the company provides inspection service_
    - Inspectors: List of Inspector users associated with the company
      - Inspector User View: Individual view of a user account associated with the company. Should include some data specific to the user like name, email, phone number, client list, inspection reports, and maybe some individualized insight statistics
    - Subscription and Payment Method: View/Edit payment details
    - Scheduling Settings
      - Timezone
      - Auto Re-Assign inspector if inspection appointment loses current assigned inspector: Toggle
      - Default to last inspector for follow up inspections: Toggle
      - Operation hours: Sets the days of the week the company is available and the hour range that inspections can be scheduled

## Inspector Mobile App

_App Features are TBD_

## User Mobile App

_App Features are TBD_
