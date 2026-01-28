class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "a6b4ea09b0b17995ceea7626485789fd3b698a6ec3074c9a6f2727ff1f3bcf2b"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "b8b7bf25ed06c163b1168dfbd5ba97ef32ab1c9796bbffee53f51a9ac98d2f4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "05fa6afe84a133825074f10a7b863d28e510cb01ea2b7b1b203103b737e7cbc3"
    end
  end

def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

  #test do
    # verify the version of the binary
  #  assert_match "moss v#{version}", shell_output("#{bin}/moss help")
  #end
end
