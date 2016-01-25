# hubot-scanimage

[![npm version](https://img.shields.io/npm/v/hubot-scanimage.svg?style=flat-square)](https://www.npmjs.com/package/hubot-scanimage)
[![npm downloads](https://img.shields.io/npm/dm/hubot-scanimage.svg?style=flat-square)](https://www.npmjs.com/package/hubot-scanimage)
[![devDependency Status](https://img.shields.io/david/dev/lgaticaq/hubot-scanimage.svg?style=flat-square)](https://david-dm.org/lgaticaq/hubot-scanimage#info=devDependencies)
[![Join the chat at https://gitter.im/lgaticaq/hubot-scanimage](https://img.shields.io/badge/gitter-join%20chat%20%E2%86%92-brightgreen.svg?style=flat-square)](https://gitter.im/lgaticaq/hubot-scanimage?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A hubot script for scan images and upload to imgur.

If your IP address is dynamic use noip.

## Installation
```bash
docker run -d --restart=always -p 3000:3000 --privileged -v /dev/bus/usb:/dev/bus/usb --name scanimage lgatica/scanimage
npm i -S hubot-scanimage
```

add `["hubot-scanimage"]` to `external-scripts.json`.

```bash
export HUBOT_SCANIMAGE_HOST=<http://your-ip:your-port>
```

## Examples
`hubot scanimage` -> `http://i.imgur.com/XxXxxxX.jpg`
