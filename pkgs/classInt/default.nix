{
  buildRPackage,
  fetchurl,
  KernSmooth,
  class,
  e1071,
}:

buildRPackage {
  pname = "classInt";
  version = "0.4-11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/classInt_0.4-11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/classInt/classInt_0.4-11.tar.gz"
    ];
    sha256 = "19nhqmlxirq8h87wj7wxrw8krg0fyp6c68slnv2ir5bzrx26hdld";
  };

  propagatedBuildInputs = [
    KernSmooth
    class
    e1071
  ];

  meta = {
    description = "R package classInt";
    homepage = "https://cran.r-project.org/package=classInt";
  };
}
