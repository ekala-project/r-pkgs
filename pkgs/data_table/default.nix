{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "data_table";
  version = "1.18.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/data_table_1.18.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/data_table/data_table_1.18.4.tar.gz"
    ];
    sha256 = "1ffypmf83iqn6h2igvbmjr7qk31ai84vb0jr1mvl6r0a0pq5clnn";
  };

  meta = {
    description = "R package data_table";
    homepage = "https://cran.r-project.org/package=data_table";
  };
}
