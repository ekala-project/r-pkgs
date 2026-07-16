{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "norm";
  version = "1.0-11.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/norm_1.0-11.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/norm/norm_1.0-11.1.tar.gz"
    ];
    sha256 = "1g33g721c0f2b275b334ir6n0h81fh567vs9vrxk60y21z1ydzy2";
  };

  meta = {
    description = "R package norm";
    homepage = "https://cran.r-project.org/package=norm";
  };
}
