.class public Lcom/sun/mail/util/TraceOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TraceOutputStream.java"


# instance fields
.field private quote:Z

.field private trace:Z

.field private traceOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "logger"    # Lcom/sun/mail/util/MailLogger;

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 33
    iput-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    .line 45
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 46
    new-instance v0, Lcom/sun/mail/util/LogOutputStream;

    invoke-direct {v0, p2}, Lcom/sun/mail/util/LogOutputStream;-><init>(Lcom/sun/mail/util/MailLogger;)V

    iput-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "traceOut"    # Ljava/io/OutputStream;

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 33
    iput-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    .line 58
    iput-object p2, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    .line 59
    return-void
.end method

.method private final writeByte(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    and-int/lit16 p1, p1, 0xff

    .line 124
    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 126
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 127
    and-int/lit8 p1, p1, 0x7f

    .line 129
    :cond_0
    const/16 v0, 0xd

    const/16 v1, 0x5c

    if-ne p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 133
    iget-object v2, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 134
    iget-object v1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 135
    iget-object v1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 136
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 138
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 139
    :cond_3
    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 141
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    add-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 145
    :goto_0
    return-void
.end method


# virtual methods
.method public setQuote(Z)V
    .locals 0
    .param p1, "quote"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    .line 76
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .param p1, "trace"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 68
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    if-eqz v0, :cond_1

    .line 89
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/sun/mail/util/TraceOutputStream;->writeByte(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 95
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    if-eqz v0, :cond_2

    .line 110
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 112
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/sun/mail/util/TraceOutputStream;->writeByte(I)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    return-void
.end method
