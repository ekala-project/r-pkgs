{
  buildRPackage,
  fetchurl,
  expint,
}:

buildRPackage {
  pname = "actuar";
  version = "3.3-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/actuar_3.3-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/actuar/actuar_3.3-7.tar.gz"
    ];
    sha256 = "1n7md7q9nv7s4dr0ybjq7km1m36gz84mlrqhdp27wbw2jxvndh80";
  };

  propagatedBuildInputs = [
    expint
  ];

  meta = {
    description = "R package actuar";
    homepage = "https://cran.r-project.org/package=actuar";
  };
}
