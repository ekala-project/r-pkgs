{
  buildRPackage,
  fetchurl,
  jsonlite,
  shiny,
}:

buildRPackage {
  pname = "shinyAce";
  version = "0.4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyAce_0.4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyAce/shinyAce_0.4.4.tar.gz"
    ];
    sha256 = "1bb2kjn3ykhz544njx48vanssh4n97kv9r0p4w6ag8ir04mwl8nw";
  };

  propagatedBuildInputs = [
    jsonlite
    shiny
  ];

  meta = {
    description = "R package shinyAce";
    homepage = "https://cran.r-project.org/package=shinyAce";
  };
}
