.class public Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.super Ljava/lang/Object;
.source "CollapseTitle.java"


# instance fields
.field private mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mCollapseTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapseTitlePaintTextSize:F

.field private mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultSubtitleSize:F

.field private mIsTitleDirty:Z

.field private mLargeFontAdaptEnable:Z

.field private mLargeFontTitleMaxLine:I

.field private mSubtitleSizeable:Z

.field private mSubtitleStyle:I

.field private mTextColorTransitEnable:Z

.field private mTitleLength:F

.field private mTitleStyle:I

.field private mVisible:Z

.field subtitleTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public static synthetic $r8$lambda$EGdFs28b4GQPurlZx0PwOD497oI(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$eYiUmKgCjqqbSrJqCY2q9B7Xypc(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$setOnClickListener$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    const/4 v2, 0x0

    .line 50
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 51
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    .line 52
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 53
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 55
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 56
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    .line 134
    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$1;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->subtitleTouchListener:Landroid/view/View$OnTouchListener;

    .line 60
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 61
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 62
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    return-void
.end method

.method private getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 111
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private synthetic lambda$init$0()V
    .locals 2

    .line 96
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    const v1, 0x101039c

    .line 97
    invoke-static {p0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$1()V
    .locals 4

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 119
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 121
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private resetTitleMaxLine(Z)V
    .locals 2

    .line 188
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 193
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 194
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 195
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 197
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 198
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canTitleBeShown(Ljava/lang/String;)Z
    .locals 4

    .line 271
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 272
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    .line 274
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    .line 278
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 281
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 283
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 285
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_3

    return v3

    .line 288
    :cond_3
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    return v3
.end method

.method public getHitRect()Landroid/graphics/Rect;
    .locals 1

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 253
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    .line 248
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSubtitleAdjustSize()F
    .locals 7

    .line 292
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 293
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 295
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 296
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_0

    return v0

    .line 300
    :cond_0
    new-instance v3, Landroid/text/TextPaint;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 301
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 302
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 303
    iget v4, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, p0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    .line 305
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    :goto_0
    if-le p0, v2, :cond_1

    cmpl-float p0, v0, v4

    if-ltz p0, :cond_1

    sub-float/2addr v0, v1

    .line 308
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 309
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 310
    iget v5, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, p0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p0, v5

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTitleParent()Landroid/view/ViewGroup;
    .locals 0

    .line 232
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTitleVisibility()I
    .locals 0

    .line 228
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getVisibility()I
    .locals 0

    .line 244
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 7

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 73
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_subtitle_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 75
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 77
    new-instance v1, Lmiuix/appcompat/internal/view/CollapseTitleColorTransitionTextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->collapseTitleTheme:I

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Lmiuix/appcompat/internal/view/CollapseTitleColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 79
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 80
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 81
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    const/4 v6, 0x1

    invoke-static {v1, v4, v6}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    .line 82
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v3

    .line 83
    :goto_1
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->collapseTitleLargeFontMaxLine:I

    invoke-static {v1, v4, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    .line 87
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    :cond_2
    sget v1, Lmiuix/appcompat/R$attr;->collapseSubtitleTheme:I

    .line 91
    new-instance v2, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v5, v1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 93
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 100
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 103
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 107
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public setAllTitlesClickable(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 149
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 203
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 123
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    move p1, v0

    .line 177
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 178
    :cond_1
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->resetTitleMaxLine(Z)V

    return-void
.end method

.method public setSubTitleClickable(Z)V
    .locals 0

    .line 161
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setSubTitleDrawable(Lmiuix/appcompat/app/TextViewDrawableConfig;)V
    .locals 0

    const/4 p0, 0x0

    .line 182
    throw p0
.end method

.method public setSubTitleOnClickListener(Landroid/view/View$OnClickListener;Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 130
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->subtitleTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setSubTitleTextSize(F)V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .locals 0

    .line 214
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTextColorTransitEnable(ZI)V
    .locals 2

    .line 321
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 323
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v0, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 325
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 327
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 170
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    :cond_0
    return-void
.end method

.method public setTitleClickable(Z)V
    .locals 0

    .line 155
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 0

    .line 224
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 237
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 208
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 209
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateTitleCenter(Z)V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 259
    instance-of v1, v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const v3, 0x800003

    if-eqz v1, :cond_1

    .line 260
    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 264
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 266
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int/lit8 p1, v2, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method
