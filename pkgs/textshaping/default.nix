{
  buildRPackage,
  fetchurl,
  cpp11,
  lifecycle,
  stringi,
  systemfonts,
}:

buildRPackage {
  pname = "textshaping";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/textshaping_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/textshaping/textshaping_1.0.5.tar.gz"
    ];
    sha256 = "1pa3ciwbk3ifmvpiwsacyh3gi5ypdjci1pjnpd4qnjw86mars80j";
  };

  propagatedBuildInputs = [
    cpp11
    lifecycle
    stringi
    systemfonts
  ];

  meta = {
    description = "R package textshaping";
    homepage = "https://cran.r-project.org/package=textshaping";
  };
}
