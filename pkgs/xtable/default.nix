{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "xtable";
  version = "1.8-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xtable_1.8-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xtable/xtable_1.8-8.tar.gz"
    ];
    sha256 = "0415dfpll2lx7cwih19c67lhjmjcz3jp03jb2f9gnm8jp4qw16dr";
  };

  meta = {
    description = "R package xtable";
    homepage = "https://cran.r-project.org/package=xtable";
  };
}
