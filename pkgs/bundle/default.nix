{
  buildRPackage,
  fetchurl,
  glue,
  lifecycle,
  purrr,
  rlang,
  withr,
}:

buildRPackage {
  pname = "bundle";
  version = "0.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bundle_0.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bundle/bundle_0.1.3.tar.gz"
    ];
    sha256 = "0xagw15dn4vfgn2n2v5ii0sn0snqz5p7f4f0h4a0cqd27df7az7i";
  };

  propagatedBuildInputs = [
    glue
    lifecycle
    purrr
    rlang
    withr
  ];

  meta = {
    description = "R package bundle";
    homepage = "https://cran.r-project.org/package=bundle";
  };
}
