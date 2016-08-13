module Paths_morse (
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

bindir     = "/home/zhangli/src/hasplay/morse/.stack-work/install/x86_64-linux/lts-6.6/7.10.3/bin"
libdir     = "/home/zhangli/src/hasplay/morse/.stack-work/install/x86_64-linux/lts-6.6/7.10.3/lib/x86_64-linux-ghc-7.10.3/morse-0.1.0.0-GHEFketzPYG0lkCMctxia5"
datadir    = "/home/zhangli/src/hasplay/morse/.stack-work/install/x86_64-linux/lts-6.6/7.10.3/share/x86_64-linux-ghc-7.10.3/morse-0.1.0.0"
libexecdir = "/home/zhangli/src/hasplay/morse/.stack-work/install/x86_64-linux/lts-6.6/7.10.3/libexec"
sysconfdir = "/home/zhangli/src/hasplay/morse/.stack-work/install/x86_64-linux/lts-6.6/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "morse_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "morse_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "morse_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "morse_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "morse_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
