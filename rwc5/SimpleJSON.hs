module SimpleJSON 
  (
    JValue(..)
  , getString
  , getInt
  , getDouble
  , getBool
  , getObject
  , getArray
  , isNull
  ) where

data JValue = JString String
            | JNumber Double
            | JBool Bool
            | JNull
            | JObject [(String, JValue)]
            | JArray [JValue]
              deriving (Eq, Ord, Show)

getString :: JValue -> Maybe String
getString (JString a) = Just a
getString _ = Nothing

getInt :: JValue -> Maybe Int
getInt (JNumber a) = Just (truncate a)
getInt _ = Nothing

getDouble :: JValue -> Maybe Double
getDouble (JNumber a) = Just a
getDouble _ = Nothing

getBool :: JValue -> Maybe Bool
getBool (JBool a) = Just a
getBool _ = Nothing

getObject (JObject o ) = Just o
getObject _ = Nothing

getArray(JArray a) = Just a
getArray _ = Nothing

isNull v = v ==JNull

