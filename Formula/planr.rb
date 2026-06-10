class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.12/planr-darwin-arm64.tar.gz"
      sha256 "b900c358876cc60c776b2925e9f31856b653d0df29f915253ebd4eb791b27a55"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.12/planr-darwin-x86_64.tar.gz"
      sha256 "2255a984021addae66e6901394fc69bb7e6f18ab7a277adc8f9b13a46754bc4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.12/planr-linux-arm64.tar.gz"
      sha256 "2b9e09e623048acdc436d9be7de7d3126dd93273983799b8710cca8a36041ea2"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.12/planr-linux-x86_64.tar.gz"
      sha256 "c0658990de084ef57dc1314aed89edfa7e5a3f104953aec9031ed2dd3381d1e4"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
