.class public final synthetic Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field public final synthetic f$1:Lcom/google/android/material/search/SearchBar;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    iput-object p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/search/SearchBar;

    iput-object p3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/material/appbar/AppBarLayout;

    iput-boolean p5, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/search/SearchBar;

    iget-object v2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v4, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/search/SearchBarAnimationHelper;->lambda$startExpandAnimation$0$com-google-android-material-search-SearchBarAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    return-void
.end method
