def test(test_method, str, expected)
  return send(test_method, str) == expected
end
