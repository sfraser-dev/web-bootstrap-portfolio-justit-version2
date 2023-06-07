#!/usr/bin/perl
use warnings;
use strict;
use File::Path qw(make_path);
make_path("../css/");

qx(sass ./style.scss:../css/style.css --no-source-map);
qx(sass ./style.scss:../css/style.min.css --style compressed --no-source-map);

qx(sass ./customized_bootstrap.scss:../css/customized_bootstrap.css --no-source-map);
qx(sass ./customized_bootstrap.scss:../css/customized_bootstrap.min.css --style compressed --no-source-map);