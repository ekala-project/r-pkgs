{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "contfrac";
  version = "1.1-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/contfrac_1.1-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/contfrac/contfrac_1.1-12.tar.gz"
    ];
    sha256 = "0sq5c7ny235yrkv2xc4insgxby6rvzc1qsj8h301cd2if3lwbgwm";
  };

  meta = {
    description = "R package contfrac";
    homepage = "https://cran.r-project.org/package=contfrac";
  };
}
