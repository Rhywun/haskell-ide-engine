module Main where

import Test.Hspec.Runner
import TestUtils
import qualified Spec

-- ---------------------------------------------------------------------

main :: IO ()
main = do
  setupStackFiles
  withFileLogging "main.log" $ hspec Spec.spec

-- main :: IO ()
-- main = do
--   summary <- withFile "results.xml" WriteMode $ \h -> do
--     let c = defaultConfig
--           { configFormatter = xmlFormatter
--           , configHandle = h
--           }
--     hspecWith c Spec.spec
--   unless (summaryFailures summary == 0) $
--     exitFailure

-- ---------------------------------------------------------------------

