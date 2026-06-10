class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.7/planr-darwin-arm64.tar.gz"
      sha256 "5798054ccf31ed2fafe16bd5a8a55d4e10a539b7f1b25d28df5623578908eec4"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.7/planr-darwin-x86_64.tar.gz"
      sha256 "6242299c253f60d39a71e03de63cbe2892604ba526718e521653ba91b0aeccfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.7/planr-linux-arm64.tar.gz"
      sha256 "a39e9cb22b34cfd8a1aaa056b2f3d388ce749b89c670305c2585be3db5d15555"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.7/planr-linux-x86_64.tar.gz"
      sha256 "25a0fbce7ce26db8c06bd864247a74db06313090d786a8767e6236063bb05ef3"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
