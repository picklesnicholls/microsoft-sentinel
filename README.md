# Microsoft Sentinel Playbooks & Scripts (REPO is very much work-in-progress)

A collection of Logic Apps playbooks (SOAR automation) and utility scripts
for use with [Microsoft Sentinel](https://learn.microsoft.com/azure/sentinel/).

## Contents

### Playbooks
Logic Apps designed to automate incident response, enrichment and
notification workflows in Microsoft Sentinel.

| Playbook | Description | Trigger |
|----------|-------------|---------|
| `<playbook-name>` | `<one-line description>` | Incident / Alert / Entity |

### Scripts
Standalone scripts for querying, administering and extending Sentinel.

| Script | Language | Description |
|--------|----------|-------------|
| `<script-name>` | KQL / PowerShell | `<one-line description>` |

## Getting started

### Deploying a Playbook
1. Download the playbook's `.json` ARM template.
2. In the Azure Portal, navigate to **Microsoft Sentinel → Automation →
   Create → Playbook with (desired) trigger** or deploy directly from
   the Logic App template via the resource group.
3. Update the API connections and permissions the playbook requires
   (most need at least `Microsoft Sentinel Responder` role for the
   playbook's managed identity).
4. Attach the playbook to an automation rule, or not.

> Always review and test in a non-production workspace first. Playbooks
> with Responder/Contributor rights can close incidents and take
> response actions on entities.

### Running the scripts
Each script has its requirements documented in a comment header at the top.
General expectations:
- PowerShell scripts: PowerShell 5.1+ (7+ where stated), run against a
  workspace with the Az / AzureAD modules installed, or Azure Cloud Shell.
- KQL: paste into a Sentinel Logs query window and adjust the table names
  and workspace references.
- Python scripts: Python 3.8+, dependencies in comments or `requirements.txt`.

## Disclaimer

These playbooks and scripts are provided as-is, for reference and
educational purposes. Review every deployment carefully. Validate
permissions, test against sample incidents, and never grant a playbook
more privilege than it needs. You are responsible for anything these
automation runs do in your environment.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Issues and PRs are welcome —
especially tested playbook improvements and additional use cases.

## License

GPL-3.0 — see [LICENSE](LICENSE).
