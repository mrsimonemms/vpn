# Copyright 2024 Simon Emms <simon@simonemms.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "hostname" {
  type        = string
  description = "Hostname to use to access the VPN"
  default     = "vpn.simonemms.com"
}

variable "machine_type" {
  type        = string
  description = "The machine type"
  default     = "g3.small"
}

variable "nameservers" {
  type        = list(string)
  description = "Network's nameservers"
  default = [
    "1.1.1.1",
    "1.0.0.1"
  ]
}

variable "operating_system" {
  type        = string
  description = "Operating system of the machine"
  default     = "ubuntu-jammy"
}

variable "region" {
  type        = string
  description = "The physical region where the VPN will be located"
  default     = "LON1"
}

variable "ssh_key_path" {
  type        = string
  description = "Path to SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "username" {
  type        = string
  description = "Username to access the machine"
  default     = "vpn"
}
