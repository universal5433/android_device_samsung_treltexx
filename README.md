## TWRP device tree for Samsung Galaxy Note 4 Exynos LTE (treltexx)

 Copyright (C) 2019 Ananjaser1211 Open-Source

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


Add to `.repo/local_manifests/treltexx.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/treltexx" name="android_device_samsung_treltexx" remote="ananjaser1211" revision="twrp-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_treltexx-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/ananjaser1211/RefinedNougat
