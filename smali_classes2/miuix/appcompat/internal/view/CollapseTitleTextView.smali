.class public Lmiuix/appcompat/internal/view/CollapseTitleTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CollapseTitleTextView.java"


# instance fields
.field private mOriginalTextSize:F

.field private final mSmallTextSize:F

.field private final mSmallTextSizeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/CollapseTitleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mOriginalTextSize:F

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->CollapseTitleView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 32
    sget p3, Lmiuix/appcompat/R$styleable;->CollapseTitleView_smallTextSizeEnabled:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mSmallTextSizeEnabled:Z

    .line 33
    sget p3, Lmiuix/appcompat/R$styleable;->CollapseTitleView_smallTextSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_font_size_headline1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mSmallTextSize:F

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isTextEllipsis()Z
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mSmallTextSizeEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mOriginalTextSize:F

    iget v1, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mSmallTextSize:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 54
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->isTextEllipsis()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget v0, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mSmallTextSize:F

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 56
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mOriginalTextSize:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/CollapseTitleTextView;->mOriginalTextSize:F

    return-void
.end method
