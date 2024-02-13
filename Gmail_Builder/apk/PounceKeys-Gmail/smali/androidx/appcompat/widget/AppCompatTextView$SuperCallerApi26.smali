.class Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;
.super Ljava/lang/Object;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi26"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/AppCompatTextView;

    .line 823
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 826
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$001(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 831
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$101(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 836
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$201(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 841
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$301(Landroidx/appcompat/widget/AppCompatTextView;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 1

    .line 846
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$401(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 851
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$501(Landroidx/appcompat/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I

    .line 857
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->access$601(Landroidx/appcompat/widget/AppCompatTextView;IIII)V

    .line 859
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I

    .line 863
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->access$701(Landroidx/appcompat/widget/AppCompatTextView;[II)V

    .line 864
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 868
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$801(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 869
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 0
    .param p1, "firstBaselineToTopHeight"    # I

    .line 877
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 0
    .param p1, "lastBaselineToBottomHeight"    # I

    .line 880
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 873
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$901(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V

    .line 874
    return-void
.end method
