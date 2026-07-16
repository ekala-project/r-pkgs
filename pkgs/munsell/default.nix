{
  buildRPackage,
  fetchurl,
  colorspace,
}:

buildRPackage {
  pname = "munsell";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/munsell_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/munsell/munsell_0.5.1.tar.gz"
    ];
    sha256 = "19i9jjawlqciw4n4h99a4sm0lbc77la3pqyzjvnwsrh7qjdgv8h3";
  };

  propagatedBuildInputs = [
    colorspace
  ];

  meta = {
    description = "R package munsell";
    homepage = "https://cran.r-project.org/package=munsell";
  };
}
