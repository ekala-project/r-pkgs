{
  buildRPackage,
  fetchurl,
  farver,
}:

buildRPackage {
  pname = "prismatic";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prismatic_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prismatic/prismatic_1.1.2.tar.gz"
    ];
    sha256 = "0qg2f5d7sz6q0ijrrdmjhp1msx9n77wndphrqqhjkdf9six5pgxs";
  };

  propagatedBuildInputs = [
    farver
  ];

  meta = {
    description = "R package prismatic";
    homepage = "https://cran.r-project.org/package=prismatic";
  };
}
