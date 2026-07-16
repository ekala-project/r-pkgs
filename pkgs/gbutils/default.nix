{
  buildRPackage,
  fetchurl,
  Rdpack,
}:

buildRPackage {
  pname = "gbutils";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gbutils_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gbutils/gbutils_0.5.1.tar.gz"
    ];
    sha256 = "0ysirlh6c5rypvbazyjjqcx81gidwpgsfxd62pkx4a08frwi8yq9";
  };

  propagatedBuildInputs = [
    Rdpack
  ];

  meta = {
    description = "R package gbutils";
    homepage = "https://cran.r-project.org/package=gbutils";
  };
}
