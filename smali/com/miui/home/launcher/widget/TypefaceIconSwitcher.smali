.class public Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "TypefaceIconSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 47
    instance-of v0, p1, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    if-eqz v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TextSwitcher children must be instances of TypefaceIconView"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 83
    const-class p0, Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentPattern(I)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPattern(I)V

    return-void
.end method

.method public setCurrentPatternColor(I)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 93
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    return-void
.end method

.method public setPattern(I)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPattern(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    return-void
.end method

.method public setPatternColor(I)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    return-void
.end method
