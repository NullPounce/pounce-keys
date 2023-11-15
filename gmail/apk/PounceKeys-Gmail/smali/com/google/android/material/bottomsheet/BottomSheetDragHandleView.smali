.class public Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BottomSheetDragHandleView.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private accessibilityServiceEnabled:Z

.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation
.end field

.field private final bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private final clickFeedback:Ljava/lang/String;

.field private final clickToCollapseActionLabel:Ljava/lang/String;

.field private clickToExpand:Z

.field private final clickToExpandActionLabel:Ljava/lang/String;

.field private interactable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_BottomSheet_DragHandle:I

    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 86
    sget v0, Lcom/google/android/material/R$attr;->bottomSheetDragHandleStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 91
    sget v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->bottomsheet_action_expand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpandActionLabel:Ljava/lang/String;

    .line 64
    nop

    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->bottomsheet_action_collapse:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToCollapseActionLabel:Ljava/lang/String;

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->bottomsheet_drag_handle_clicked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickFeedback:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    nop

    .line 97
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 99
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->updateInteractableState()V

    .line 101
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->onBottomSheetStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->expandOrCollapseBottomSheetIfPossible()Z

    move-result v0

    return v0
.end method

.method private announceAccessibilityEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "announcement"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    nop

    .line 219
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 220
    .local v0, "announce":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    return-void
.end method

.method private expandOrCollapseBottomSheetIfPossible()Z
    .locals 6

    .line 187
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->interactable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickFeedback:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->announceAccessibilityEvent(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 192
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isFitToContents()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v0, v1

    .line 194
    .local v0, "canHalfExpand":Z
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    .line 196
    .local v1, "currentState":I
    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 198
    if-eqz v0, :cond_2

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    move v3, v4

    :goto_1
    nop

    .local v3, "nextState":I
    goto :goto_4

    .line 201
    .end local v3    # "nextState":I
    :cond_3
    if-ne v1, v4, :cond_5

    .line 203
    if-eqz v0, :cond_4

    .line 204
    goto :goto_2

    .line 205
    :cond_4
    move v3, v5

    :goto_2
    nop

    .restart local v3    # "nextState":I
    goto :goto_4

    .line 208
    .end local v3    # "nextState":I
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpand:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    move v3, v4

    .line 210
    .restart local v3    # "nextState":I
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v4, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 211
    return v2
.end method

.method private findParentBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation

    .line 230
    move-object v0, p0

    .line 231
    .local v0, "parent":Landroid/view/View;
    :goto_0
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->getParentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 233
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 234
    move-object v2, v1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 235
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 236
    .local v2, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v3

    .line 240
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    :cond_0
    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getParentView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 247
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private onBottomSheetStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 154
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpand:Z

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpand:Z

    .line 159
    :cond_1
    :goto_0
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 162
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpand:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpandActionLabel:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToCollapseActionLabel:Ljava/lang/String;

    :goto_1
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V

    .line 159
    invoke-static {p0, v0, v1, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 164
    return-void
.end method

.method private setBottomSheetBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 140
    .local p1, "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setAccessibilityDelegateView(Landroid/view/View;)V

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setAccessibilityDelegateView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->onBottomSheetStateChanged(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->updateInteractableState()V

    .line 151
    return-void
.end method

.method private updateInteractableState()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityServiceEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->interactable:Z

    .line 168
    nop

    .line 170
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_1

    .line 171
    goto :goto_1

    .line 172
    :cond_1
    const/4 v1, 0x2

    .line 168
    :goto_1
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 173
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->interactable:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->setClickable(Z)V

    .line 174
    return-void
.end method


# virtual methods
.method synthetic lambda$onBottomSheetStateChanged$0$com-google-android-material-bottomsheet-BottomSheetDragHandleView(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "args"    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 163
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->expandOrCollapseBottomSheetIfPossible()Z

    move-result v0

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityServiceEnabled:Z

    .line 136
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->updateInteractableState()V

    .line 137
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->findParentBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->setBottomSheetBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 120
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->onAccessibilityStateChanged(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->setBottomSheetBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 130
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 131
    return-void
.end method
