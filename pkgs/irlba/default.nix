{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "irlba";
  version = "2.3.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/irlba_2.3.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/irlba/irlba_2.3.7.tar.gz"
    ];
    sha256 = "16b8yrpq9zpha9435vspkbvjh68am506941fihvxyhr4hf2d7b1k";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package irlba";
    homepage = "https://cran.r-project.org/package=irlba";
  };
}
