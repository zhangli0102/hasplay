module Paths_addition (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/zhangli/hasplay/addition/.cabal-sandbox/bin"
libdir     = "/Users/zhangli/hasplay/addition/.cabal-sandbox/lib/x86_64-osx-ghc-7.10.3/addition-0.1.0.0-Eu6AI4WWcHXHoJVPdeLlpc"
datadir    = "/Users/zhangli/hasplay/addition/.cabal-sandbox/share/x86_64-osx-ghc-7.10.3/addition-0.1.0.0"
libexecdir = "/Users/zhangli/hasplay/addition/.cabal-sandbox/libexec"
sysconfdir = "/Users/zhangli/hasplay/addition/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "addition_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "addition_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "addition_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "addition_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "addition_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
