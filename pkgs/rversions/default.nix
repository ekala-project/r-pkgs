{
  buildRPackage,
  fetchurl,
  curl,
}:

buildRPackage {
  pname = "rversions";
  version = "3.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rversions_3.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rversions/rversions_3.0.0.tar.gz"
    ];
    sha256 = "1q9k169vd31pvigf8q5lwc0zvacbycv7nl584kdh2mzbbyfjb06s";
  };

  propagatedBuildInputs = [
    curl
  ];

  meta = {
    description = "R package rversions";
    homepage = "https://cran.r-project.org/package=rversions";
  };
}
