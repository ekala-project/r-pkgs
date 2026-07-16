{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "colorRamps";
  version = "2.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/colorRamps_2.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/colorRamps/colorRamps_2.3.4.tar.gz"
    ];
    sha256 = "1y4gn6v8wmwq3wcfgdnx1ah2qa53gayvbfa62kp286ga4c8k3prw";
  };

  meta = {
    description = "R package colorRamps";
    homepage = "https://cran.r-project.org/package=colorRamps";
  };
}
