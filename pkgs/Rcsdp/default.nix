{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Rcsdp";
  version = "0.1.57.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rcsdp_0.1.57.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rcsdp/Rcsdp_0.1.57.6.tar.gz"
    ];
    sha256 = "0c2vpq89k1dxkil0gf4qh1vv2xajcbxnhfavc6sc0qwz54394xf9";
  };

  meta = {
    description = "R package Rcsdp";
    homepage = "https://cran.r-project.org/package=Rcsdp";
  };
}
