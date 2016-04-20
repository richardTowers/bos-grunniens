{-# LANGUAGE OverloadedStrings #-}

module Lib ( helloWorld ) where

import Web.Scotty

helloWorld :: IO ()
helloWorld = scotty 3000 $
  get "/:word" $
    html "<h1>Hello World!</h1>"
