#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

# Late props which must be set after boot_completed
{
    until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
        sleep 1
    done

    # Disabling services
    pm disable com.google.android.gms/com.google.android.gms.analytics.service.AnalyticsService
    pm disable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
    pm disable com.google.android.gms/com.google.android.gms.ads.AdRequestBrokerService
    pm disable com.google.android.gms/com.google.android.gms.checkin.CheckinApiService
    pm disable com.google.android.gms/com.google.android.gms.ads.identifier.service.AdvertisingIdService
    pm disable com.google.android.gms/com.google.android.gms.analytics.AnalyticsService
    pm disable com.google.android.gms/com.google.android.gms.measurement.AppMeasurementJobService
    pm disable com.google.android.gms/com.google.android.gms.measurement.AppMeasurementInstallReferrerReceiver
    pm disable com.google.android.gms/com.google.android.gms.measurement.PackageMeasurementReceiver
    pm disable com.google.android.gms/com.google.android.gms.measurement.PackageMeasurementService
    pm disable com.google.android.gms/com.google.android.gms.measurement.service.MeasurementBrokerService
    pm disable com.google.android.gms/com.google.android.location.internal.AnalyticsSamplerReceiver
}&
