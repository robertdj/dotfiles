version = '0.21.9'

-- xplr.config.modes.builtin.default = {
--     name = "Quit and change directory",
--     key_bindings = {
--         on_key = {
--             q = {
--                 help = "Quit and change directory",
--                 messages = {
--                   "Print the path under focus and quit",
--                   "cd %q"  -- replace %q with the actual path
--                 }
--             }
--         }
--     }
-- }

xplr.config.modes.custom.fzxplr = {
  name = "fzxplr",
  key_bindings = {
    on_key = {
      F = {
        help = "search",
        messages = {
          {
            BashExec = [===[
              PTH=$(cat "${XPLR_PIPE_DIRECTORY_NODES_OUT:?}" | awk -F/ '{print $NF}' | fzf)
              if [ -d "$PTH" ]; then
                "$XPLR" -m 'ChangeDirectory: %q' "$PTH"
              else
                "$XPLR" -m 'FocusPath: %q' "$PTH"
              fi
            ]===]
          },
          "PopMode",
        },
      },
    },
    default = {
      messages = {
        "PopMode",
      },
    },
  },
}

-- xplr.config.modes.builtin.default.key_bindings.on_key["F"] = {
--   help = "fzf mode",
--   messages = {
--     { SwitchModeCustom = "fzxplr" },
--   },
-- }

-- xplr.config.modes.builtin.default = {
--     key_bindings = {
--         on_key = {
--             ["F"] = {
--                 help = "fzf mode",
--                 messages = {
--                   { SwitchModeCustom = "fzxplr" },
--                 },
--             },
--             -- ["Q"] = {
--             --     help = "Quit",
--             --     messages = {
--             --         "$XPLR" -m 'ChangeDirectory: %q'
--             --     },
--             -- },
--         }
--     },
-- }

