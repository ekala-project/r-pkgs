{
  buildRPackage,
  fetchurl,
  bit,
}:

buildRPackage {
  pname = "bit64";
  version = "4.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bit64_4.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bit64/bit64_4.8.2.tar.gz"
    ];
    sha256 = "17yvynd7pikv4y3c5q9gvb3fjkna0w5pddizzglqkhzbqsn0fndy";
  };

  propagatedBuildInputs = [
    bit
  ];

  meta = {
    description = "R package bit64";
    homepage = "https://cran.r-project.org/package=bit64";
  };
}
