class GitGenie < Formula
  desc "A command-line tool to help you manage your GitHub repositories"
  homepage "https://gitgenie.io/"
  url "https://github.com/alfhh/git-genie/releases/download/v0.1.5-test/git-genie.phar"
  sha256 :no_check
  license "MIT"

  livecheck do
    url "https://github.com/username/myapp/releases/latest"
    regex(/href=.*?myapp[._-]v?(\d+(?:\.\d+)+)\.phar/i)
  end

  depends_on "php"

  def install
    bin.install "git-genie.phar" => "git-genie"
  end

  test do
    system "#{bin}/myapp", "--version"
  end
end