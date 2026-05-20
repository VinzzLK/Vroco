.class public Lmiuix/preference/PreferenceCategoryLayout;
.super Landroid/widget/FrameLayout;
.source "PreferenceCategoryLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .line 33
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    sget v3, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lmiuix/preference/R$attr;->preferenceTraditionalCategoryBackground:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 38
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v1

    if-le v1, v5, :cond_1

    if-ne v2, v5, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    if-nez v4, :cond_2

    .line 41
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
