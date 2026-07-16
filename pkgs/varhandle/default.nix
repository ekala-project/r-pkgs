{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "varhandle";
  version = "2.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/varhandle_2.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/varhandle/varhandle_2.0.6.tar.gz"
    ];
    sha256 = "0xy5w7cz9sb0xmxvzajg4sf0ip2ihxc5nimh10awchvkywzgsyjf";
  };

  meta = {
    description = "R package varhandle";
    homepage = "https://cran.r-project.org/package=varhandle";
  };
}
