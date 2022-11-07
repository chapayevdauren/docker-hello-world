from src.app import hello_geek


def test_hello_geek():
    result = hello_geek()
    assert result == '<h1>Hello from Flask & Docker</h2>'


def test_nothing():
    assert True == False
