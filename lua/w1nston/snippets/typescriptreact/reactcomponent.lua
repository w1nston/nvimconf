local function component_name_from_filename()
    return sn(nil, { i(1, vim.fn.expand("%:t:r")) })
end

return {
    s("component", fmt([[
      type {}Props = {{
        {}
      }};

      export function {}({{}}: {}Props) {{

        return null;

      }}
    ]], {
        d(1, component_name_from_filename),
        i(2),
        rep(1),
        rep(1),
    })),
}
