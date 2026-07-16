{
  buildRPackage,
  fetchurl,
  DBI,
}:

buildRPackage {
  pname = "RPostgreSQL";
  version = "0.7-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RPostgreSQL_0.7-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RPostgreSQL/RPostgreSQL_0.7-8.tar.gz"
    ];
    sha256 = "0g4ny3l6dl4grk99nvpm9fw3052f051bnz7h31hfacr5zrpsn5gj";
  };

  propagatedBuildInputs = [
    DBI
  ];

  meta = {
    description = "R package RPostgreSQL";
    homepage = "https://cran.r-project.org/package=RPostgreSQL";
  };
}
