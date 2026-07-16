{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rsvg";
  version = "2.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsvg_2.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsvg/rsvg_2.7.0.tar.gz"
    ];
    sha256 = "0lap0hlgd3h087580xmpnzifj78i0j74rxx8rbi6w9nlqmm10jki";
  };

  meta = {
    description = "R package rsvg";
    homepage = "https://cran.r-project.org/package=rsvg";
  };
}
