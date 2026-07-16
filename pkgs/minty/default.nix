{
  buildRPackage,
  fetchurl,
  cpp11,
  tzdb,
}:

buildRPackage {
  pname = "minty";
  version = "0.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/minty_0.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/minty/minty_0.0.6.tar.gz"
    ];
    sha256 = "1aazbvqm186b84n2f4cg3zzyiwksyi4sidh8iacyyzp9cidy1xpb";
  };

  propagatedBuildInputs = [
    cpp11
    tzdb
  ];

  meta = {
    description = "R package minty";
    homepage = "https://cran.r-project.org/package=minty";
  };
}
