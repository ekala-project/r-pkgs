{
  buildRPackage,
  fetchurl,
  codetools,
}:

buildRPackage {
  pname = "globals";
  version = "0.19.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/globals_0.19.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/globals/globals_0.19.1.tar.gz"
    ];
    sha256 = "0yb946610vhp7m9ixq30cf1vzfm649vxj5g63fm751zb4fj7x3dm";
  };

  propagatedBuildInputs = [
    codetools
  ];

  meta = {
    description = "R package globals";
    homepage = "https://cran.r-project.org/package=globals";
  };
}
