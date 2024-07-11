class GitGenie < Formula
  desc "A command-line tool to help you manage your GitHub repositories"
  homepage "https://gitgenie.io/"
  url "https://github.com/alfhh/git-genie/releases/download/v1.0.0/git-genie.phar"
  sha256 "6809343ea2629ed54b950be3786adf375a47a632075e476dc049a40f684c1cc5"
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