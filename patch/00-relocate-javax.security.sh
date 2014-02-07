#!/usr/local/bin/bash
mkdir -p org/apache/harmony/
mv javax org/apache/harmony/
gfind org/apache/harmony/ -name '*.java' -exec gsed -i 's:package javax:package org.apache.harmony.javax:g' '{}' ';'
gfind -name '*.java' -exec gsed -i 's:import javax.security.sasl:import org.apache.harmony.javax.security.sasl:g' '{}' ';'
gfind -name '*.java' -exec gsed -i 's:import javax.security.auth:import org.apache.harmony.javax.security.auth:g' '{}' ';'

