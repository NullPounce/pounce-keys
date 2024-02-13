.class abstract Lcom/google/android/material/sidesheet/SheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/material/sidesheet/SheetCallback;",
        ">",
        "Landroidx/appcompat/app/AppCompatDialog;"
    }
.end annotation


# static fields
.field private static final COORDINATOR_LAYOUT_ID:I

.field private static final TOUCH_OUTSIDE_ID:I


# instance fields
.field private behavior:Lcom/google/android/material/sidesheet/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;"
        }
    .end annotation
.end field

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z

.field private container:Landroid/widget/FrameLayout;

.field dismissWithAnimation:Z

.field private sheet:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget v0, Lcom/google/android/material/R$id;->coordinator:I

    sput v0, Lcom/google/android/material/sidesheet/SheetDialog;->COORDINATOR_LAYOUT_ID:I

    .line 52
    sget v0, Lcom/google/android/material/R$id;->touch_outside:I

    sput v0, Lcom/google/android/material/sidesheet/SheetDialog;->TOUCH_OUTSIDE_ID:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;-><init>(Landroid/content/Context;III)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "themeAttr"    # I
    .param p4, "defaultThemeAttr"    # I

    .line 73
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/sidesheet/SheetDialog;->getThemeResId(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    .line 61
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->supportRequestWindowFeature(I)Z

    .line 77
    return-void
.end method

.method private ensureContainerAndBehavior()V
    .locals 3

    .line 183
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getLayoutResId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    .line 185
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getDialogId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->sheet:Landroid/widget/FrameLayout;

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    .line 187
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V

    .line 189
    :cond_0
    return-void
.end method

.method private getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 195
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getSheet()Landroid/widget/FrameLayout;
    .locals 1

    .line 203
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->sheet:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->sheet:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static getThemeResId(Landroid/content/Context;III)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I
    .param p2, "themeAttr"    # I
    .param p3, "defaultTheme"    # I

    .line 288
    if-nez p1, :cond_1

    .line 290
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 291
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 295
    :cond_0
    move p1, p3

    .line 298
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    return p1
.end method

.method private shouldWindowCloseOnTouchOutside()Z
    .locals 3

    .line 273
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v0, :cond_0

    .line 274
    nop

    .line 275
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101035b

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    iput-boolean v2, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutsideSet:Z

    .line 280
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    return v0
.end method

.method private wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 220
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    .line 221
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/google/android/material/sidesheet/SheetDialog;->COORDINATOR_LAYOUT_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 223
    .local v0, "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getSheet()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 228
    .local v1, "sheet":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 229
    if-nez p3, :cond_1

    .line 230
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :goto_0
    sget v2, Lcom/google/android/material/sidesheet/SheetDialog;->TOUCH_OUTSIDE_ID:I

    .line 236
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/sidesheet/SheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/material/sidesheet/SheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/sidesheet/SheetDialog;)V

    .line 237
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    nop

    .line 246
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getSheet()Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/sidesheet/SheetDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/sidesheet/SheetDialog$1;-><init>(Lcom/google/android/material/sidesheet/SheetDialog;)V

    .line 245
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 269
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    return-object v2
.end method


# virtual methods
.method abstract addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public cancel()V
    .locals 3

    .line 144
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/Sheet;

    move-result-object v0

    .line 146
    .local v0, "behavior":Lcom/google/android/material/sidesheet/Sheet;, "Lcom/google/android/material/sidesheet/Sheet<TC;>;"
    iget-boolean v1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->dismissWithAnimation:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/material/sidesheet/Sheet;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v0, v2}, Lcom/google/android/material/sidesheet/Sheet;->setState(I)V

    goto :goto_1

    .line 147
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    .line 151
    :goto_1
    return-void
.end method

.method getBehavior()Lcom/google/android/material/sidesheet/Sheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    return-object v0
.end method

.method abstract getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract getDialogId()I
.end method

.method abstract getLayoutResId()I
.end method

.method abstract getStateOnStart()I
.end method

.method public isDismissWithSheetAnimationEnabled()Z
    .locals 1

    .line 178
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->dismissWithAnimation:Z

    return v0
.end method

.method synthetic lambda$wrapInSheet$0$com-google-android-material-sidesheet-SheetDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 239
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    .line 242
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 98
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 99
    nop

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 108
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 111
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 113
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 125
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    .line 126
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/material/sidesheet/Sheet;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getStateOnStart()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/material/sidesheet/Sheet;->setState(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .line 117
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 118
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    if-eq v0, p1, :cond_0

    .line 119
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    .line 121
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .line 155
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    if-nez v1, :cond_0

    .line 157
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    .line 160
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutsideSet:Z

    .line 161
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 81
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 86
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 91
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public setDismissWithSheetAnimationEnabled(Z)V
    .locals 0
    .param p1, "dismissWithAnimation"    # Z

    .line 170
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog;, "Lcom/google/android/material/sidesheet/SheetDialog<TC;>;"
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->dismissWithAnimation:Z

    .line 171
    return-void
.end method
