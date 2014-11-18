#!/usr/bin/env ocaml
#directory "pkg"
#use "topkg-ext.ml"

(* Sample configuration file *)

module Config = struct
  include Config_default
  let vars =
    [ "NAME", "remat";
      "VERSION", Git.describe ~chop_v:true "master";
      "MAINTAINER", "Daniel Bünzli <daniel.buenzl i\\\@erratique.ch>" ]
end
