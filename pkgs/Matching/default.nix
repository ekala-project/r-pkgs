{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "Matching";
  version = "4.10-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Matching_4.10-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Matching/Matching_4.10-15.tar.gz"
    ];
    sha256 = "1l6ygj6jqb7w4n6x87j02bhd7411mh4zf7ajr9414frwj1dqzv9h";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package Matching";
    homepage = "https://cran.r-project.org/package=Matching";
  };
}
