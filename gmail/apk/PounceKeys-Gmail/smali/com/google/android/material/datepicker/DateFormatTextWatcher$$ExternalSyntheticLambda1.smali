.class public final synthetic Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/DateFormatTextWatcher;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    iput-wide p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    iget-wide v1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->lambda$createRangeErrorCallback$1$com-google-android-material-datepicker-DateFormatTextWatcher(J)V

    return-void
.end method
