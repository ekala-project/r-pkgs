{
  buildRPackage,
  fetchurl,
  cli,
}:

buildRPackage {
  pname = "clarabel";
  version = "0.11.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clarabel_0.11.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clarabel/clarabel_0.11.2.tar.gz"
    ];
    sha256 = "14181g2rsqnd564qhv7b09dfxjbsdk8vj0x3avxyaw9flx99ihdq";
  };

  propagatedBuildInputs = [
    cli
  ];

  meta = {
    description = "R package clarabel";
    homepage = "https://cran.r-project.org/package=clarabel";
  };
}
