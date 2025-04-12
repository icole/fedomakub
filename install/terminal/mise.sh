# Install mise for managing multiple versions of languages. See https://mise.jdx.dev/
dnf install -y dnf-plugins-core
dnf config-manager addrepo --from-repofile=https://mise.jdx.dev/rpm/mise.repo
dnf install -y mise
