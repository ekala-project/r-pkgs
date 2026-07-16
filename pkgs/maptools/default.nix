{
  buildRPackage,
  fetchurl,
  foreign,
  lattice,
  sp,
}:

buildRPackage {
  pname = "maptools";
  version = "1.1-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/maptools_1.1-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/maptools/maptools_1.1-8.tar.gz"
    ];
    sha256 = "1xz0cqg629vz7mawwxx650mgmvh3wzn25rnxy4sij5jrypipk1ay";
  };

  propagatedBuildInputs = [
    foreign
    lattice
    sp
  ];

  meta = {
    description = "R package maptools";
    homepage = "https://cran.r-project.org/package=maptools";
  };
}
