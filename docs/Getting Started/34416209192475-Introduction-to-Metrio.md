Introduction to Metrio
======================

Updated October 10, 2025 21:02

This training video covers:

* What is Nasdaq Metrio?
* An overview of Metrio modules and how they are connected
* A demo of Data Sources, Metrics and Publisher

### Frequently Asked Questions

|  |  |  |  |
| --- | --- | --- | --- |
| **List Manager** | **Data Sources** | **Metrics** | **Publisher** |
| What happens here? | | | |
| Lists and their items are managed. | Input data is stored. | Data from the Data Sources or previous Metrics of a chain of calculations is transformed (calculated, consolidated etc.) to give a desired ouput. | Dashboards and reports live. |
| What is it? | | | |
| Lists are dropdowns with predetermined items which can be used in Data Sources. | Data Sources are databases or data entry forms. | Metrics are calculations that are programmed based on the structure of Data Sources. They can, for example, multiply the data from one Data Source (e.g. energy consumption) by the data from another Data Source (e.g. emission factors) if a certain list item is used (e.g. fuel type) in both of those Data Sources. | Publisher allows to communicate/disclose qualitative or quantitative data. It is like a website builder. |
| Does the admin user have autonomy? | | | |
| Yes. | Yes, but a Data Source structure cannot be edited once there's data within it. | No. Metrio Data Solutions Engineers build Metrics with Python based on the admin user's provided methodology. | Yes, but dependent on built metrics and existing data within Data Sources and lists. |
| What should be considered before configuring? | | | |
| - If graphs in Publisher want to filter data, this can only be done if the data is in the form of list items. - Clean lists are central to high quality data. -  If using pre-built data sources (from Templates deployed by Metrio), use the existing List, do not modify the items within it. | - Lists items need to be created prior to using a Data Source that will use that List. - It is important to build a Data Source structure with the desired Metrics output and the methodology to calculate that output in mind. If there is lack of clarity from the admin user in their desired structure and the methodology, it is recommended to draft data sources structure first in excel. - Data granularity, Data periodicity, Data types, Key Attributes and Required Attributes are important concepts to understand by the creator of a Data Source. - Data Sources structures can be created either manually or from a excel import. - Admin users are be able to create tasks to assign users to collect or approve data in Data Sources (Task Manager). - If using pre-built data sources (from Templates deployed by Metrio), never delete attributes as this will break the pre-built Metrics. | - There are simple Metrics and complex Metrics. Simple Metrics have a single Data Source or Metric as an input. Complex Metrics have more than one Data Source or Metric as in input. - Admin users cannot create simple nor complex metrics. - Project Managers and Data Solution Engineers will need admin users methodology before building Metrics and will seek the admin users validation before coding to avoid rework. - Any metrics rework requested by the admin user sets back the project implementation timeline. | - Tables and Charts Indicators with quantitative data are created out of Metrics. - Admin users can create their own dashboards and reports. Adding texboxes, pictures, graphs and reordering them is easy.  - Tables and Charts Indicators get created similarly to google sheets' charts. |
| Once configured, what can be expected? | | | |
| - Careful editing existing list items that are already in use in data rows of Data Sources, as you'll be overwriting existing data. - Deleting a list item in List Manager that is used in data rows within a Data Source will show the item with a strikethrough. | - Data can be entered manually or via a file import in a Data Source. - A Data Source structure is no longer editable once there's data in it.  - Data entry will try to keep ""garbage out"" to prevent errors and ensure data quality. Users can expect these common errors: 1.Data using List items that do not match exactly the list items built in List Manager. 2. Data using items that do not exist in List Manager. 3. Duplicated rows (rows with the same key attributes) 4.Missing data on required attributes." | Metrics have states, "up-to-date" or "out-of-date". Whenever there is new input data, the chain of calculations are triggered and run. Final results from calculations can be expected once the Metric is "up-to-date". | Reports or Dashboards can be set to be "Public", to allow for anyone who has their link to view it. |
| Who should have access to this? | | | |
| Users who understand the above. | Users who understand the above. | Users in charge of reviewing calculation results and in charge of creating quantitative indicators in Publisher. | Users in charge of creating reports |