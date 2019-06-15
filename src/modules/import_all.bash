# ---
# Category: Lobash
# Since: 0.1.0
# Dependent: import
# Usage: import_all [prefix=l.]
# Description: Import all Lobash modules.
# Description: <prefix> must end with `.`, `-`, `_`
# ---

_l.import_all() {
  local prefix=${1:-$_LOBASH_DEFAULT_PREFIX}

  local src_dir
  src_dir="$(_lobash_dirname "${BASH_SOURCE[0]}")"

  local -a modules=( $(ls "$src_dir") )
  local -a module_names
  local module

  _lobash_debug modules.size="${#modules[*]}" modules="${modules[*]}"

  for module in "${modules[@]}"; do
    local name=${module%.bash}
    [[ ${_LOBASH_IMPORT_ENTRIES[*]} =~ ${name} ]] && continue
    module_names+=("$name")
  done

  _lobash_debug module_names.size="${#module_names[*]}" module_names="${module_names[*]}"

  _l.imports "${module_names[@]}" "$prefix"
}

# For replace custom prefix of public method. Private method name never changed.
import_all() {
  _l.import_all "$@"
}
