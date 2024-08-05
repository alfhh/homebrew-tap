class GitGenie < Formula
  desc "A command-line tool to help you manage your GitHub repositories"
  homepage "https://gitgenie.io/"
  url "https://github.com/alfhh/git-genie/releases/download/v1.0.3/git-genie.phar"
  sha256 "e16a535948c4f8eb41060eb121bba7c6e6f2fb836c9d4470fc00711f9a9805e6"
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