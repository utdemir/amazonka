{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EFS.Types.Sum where

import Network.AWS.Prelude

data LifeCycleState
  = Available
  | Creating
  | Deleted
  | Deleting
  | Updating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText LifeCycleState where
    parser = takeLowerText >>= \case
        "available" -> pure Available
        "creating" -> pure Creating
        "deleted" -> pure Deleted
        "deleting" -> pure Deleting
        "updating" -> pure Updating
        e -> fromTextError $ "Failure parsing LifeCycleState from value: '" <> e
           <> "'. Accepted values: available, creating, deleted, deleting, updating"

instance ToText LifeCycleState where
    toText = \case
        Available -> "available"
        Creating -> "creating"
        Deleted -> "deleted"
        Deleting -> "deleting"
        Updating -> "updating"

instance Hashable     LifeCycleState
instance NFData       LifeCycleState
instance ToByteString LifeCycleState
instance ToQuery      LifeCycleState
instance ToHeader     LifeCycleState

instance FromJSON LifeCycleState where
    parseJSON = parseJSONText "LifeCycleState"

data PerformanceMode
  = GeneralPurpose
  | MaxIO
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PerformanceMode where
    parser = takeLowerText >>= \case
        "generalpurpose" -> pure GeneralPurpose
        "maxio" -> pure MaxIO
        e -> fromTextError $ "Failure parsing PerformanceMode from value: '" <> e
           <> "'. Accepted values: generalpurpose, maxio"

instance ToText PerformanceMode where
    toText = \case
        GeneralPurpose -> "generalPurpose"
        MaxIO -> "maxIO"

instance Hashable     PerformanceMode
instance NFData       PerformanceMode
instance ToByteString PerformanceMode
instance ToQuery      PerformanceMode
instance ToHeader     PerformanceMode

instance ToJSON PerformanceMode where
    toJSON = toJSONText

instance FromJSON PerformanceMode where
    parseJSON = parseJSONText "PerformanceMode"

data ThroughputMode
  = Bursting
  | Provisioned
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ThroughputMode where
    parser = takeLowerText >>= \case
        "bursting" -> pure Bursting
        "provisioned" -> pure Provisioned
        e -> fromTextError $ "Failure parsing ThroughputMode from value: '" <> e
           <> "'. Accepted values: bursting, provisioned"

instance ToText ThroughputMode where
    toText = \case
        Bursting -> "bursting"
        Provisioned -> "provisioned"

instance Hashable     ThroughputMode
instance NFData       ThroughputMode
instance ToByteString ThroughputMode
instance ToQuery      ThroughputMode
instance ToHeader     ThroughputMode

instance ToJSON ThroughputMode where
    toJSON = toJSONText

instance FromJSON ThroughputMode where
    parseJSON = parseJSONText "ThroughputMode"

data TransitionToIARules =
  After30Days
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText TransitionToIARules where
    parser = takeLowerText >>= \case
        "after_30_days" -> pure After30Days
        e -> fromTextError $ "Failure parsing TransitionToIARules from value: '" <> e
           <> "'. Accepted values: after_30_days"

instance ToText TransitionToIARules where
    toText = \case
        After30Days -> "AFTER_30_DAYS"

instance Hashable     TransitionToIARules
instance NFData       TransitionToIARules
instance ToByteString TransitionToIARules
instance ToQuery      TransitionToIARules
instance ToHeader     TransitionToIARules

instance ToJSON TransitionToIARules where
    toJSON = toJSONText

instance FromJSON TransitionToIARules where
    parseJSON = parseJSONText "TransitionToIARules"
