{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gss";
  version = "2.2-10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gss_2.2-10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gss/gss_2.2-10.tar.gz"
    ];
    sha256 = "01vx5sm9171lnzf3hi4zcypgxg3zzpniqqf2n9vl0ahnmwfcki0i";
  };

  meta = {
    description = "R package gss";
    homepage = "https://cran.r-project.org/package=gss";
  };
}
