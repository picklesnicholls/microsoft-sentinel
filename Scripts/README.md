# Sentinel Scripts

The below contains info on what each script in this repo does.

- **SentinelArchive.ps1**
  - This PowerShell script updates the archive retention period for all tables within a specified Log Analytics workspace. The archive retention in the script is currently set to 60 days. My sandbox LAW tables are currently set to 30 days at analytic tier. This means the script would give my LAW an additional 30 days at archive tier. Change this number to fit your requirements.