{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "polyclip";
  version = "1.10-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/polyclip_1.10-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/polyclip/polyclip_1.10-7.tar.gz"
    ];
    sha256 = "1lshalmhdaw0g0hzfy2qwid282pq3kwzy4jz1hf73xmjlp1sm3pm";
  };

  meta = {
    description = "R package polyclip";
    homepage = "https://cran.r-project.org/package=polyclip";
  };
}
