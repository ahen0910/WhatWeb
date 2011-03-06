##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Meta-Geo" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-06 #
version "0.1"
description "This plugin identifies and extracts data from meta geo.* tags - More Info: http://en.wikipedia.org/wiki/Geotagging"

# Examples #
examples %w|
pakfoon.nl
www.geo-tag.de
|

# Matches #
matches [

# Meta geo.*
{ :string=>/<meta name="geo.[^"]+" content="([^"]+)"[^>]*>/,:offset=>0 },

# ICBM tag
{ :string=>/<meta name="ICBM" content="([^"]+)"[^>]*>/, :offset=>0 },

]

end


