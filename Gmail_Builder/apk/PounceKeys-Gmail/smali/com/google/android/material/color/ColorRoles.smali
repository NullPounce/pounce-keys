.class public final Lcom/google/android/material/color/ColorRoles;
.super Ljava/lang/Object;
.source "ColorRoles.java"


# instance fields
.field private final accent:I

.field private final accentContainer:I

.field private final onAccent:I

.field private final onAccentContainer:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "accent"    # I
    .param p2, "onAccent"    # I
    .param p3, "accentContainer"    # I
    .param p4, "onAccentContainer"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/material/color/ColorRoles;->accent:I

    .line 39
    iput p2, p0, Lcom/google/android/material/color/ColorRoles;->onAccent:I

    .line 40
    iput p3, p0, Lcom/google/android/material/color/ColorRoles;->accentContainer:I

    .line 41
    iput p4, p0, Lcom/google/android/material/color/ColorRoles;->onAccentContainer:I

    .line 42
    return-void
.end method


# virtual methods
.method public getAccent()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->accent:I

    return v0
.end method

.method public getAccentContainer()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->accentContainer:I

    return v0
.end method

.method public getOnAccent()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->onAccent:I

    return v0
.end method

.method public getOnAccentContainer()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->onAccentContainer:I

    return v0
.end method
