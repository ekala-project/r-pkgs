{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "curl";
  version = "7.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/curl_7.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/curl/curl_7.1.0.tar.gz"
    ];
    sha256 = "1afqbxlpfws3yfcb6slyayv3yw05r2mdn60cwvxiik3a62v7kw3l";
  };

  meta = {
    description = "R package curl";
    homepage = "https://cran.r-project.org/package=curl";
  };
}
