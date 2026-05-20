.class public Lmiuix/internal/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/util/ViewUtils$RelativePadding;,
        Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;
    }
.end annotation


# direct methods
.method public static doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 5

    .line 327
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 329
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 331
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 335
    new-instance v1, Lmiuix/internal/util/ViewUtils$2;

    invoke-direct {v1, p1, v0}, Lmiuix/internal/util/ViewUtils$2;-><init>(Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 344
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    return-void
.end method

.method public static getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v3

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 188
    invoke-virtual {p1, v2, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static getMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    .line 177
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 179
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    .line 180
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 154
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isNightMode(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    return p0
.end method

.method public static layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .locals 2

    .line 145
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    if-eqz v0, :cond_0

    sub-int v1, p0, p4

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eqz v0, :cond_1

    sub-int p4, p0, p2

    .line 149
    :cond_1
    invoke-virtual {p1, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .locals 1

    .line 349
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 354
    :cond_0
    new-instance v0, Lmiuix/internal/util/ViewUtils$3;

    invoke-direct {v0}, Lmiuix/internal/util/ViewUtils$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method public static resetPaddingBottom(Landroid/view/View;I)V
    .locals 3

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
