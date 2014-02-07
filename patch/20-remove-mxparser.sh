#!/usr/local/bin/bash

gfind org/jivesoftware -name '*.java' -exec gsed -i 's:import org.xmlpull.mxp1.MXParser:import org.xmlpull.v1.XmlPullParserFactory:' '{}' ';'
gfind org/jivesoftware -name '*.java' -exec gsed -i 's:new MXParser():XmlPullParserFactory.newInstance().newPullParser():g' '{}' ';'

