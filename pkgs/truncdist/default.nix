{
  buildRPackage,
  fetchurl,
  evd,
}:

buildRPackage {
  pname = "truncdist";
  version = "1.0-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/truncdist_1.0-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/truncdist/truncdist_1.0-2.tar.gz"
    ];
    sha256 = "02ihw4ixhadwr3sqm6r264i8vpcaz8pn69vkzabd8fwqvn5vcj5q";
  };

  propagatedBuildInputs = [
    evd
  ];

  meta = {
    description = "R package truncdist";
    homepage = "https://cran.r-project.org/package=truncdist";
  };
}
