{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "wesanderson";
  version = "0.3.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/wesanderson_0.3.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/wesanderson/wesanderson_0.3.7.tar.gz"
    ];
    sha256 = "0kjyz5mrkrirg2glf57b0rhxj2fdp1m6q8zx947y0jg1w425cbn9";
  };

  meta = {
    description = "R package wesanderson";
    homepage = "https://cran.r-project.org/package=wesanderson";
  };
}
