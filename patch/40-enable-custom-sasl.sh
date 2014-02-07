#!/usr/local/bin/bash

gfind -name '*.java' -exec gsed -i 's:import org.apache.harmony.javax.security.sasl.Sasl;:import de.measite.smack.Sasl;:g' '{}' ';'

