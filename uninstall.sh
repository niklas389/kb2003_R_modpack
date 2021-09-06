#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed when Magisk removes the module
pm enable com.google.android.gms/com.google.android.gms.analytics.service.AnalyticsService
pm enable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
pm enable com.google.android.gms/com.google.android.gms.ads.AdRequestBrokerService
pm enable com.google.android.gms/com.google.android.gms.checkin.CheckinApiService
pm enable com.google.android.gms/com.google.android.gms.ads.identifier.service.AdvertisingIdService
