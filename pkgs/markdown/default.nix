{
  buildRPackage,
  fetchurl,
  litedown,
  xfun,
}:

buildRPackage {
  pname = "markdown";
  version = "2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/markdown_2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/markdown/markdown_2.0.tar.gz"
    ];
    sha256 = "0hcmpy4x2rwq061ybq1xyqxbc76jm0zfzgzy70g90y38zdsxwq55";
  };

  propagatedBuildInputs = [
    litedown
    xfun
  ];

  meta = {
    description = "R package markdown";
    homepage = "https://cran.r-project.org/package=markdown";
  };
}
