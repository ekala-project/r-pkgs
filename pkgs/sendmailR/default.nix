{
  buildRPackage,
  fetchurl,
  base64enc,
}:

buildRPackage {
  pname = "sendmailR";
  version = "1.4-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sendmailR_1.4-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sendmailR/sendmailR_1.4-1.tar.gz"
    ];
    sha256 = "1lgx1a9kn3j6f0i6lh2jyhpkcdwmpfs0g17zmjy1yza9jmv18n1b";
  };

  propagatedBuildInputs = [
    base64enc
  ];

  meta = {
    description = "R package sendmailR";
    homepage = "https://cran.r-project.org/package=sendmailR";
  };
}
