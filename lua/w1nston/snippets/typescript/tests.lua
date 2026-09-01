return {
    s("test", fmt([[
      test('{}', () => {{
          {}
      }});
    ]], { i(1, "description"), i(2) })),
}
