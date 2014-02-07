#!/usr/local/bin/bash

gfind org/apache/harmony -name '*.java' -exec gsed -i 's:import org.apache.harmony.auth.internal.nls.Messages;::' '{}' ';'
gfind org/apache/harmony -name '*.java' -exec gsed -i 's:Messages.getString(\("[^"]*"\)):\1:g' '{}' ';'

