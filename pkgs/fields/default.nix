{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  maps,
  spam,
  viridisLite,
}:

buildRPackage {
  pname = "fields";
  version = "17.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fields_17.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fields/fields_17.3.tar.gz"
    ];
    sha256 = "1cyr5762zkzkzxmmz55gs68bigv27g58sy5s4bjbzv0rw7b9qfhx";
  };

  propagatedBuildInputs = [
    RColorBrewer
    maps
    spam
    viridisLite
  ];

  meta = {
    description = "R package fields";
    homepage = "https://cran.r-project.org/package=fields";
  };
}
