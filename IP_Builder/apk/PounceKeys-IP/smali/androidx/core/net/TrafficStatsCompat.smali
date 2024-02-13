.class public final Landroidx/core/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/net/TrafficStatsCompat$Api24Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 45
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 0
    .param p0, "operationCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {p0}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 71
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {p0, p1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 85
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 103
    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 140
    nop

    .line 141
    invoke-static {p0}, Landroidx/core/net/TrafficStatsCompat$Api24Impl;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 151
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 118
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 157
    nop

    .line 158
    invoke-static {p0}, Landroidx/core/net/TrafficStatsCompat$Api24Impl;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 168
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 128
    return-void
.end method
