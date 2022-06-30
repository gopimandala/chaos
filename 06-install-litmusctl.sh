#!/usr/bin/env bash
tar -zxvf litmusctl-<OS>-<ARCH>-<VERSION>.tar.gz &&
chmod +x litmusctl &&
mv litmusctl /usr/local/bin/litmusctl &&
litmusctl version
