class MossTools < Formula
  desc "Moss Fantasy Console Tools"
  homepage "https://github.com/moss-32/tools"

  version "0.1.1"

  on_linux do
    on_intel do
      url "https://github.com/moss-32/tools/releases/download/v#{version}/moss-sprite-converter-#{version}-linux-x86_64.tar.gz"
      sha256 "df3bc77372ae20aabac51cb7792935b43e35cb17f2ed5be36af362de132322a9"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/tools/releases/download/v#{version}/moss-sprite-converter-#{version}-macos-arm64.tar.gz"
      sha256 "e477d657d432672378bb76c66183cc460717e2556e5948cce6b61bc8d97d68ca"
    end

    on_intel do
      url "https://github.com/moss-32/tools/releases/download/v#{version}/moss-sprite-converter-#{version}-macos-x86_64.tar.gz"
      sha256 "f1e51ab6e754c69f932b36d6a5bcd790c4072aef80bd57ba4e6b4c60fc9d74a6"
    end
  end


def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-sprite-converter-#{os}-#{arch}" => "moss-sprite-converter"
  end
end
