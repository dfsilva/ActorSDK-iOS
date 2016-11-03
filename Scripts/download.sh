#!/bin/bash
set -ev

sdk_version=$(cat SDK_VER)
sha1_checksum=$(cat SDK_SHA)

echo "fetching ActorSDK.framework"
curl -OL https://github.com/dfsilva/ActorSDK-iOS/releases/download/v${sdk_version}/ActorSDK.zip

#echo "${sha1_checksum}  ActorSDK.zip" | shasum -c

unzip -o -q ActorSDK.zip
rm ActorSDK.zip
