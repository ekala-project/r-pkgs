{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "hexbin";
  version = "1.28.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hexbin_1.28.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hexbin/hexbin_1.28.5.tar.gz"
    ];
    sha256 = "1rnk94mjhzfmpcq77iy8qi2j8dj8bdw9vdjmwm27s94z77b8gl1f";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package hexbin";
    homepage = "https://cran.r-project.org/package=hexbin";
  };
}
