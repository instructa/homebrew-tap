class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.3/switchloom-darwin-arm64.tar.gz"
      sha256 "3e65582d499dcd5055f292bd518dcbd6c3ba0c94feea885d9cd7cc18aa21b5a9"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.3/switchloom-darwin-x86_64.tar.gz"
      sha256 "523e0e8620e79650ae57cf5a0d29b63212979ba686879c7b9a9f913618bc0c9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.3/switchloom-linux-arm64.tar.gz"
      sha256 "21fb68bab03f150905442315723a41721d97ec3191cb871a36e6e2324a84a8e3"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.3/switchloom-linux-x86_64.tar.gz"
      sha256 "46c67d929e001158c8227a6ab785f6ae6a7428a01427f79c84ca32cf115c2a71"
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
