{
  buildRPackage,
  fetchurl,
  fda,
  fields,
}:

buildRPackage {
  pname = "CCA";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CCA_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CCA/CCA_1.2.2.tar.gz"
    ];
    sha256 = "0r1f7m64608hq6bpw36wsw6fr4s8bj26x4062brqgn5dbpqlgczk";
  };

  propagatedBuildInputs = [
    fda
    fields
  ];

  meta = {
    description = "R package CCA";
    homepage = "https://cran.r-project.org/package=CCA";
  };
}
