class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.4/switchloom-darwin-arm64.tar.gz"
      sha256 "ab1ca8d75c8d84bd215f9e8a112f59bf7626514862170dd5d7ea2b5539a70531"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.4/switchloom-darwin-x86_64.tar.gz"
      sha256 "d9e800f391011cddf3cce1c6890926d10cc3d68dac52a3c3997458b570f1053f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.4/switchloom-linux-arm64.tar.gz"
      sha256 "34116a99d7cb0cb4cd98d7fb3dac1d836a9f43b34f5e05ff195bd1b80a5ae357"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.4/switchloom-linux-x86_64.tar.gz"
      sha256 "794e816e98e83373739d02aa41d7148f22b80c53e45a53aa195dbd89fcedbe88"
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
