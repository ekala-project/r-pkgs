{
  buildRPackage,
  fetchurl,
  R_methodsS3,
  R_oo,
}:

buildRPackage {
  pname = "rtf";
  version = "0.4-14.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rtf_0.4-14.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rtf/rtf_0.4-14.1.tar.gz"
    ];
    sha256 = "032ff0yavqmd2d9svgwkmvxwh0cxjbac6pj48v4cshi898f02rhh";
  };

  propagatedBuildInputs = [
    R_methodsS3
    R_oo
  ];

  meta = {
    description = "R package rtf";
    homepage = "https://cran.r-project.org/package=rtf";
  };
}
