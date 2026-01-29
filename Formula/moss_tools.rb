class MossTools < Formula
  desc "Moss Fantasy Console Tools"
  homepage "https://github.com/moss-32/tools"

  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/moss-32/tools/releases/download/v#{version}/moss-sprite-converter-#{version}-macos-arm64.tar.gz"
      sha256 "cb12d5bf32c089a0374d93af8175c68ed1d94702070b9b93512fecec974703b3"
    end

    on_intel do
      url "https://github.com/moss-32/tools/releases/download/v#{version}/moss-sprite-converter-#{version}-macos-x86_64.tar.gz"
      sha256 "e2d47d64a4489223bb5fe4fdb7e29b2ac34ae12579381afe88bb079748735897"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moss-32/tools/releases/download/v#{version}/moss-sprite-converter-#{version}-linux-x86_64.tar.gz"
      sha256 "ae66407b5ba9e4ebf24016d6b49ce491b242b10d8bd353d558c83ac58206994a"
    end
  end

def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-sprite-converter-#{os}-#{arch}" => "moss-sprite-converter"
  end
end
