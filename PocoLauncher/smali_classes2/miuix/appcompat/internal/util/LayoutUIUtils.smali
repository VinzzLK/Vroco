.class public Lmiuix/appcompat/internal/util/LayoutUIUtils;
.super Ljava/lang/Object;
.source "LayoutUIUtils.java"


# direct methods
.method public static resetSearchModeStubInputTextSize(Landroid/content/res/Resources;Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x1020009

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    return-void

    .line 49
    :cond_1
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_edit_text_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 50
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, p0

    int-to-float p0, p2

    cmpl-float p2, v1, p0

    const/4 v1, 0x1

    if-lez p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    cmpl-float p2, v0, p0

    if-lez p2, :cond_3

    .line 56
    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    :goto_1
    return-void
.end method
