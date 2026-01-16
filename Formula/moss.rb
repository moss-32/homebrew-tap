class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "3e96ad3e6a7dc3196846b85e5cdc77e95e9bb3d8c47fac5c88a52aac1e873b08"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "04f8aec714c4530794a12887f6d729f9312598dc012e2469b7efcaf4041583ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "6ce205d958a3abf9fb9b7d5a6dc6a9235786c6d95338e250cfe19fc7896dfc80"
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
