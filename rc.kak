declare-option -hidden str unicode_math_path %sh{ dirname $kak_source }

provide-module unicode-math %は
    declare-option str unicode_math_python_interpreter "python3"
    
    define-command -params 1 -docstring "Insert a mathematical symbol from the list (check completion)" insert-unicode %{
        execute-keys %sh{cd $kak_opt_unicode_math_path; exec $kak_opt_unicode_math_python_interpreter read.py apply "$@"}
    }

    complete-command -menu insert-unicode shell-script-candidates %{
        cd $kak_opt_unicode_math_path; exec $kak_opt_unicode_math_python_interpreter read.py
    }
は

