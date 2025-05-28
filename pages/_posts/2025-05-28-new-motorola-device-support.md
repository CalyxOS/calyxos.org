---
title: CalyxOS has extended support for four more Motorola device models
date: 2025-05-28
---

* Four new devices, moto g 5G (2024), g34, g45, g84, are now on CalyxOS support list for Motorola phones
* We welcome feedback at [[community]]

#### Why these devices

Making CalyxOS accessible on diverse devices is always a priority at Calyx. Within our security standards, we keep trying to support as many devices as possible for as long as we can.

CalyxOS requires mobile devices to unlock and relock the bootloader securely during the flashing process to prevent unauthorized root access that can compromise these devices. Among manufacturers who allow secure bootloader unlock and relock, these four Motorola phones are relatively economical compared to other mobile devices, such as Pixel phones. They also have much wider global availability. You can find these models in countries across North America, Latin America, Europe, and Asia Pacific. Regional reach and affordability are both important to us.

Additionally, there was already some custom ROM development for these models, and we contributed to their official LineageOS port. That work helps provide the device and hardware specific code CalyxOS relies on.

#### Pre-install notes

{% include install/moto_unlock.md %}

#### moto g 5G (2024)

* Please note, among moto g 5G phones, only the [2024 model](https://www.motorola.com/us/en/p/phones/moto-g/g-5g-gen-3/pmipmgl36mr) is supported.
* Carrier-specific variants (e.g. Verizon, Tracfone, AT&T, Cricket) may not allow bootloader unlocking and might be unsupported.

Model-specific CalyxOS installation instructions available at [[fogo]].

#### moto g34 5G and moto g45 5G

* These two devices share the same software.

Model-specific CalyxOS installation instructions available at [[fogos]].

#### moto g84 5G

Model-specific CalyxOS installation instructions available at [[bangkk]].

### Note

{% include install/security_notes.html %}
