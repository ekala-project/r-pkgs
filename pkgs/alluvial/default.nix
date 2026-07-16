{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "alluvial";
  version = "0.1-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/alluvial_0.1-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/alluvial/alluvial_0.1-2.tar.gz"
    ];
    sha256 = "039frwrsxq1lb97s7vf2vbyyadimkigs628ymym06fxka53drdkp";
  };

  meta = {
    description = "R package alluvial";
    homepage = "https://cran.r-project.org/package=alluvial";
  };
}
