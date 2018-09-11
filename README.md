# erlang-cowboy-elm
=======
# erlang-cowboy
These are some examples of using Erlang Programming OTP web server by using Cowboy as the backend. Some examples are using Elm programming language as the front end.

## Installation
Make sure **Erlang/OTP 21** is installed at your computer/server. Please check [Erlang Installation Guide](http://erlang.org/doc/installation_guide/users_guide.html "Erlang Installation Guide")

Also ensure **Elm** is installed at your computer. Please check [Elm-Lang Installation Guide](https://guide.elm-lang.org/install.html "Elm Installation Guide")

## Running the example
1. Go to the one of the example directory.
2. Compile the Erlang code
```rebar3 compile```
3. Compile the Elm code
```cd priv/static```
```elm make main.elm```
4. Running the development server
```cd ../..```
```rebar3 shell```
