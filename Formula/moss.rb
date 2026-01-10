class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "35b0bb017c074eef1f6045adfd027fdcac2c0a85a1074586712976484e6feb7f"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "a701f142ef08fb27b78b2de3f0353ce490d61f6781d2abe518b174a3bbbae09a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "56d9e0abd3700437612650d734c2d57878883cdbc5cad50ef8aa7dc6f7eca054"
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
