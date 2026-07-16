{
  buildRPackage,
  fetchurl,
  GlobalOptions,
  crayon,
  rjson,
}:

buildRPackage {
  pname = "GetoptLong";
  version = "1.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GetoptLong_1.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GetoptLong/GetoptLong_1.1.1.tar.gz"
    ];
    sha256 = "15n50ihlknp2q36vkl3h668jwil40i1irjf9vpqlw1v26z2q9ixz";
  };

  propagatedBuildInputs = [
    GlobalOptions
    crayon
    rjson
  ];

  meta = {
    description = "R package GetoptLong";
    homepage = "https://cran.r-project.org/package=GetoptLong";
  };
}
