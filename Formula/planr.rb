class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.0/planr-darwin-arm64.tar.gz"
      sha256 "b7b66356c3919c4c19e3ab3355be6b924a940e73abdfbd5bd361187d9bd018b9"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.0/planr-darwin-x86_64.tar.gz"
      sha256 "f786960ef28d098028cacd4acc7ef90472fa8af268d85df46f88d5b032239a23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.0/planr-linux-arm64.tar.gz"
      sha256 "a151aaa611fecd0cdc1bebe52ac58bb966ad130091681bdc0b966241e2b70ebd"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.0/planr-linux-x86_64.tar.gz"
      sha256 "83e950e18f6c6c875119befe8b16f8ad0a1e69c780800a449ebbf07a903168d1"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
