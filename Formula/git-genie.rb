class GitGenie < Formula
  desc "A command-line tool to help you manage your GitHub repositories"
  homepage "https://gitgenie.io/"
  url "https://github.com/alfhh/git-genie/releases/download/v1.0.1/git-genie.phar"
  sha256 "3a8fde399213e6512c559944f3f0b4d2ee2082f6b10bed7942c5865b54fbb7bf"
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