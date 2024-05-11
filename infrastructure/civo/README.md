# Civo

Civo is a cloud provider that [doesn't charge for data transfer](https://www.civo.com/pricing).
This avoids any nasty surprises when running a VPN.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| civo | ~> 1.0.40 |

## Providers

| Name | Version |
|------|---------|
| civo | 1.0.40 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [civo_instance.vpn](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/instance) | resource |
| [civo_network.network](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/network) | resource |
| [civo_ssh_key.user](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/ssh_key) | resource |
| [civo_disk_image.vpn](https://registry.terraform.io/providers/civo/civo/latest/docs/data-sources/disk_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| hostname | Hostname to use to access the VPN | `string` | `"vpn.simonemms.com"` | no |
| machine\_type | The machine type | `string` | `"g3.small"` | no |
| operating\_system | Operating system of the machine | `string` | `"ubuntu-jammy"` | no |
| region | The physical region where the VPN will be located | `string` | `"LON1"` | no |
| ssh\_key\_path | Path to SSH public key | `string` | `"~/.ssh/id_rsa.pub"` | no |
| username | Username to access the machine | `string` | `"vpn"` | no |

## Outputs

| Name | Description |
|------|-------------|
| address | IP address of server |
| username | Username for the server |
<!-- END_TF_DOCS -->
