.class public Lcom/sun/activation/registries/MimeTypeEntry;
.super Ljava/lang/Object;
.source "MimeTypeEntry.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mime_type"    # Ljava/lang/String;
    .param p2, "file_ext"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMETypeEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
