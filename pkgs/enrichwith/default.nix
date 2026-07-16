{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "enrichwith";
  version = "0.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/enrichwith_0.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/enrichwith/enrichwith_0.5.0.tar.gz"
    ];
    sha256 = "01vfwi38p8w0b9lzl6fvl2l79zmc9dwfy0344kw0pd09ch9hf77x";
  };

  meta = {
    description = "R package enrichwith";
    homepage = "https://cran.r-project.org/package=enrichwith";
  };
}
