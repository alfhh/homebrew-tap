class GitGenie < Formula
  desc "A command-line tool to help you manage your GitHub repositories"
  homepage "https://gitgenie.io/"
  url "https://github.com/alfhh/git-genie/releases/download/v0.1.6-test/git-genie.phar"
  sha256 "5e3b44364e49eb2162f17326964d8877d3ec75b4fa8a3eaf86b254f120bcfbe6"
  license "MIT"

  livecheck do
    url "https://github.com/alfhh/git-genie/releases/latest"
    regex(/href=.*?myapp[._-]v?(\d+(?:\.\d+)+)\.phar/i)
  end

  depends_on "php"

  def install
    bin.install "git-genie.phar" => "git-genie"
  end

  test do
    system "#{bin}/git-genie", "--version"
  end
end