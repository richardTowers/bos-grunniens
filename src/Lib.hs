{-# LANGUAGE OverloadedStrings #-}

module Lib ( helloWorld ) where

import Web.Scotty
import Network.Wai.Middleware.Static

helloWorld :: IO ()
helloWorld = scotty 3000 $ do
  middleware $ staticPolicy $ noDots >-> isNotAbsolute >-> hasPrefix "public"

  get "/" $
    html "<h1>Hello World!</h1>"
