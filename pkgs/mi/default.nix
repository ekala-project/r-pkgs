{
  buildRPackage,
  fetchurl,
  Matrix,
  arm,
}:

buildRPackage {
  pname = "mi";
  version = "1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mi_1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mi/mi_1.2.tar.gz"
    ];
    sha256 = "133dvhigvqs6qadpf47zxxpgh1j0h2cgch8h88qh9viiw2s0klh6";
  };

  propagatedBuildInputs = [
    Matrix
    arm
  ];

  meta = {
    description = "R package mi";
    homepage = "https://cran.r-project.org/package=mi";
  };
}
