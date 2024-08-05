class GitGenie < Formula
  desc "A command-line tool to help you manage your GitHub repositories"
  homepage "https://gitgenie.io/"
  url "https://github.com/alfhh/git-genie/releases/download/v1.0.2/git-genie.phar"
  sha256 "8297742e53832097b072b0a08980aa764981d9674d42bb337367571891f49a87"
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