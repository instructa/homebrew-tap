class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.2.0/switchloom-darwin-arm64.tar.gz"
      sha256 "028e1de5218b0493d826c1043551330e3581f677722c5597ff7dc6bc59b294a6"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.2.0/switchloom-darwin-x86_64.tar.gz"
      sha256 "dcb18b7d782a91b439b8c45623ee3de5dcf574789d33438567390b4994b6e046"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.2.0/switchloom-linux-arm64.tar.gz"
      sha256 "73af0de9b07e9095c6ef9798596f93668ea038b2f52d70ec9a37f97ff34cb50e"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.2.0/switchloom-linux-x86_64.tar.gz"
      sha256 "a6be2974ce3b7ddf12f989931c458d619bf5740069803733ac1edb29a3054217"
    end
  end

  def install
    bin.install "model-routing"
    bin.install_symlink "model-routing" => "switchloom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/switchloom --version")
  end
end
