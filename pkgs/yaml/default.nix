{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "yaml";
  version = "2.3.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/yaml_2.3.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/yaml/yaml_2.3.12.tar.gz"
    ];
    sha256 = "0v2mrn4m56b6sjf71i6gvb6cd5n22yl1if1kwgrkw4six3fz7k40";
  };

  meta = {
    description = "R package yaml";
    homepage = "https://cran.r-project.org/package=yaml";
  };
}
