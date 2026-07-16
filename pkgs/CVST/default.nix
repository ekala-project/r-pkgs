{
  buildRPackage,
  fetchurl,
  Matrix,
  kernlab,
}:

buildRPackage {
  pname = "CVST";
  version = "0.2-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CVST_0.2-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CVST/CVST_0.2-3.tar.gz"
    ];
    sha256 = "0bgk0d6w3dyhb5s30idnp6jpb3m8wf3b79wqlg127wwm0cird8pg";
  };

  propagatedBuildInputs = [
    Matrix
    kernlab
  ];

  meta = {
    description = "R package CVST";
    homepage = "https://cran.r-project.org/package=CVST";
  };
}
