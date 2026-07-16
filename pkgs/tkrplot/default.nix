{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tkrplot";
  version = "0.0-32";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tkrplot_0.0-32.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tkrplot/tkrplot_0.0-32.tar.gz"
    ];
    sha256 = "1avpshwgs16qk7a59qbjripjys46fnda69qjcc7hv2bvv0g5jym3";
  };

  meta = {
    description = "R package tkrplot";
    homepage = "https://cran.r-project.org/package=tkrplot";
  };
}
