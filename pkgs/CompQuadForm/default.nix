{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "CompQuadForm";
  version = "1.4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CompQuadForm_1.4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CompQuadForm/CompQuadForm_1.4.4.tar.gz"
    ];
    sha256 = "0hx15zs180q1kpm7pp608sgmarwjjf4gss4lmavxzmkwpy3j1bw4";
  };

  meta = {
    description = "R package CompQuadForm";
    homepage = "https://cran.r-project.org/package=CompQuadForm";
  };
}
