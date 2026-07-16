{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "kit";
  version = "0.0.21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kit_0.0.21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kit/kit_0.0.21.tar.gz"
    ];
    sha256 = "1jjg8acsngv5m3v0ap24zg2q30xfrf16zf87fbcbf771hyxzzr5z";
  };

  meta = {
    description = "R package kit";
    homepage = "https://cran.r-project.org/package=kit";
  };
}
