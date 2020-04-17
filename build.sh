#!/usr/bin/env bash

###
###
###     ________            ______
###     ___  __/_____ _________  /______  ______________________
###     __  /  _  __ `/  ___/_  __ \_  / / /  __ \_  __ \_  ___/
###     _  /   / /_/ // /__ _  / / /  /_/ // /_/ /  / / /(__  )
###     /_/    \__,_/ \___/ /_/ /_/_\__, / \____//_/ /_//____/
###                                /____/
###
###   TABLE OF CONTENTS
###
###   1. External Library Includes
###      - Normalize.css | http://normalize.css.github.io
###   2. Tachyons Modules
###   3. Variables
###      - Media Queries
###      - Colors
###   4. Debugging
###      - Debug all
###      - Debug children
###
###

BREAKPOINT_NOT_SMALL="screen and (min-width: 30em)"
BREAKPOINT_MEDIUM="screen and (min-width: 30em) and (max-width: 60em)"
BREAKPOINT_LARGE="screen and (min-width: 60em)"

rm css/*

# External Library Includes
cat src/_normalize.css           >> css/tachyons-with-css-variables.css


# Modules
cat src/_box-sizing.css          >> css/tachyons-with-css-variables.css
cat src/_aspect-ratios.css       >> css/tachyons-with-css-variables.css
cat src/_images.css              >> css/tachyons-with-css-variables.css
cat src/_background-size.css     >> css/tachyons-with-css-variables.css
cat src/_background-position.css >> css/tachyons-with-css-variables.css
cat src/_outlines.css            >> css/tachyons-with-css-variables.css
cat src/_borders.css             >> css/tachyons-with-css-variables.css
cat src/_border-colors.css       >> css/tachyons-with-css-variables.css
cat src/_border-radius.css       >> css/tachyons-with-css-variables.css
cat src/_border-style.css        >> css/tachyons-with-css-variables.css
cat src/_border-widths.css       >> css/tachyons-with-css-variables.css
cat src/_box-shadow.css          >> css/tachyons-with-css-variables.css
cat src/_code.css                >> css/tachyons-with-css-variables.css
cat src/_coordinates.css         >> css/tachyons-with-css-variables.css
cat src/_clears.css              >> css/tachyons-with-css-variables.css
cat src/_display.css             >> css/tachyons-with-css-variables.css
cat src/_flexbox.css             >> css/tachyons-with-css-variables.css
cat src/_floats.css              >> css/tachyons-with-css-variables.css
cat src/_font-family.css         >> css/tachyons-with-css-variables.css
cat src/_font-style.css          >> css/tachyons-with-css-variables.css
cat src/_font-weight.css         >> css/tachyons-with-css-variables.css
cat src/_forms.css               >> css/tachyons-with-css-variables.css
cat src/_heights.css             >> css/tachyons-with-css-variables.css
cat src/_letter-spacing.css      >> css/tachyons-with-css-variables.css
cat src/_line-height.css         >> css/tachyons-with-css-variables.css
cat src/_links.css               >> css/tachyons-with-css-variables.css
cat src/_lists.css               >> css/tachyons-with-css-variables.css
cat src/_max-widths.css          >> css/tachyons-with-css-variables.css
cat src/_widths.css              >> css/tachyons-with-css-variables.css
cat src/_overflow.css            >> css/tachyons-with-css-variables.css
cat src/_position.css            >> css/tachyons-with-css-variables.css
cat src/_opacity.css             >> css/tachyons-with-css-variables.css
cat src/_rotations.css           >> css/tachyons-with-css-variables.css
cat src/_skins.css               >> css/tachyons-with-css-variables.css
cat src/_skins-pseudo.css        >> css/tachyons-with-css-variables.css
cat src/_spacing.css             >> css/tachyons-with-css-variables.css
cat src/_negative-margins.css    >> css/tachyons-with-css-variables.css
cat src/_tables.css              >> css/tachyons-with-css-variables.css
cat src/_text-decoration.css     >> css/tachyons-with-css-variables.css
cat src/_text-align.css          >> css/tachyons-with-css-variables.css
cat src/_text-transform.css      >> css/tachyons-with-css-variables.css
cat src/_type-scale.css          >> css/tachyons-with-css-variables.css
cat src/_typography.css          >> css/tachyons-with-css-variables.css
cat src/_utilities.css           >> css/tachyons-with-css-variables.css
cat src/_visibility.css          >> css/tachyons-with-css-variables.css
cat src/_white-space.css         >> css/tachyons-with-css-variables.css
cat src/_vertical-align.css      >> css/tachyons-with-css-variables.css
cat src/_hovers.css              >> css/tachyons-with-css-variables.css
cat src/_z-index.css             >> css/tachyons-with-css-variables.css
cat src/_nested.css              >> css/tachyons-with-css-variables.css
cat src/_styles.css              >> css/tachyons-with-css-variables.css

# Variables
# Importing here will allow you to override any variables in the modules
cat src/_colors.css              >> css/tachyons-with-css-variables.css

# Media Queries
perl -pi -e "s/--breakpoint-not-small/${BREAKPOINT_NOT_SMALL}/g" css/tachyons-with-css-variables.css
perl -pi -e "s/--breakpoint-medium/${BREAKPOINT_MEDIUM}/g"       css/tachyons-with-css-variables.css
perl -pi -e "s/--breakpoint-large/${BREAKPOINT_LARGE}/g"         css/tachyons-with-css-variables.css

npx minify css/tachyons-with-css-variables.css > css/tachyons-with-css-variables.min.css
