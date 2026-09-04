# Contributing

Thanks for considering a contribution! A few guidelines to keep the
repo consistent and safe for others to deploy.

## Playbooks
- Submit as exported Logic App JSON (ARM template) placed in `/Playbooks`.
- Include a row in the README's Playbooks table: name, one-line
  description, and trigger type (Incident / Alert / Entity).
- Use managed identity where possible rather than stored secrets.
- State the minimum Sentinel RBAC roles the playbook requires.
- Avoid hard-coding tenant IDs, subscription IDs or emails. Use
  parameters so the template is portable.

## Scripts
- Place scripts in `/Scripts` with a descriptive filename.
- Include a comment header documenting: purpose, prerequisites,
  required permissions/modules, and an example invocation.
- KQL queries should run as-is against the standard Sentinel tables
  (SecurityIncident, SigninLogs, etc.). Note any custom table
  dependencies clearly.

## General
- Test before submitting: playbooks should be deployed and exercised
  at least once against a demo/sample incident.
- Remove any sensitive data (log excerpts with real IPs, hostnames,
  user principals) before committing.
- Keep commit messages descriptive: "Add playbook: auto-close benign
  license activations" rather than "update".
- One playbook/script per PR where practical. It makes review much easier.

## Reporting issues
Open an issue with:
- which playbook/script,
- the error or unexpected behaviour,
- your environment (Sentinel version info, PowerShell version, etc.).
