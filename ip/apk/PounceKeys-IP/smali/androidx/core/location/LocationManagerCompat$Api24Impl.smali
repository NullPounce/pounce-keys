.class Landroidx/core/location/LocationManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    return-void
.end method

.method static registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .locals 1
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1299
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .locals 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "baseHandler"    # Landroid/os/Handler;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 1312
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 1314
    sget-object v2, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2

    .line 1315
    :try_start_0
    sget-object v3, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 1316
    invoke-virtual {v3, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 1318
    .local v3, "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    if-nez v3, :cond_1

    .line 1319
    new-instance v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    invoke-direct {v4, p3}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v3, v4

    goto :goto_1

    .line 1321
    :cond_1
    invoke-virtual {v3}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 1323
    :goto_1
    invoke-virtual {v3, p2}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 1325
    invoke-virtual {p0, v3, p1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1326
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p3, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    monitor-exit v2

    return v0

    .line 1329
    :cond_2
    monitor-exit v2

    return v1

    .line 1331
    .end local v3    # "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 0
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 1305
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V

    .line 1306
    return-void
.end method

.method static unregisterGnssStatusCallback(Landroid/location/LocationManager;Ljava/lang/Object;)V
    .locals 1
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Ljava/lang/Object;

    .line 1336
    instance-of v0, p1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    if-eqz v0, :cond_0

    .line 1337
    move-object v0, p1

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 1339
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/location/GnssStatus$Callback;

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 1340
    return-void
.end method
