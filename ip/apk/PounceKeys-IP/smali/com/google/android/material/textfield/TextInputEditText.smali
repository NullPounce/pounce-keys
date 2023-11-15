.class public Lcom/google/android/material/textfield/TextInputEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TextInputEditText.java"


# instance fields
.field private final parentRect:Landroid/graphics/Rect;

.field private textInputLayoutFocusedRectEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    sget v0, Lcom/google/android/material/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    .line 69
    sget-object v4, Lcom/google/android/material/R$styleable;->TextInputEditText:[I

    sget v6, Lcom/google/android/material/R$style;->Widget_Design_TextInputEditText:I

    new-array v7, v0, [I

    .line 70
    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    .local v1, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->TextInputEditText_textInputLayoutFocusedRectEnabled:I

    .line 78
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setTextInputLayoutFocusedRectEnabled(Z)V

    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method

.method private getAccessibilityNodeInfoText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 8
    .param p1, "layout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 207
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 208
    .local v0, "inputText":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 209
    .local v1, "hintText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 210
    .local v2, "showingText":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 212
    .local v3, "hasHint":Z
    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 214
    .local v5, "hint":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 216
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 217
    return-object v5

    .line 219
    :cond_3
    return-object v4
.end method

.method private getHintFromLayout()Ljava/lang/CharSequence;
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 138
    .local v0, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 126
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 127
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_0

    .line 128
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v1

    .line 130
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 1
    .param p1, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 156
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 161
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 162
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 163
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 167
    :cond_0
    return-void
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "globalOffset"    # Landroid/graphics/Point;

    .line 171
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 172
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    goto :goto_0

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    .line 172
    :goto_0
    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 105
    .local v0, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 108
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public isTextInputLayoutFocusedRectEnabled()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 91
    .local v0, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 94
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isMeizuDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 115
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHintFromLayout()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 120
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 195
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 196
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 200
    .local v0, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    nop

    .line 203
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .line 179
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 180
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 182
    .local v1, "bottomOffset":I
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 189
    .end local v1    # "bottomOffset":I
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public setTextInputLayoutFocusedRectEnabled(Z)V
    .locals 0
    .param p1, "textInputLayoutFocusedRectEnabled"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    .line 146
    return-void
.end method
