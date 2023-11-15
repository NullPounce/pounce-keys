.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResChunkHeader"
.end annotation


# instance fields
.field private final chunkSize:I

.field private final headerSize:S

.field private final type:S


# direct methods
.method constructor <init>(SSI)V
    .locals 0
    .param p1, "type"    # S
    .param p2, "headerSize"    # S
    .param p3, "chunkSize"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-short p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    .line 181
    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    .line 182
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    .line 183
    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 187
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    return-void
.end method
