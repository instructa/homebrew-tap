class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.0/planr-darwin-arm64.tar.gz"
      sha256 "a3e1d23a7618d38eff905a5d86845ba00b82c2be2a4961726bd41836c3b84989"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.0/planr-darwin-x86_64.tar.gz"
      sha256 "66ee8bafe8d38ffce0ce5abdf1a8b48077c9e490499d39204c2252adb2f5f037"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.0/planr-linux-arm64.tar.gz"
      sha256 "7b914c99ba789bfcada80eab26d4f88bef65716ce97769d67b9a1f66990d03c3"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.0/planr-linux-x86_64.tar.gz"
      sha256 "3e2f1bc8658d05cf81cfa25871ebddb7f745580f08d6552f85892acc2b99bdc0"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
