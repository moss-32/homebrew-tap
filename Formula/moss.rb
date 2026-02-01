class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.9"


  on_linux do

    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-aarch64.tar.gz"
      sha256 "3674d099d3b55870242455ae6dcec47ad09ac45eea40575ee34b95d4f16d4b9e"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "3674d099d3b55870242455ae6dcec47ad09ac45eea40575ee34b95d4f16d4b9e"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "f8b75f362ffb83c1b61a20f726195002ebb59ba633482eddc2e10676496101fe"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "b73bad42c7c34d554cb0d39ab3cb50f3528b6e93be618e7ea67480aa4fb74652"
    end
  end



def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

end
