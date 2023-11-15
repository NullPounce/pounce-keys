.class public final synthetic Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticThreadLocal1;
.super Ljava/lang/ThreadLocal;
.source "D8$$SyntheticClass"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x17
    versionHash = "ee1ac45b097377ebd2526cf33b859f67c362ed0059aceef33d6234d44b4d8293"
.end annotation


# instance fields
.field public final synthetic initialValueSupplier:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticThreadLocal1;->initialValueSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticThreadLocal1;->initialValueSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
