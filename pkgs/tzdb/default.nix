{
  buildRPackage,
  fetchurl,
  cpp11,
}:

buildRPackage {
  pname = "tzdb";
  version = "0.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tzdb_0.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tzdb/tzdb_0.5.0.tar.gz"
    ];
    sha256 = "1ns7ygy35lyya0cdaxxvvcqn7cm2422svnfinzfjywpsvcvm439q";
  };

  propagatedBuildInputs = [
    cpp11
  ];

  meta = {
    description = "R package tzdb";
    homepage = "https://cran.r-project.org/package=tzdb";
  };
}
