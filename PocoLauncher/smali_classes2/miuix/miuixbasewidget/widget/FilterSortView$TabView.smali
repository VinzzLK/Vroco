.class public Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;,
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    }
.end annotation


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mArrowIcon:Landroid/graphics/drawable/Drawable;

.field private mDescending:Z

.field private mDescendingEnabled:Z

.field private mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

.field private mFiltered:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mIndicatorVisibility:I

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field private mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Sj4hBjmHHepqZ5SW71Z1cGwSsvM(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 535
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 539
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 516
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 541
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getTabLayoutResource()I

    move-result v1

    .line 542
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020014

    .line 543
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 544
    sget v2, Lmiuix/miuixbasewidget/R$id;->arrow:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 545
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 546
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    if-eqz p2, :cond_0

    .line 548
    sget v2, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    if-ne v1, v2, :cond_0

    .line 549
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView:[I

    sget v2, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortTabView_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 551
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 552
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_descending:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 553
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_indicatorVisibility:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    .line 554
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_arrowFilterSortTabView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 555
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_filterSortTabViewTextColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 556
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 558
    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    .line 560
    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 562
    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 564
    :cond_1
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 507
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 507
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    return p0
.end method

.method static synthetic access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 507
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 507
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    return p0
.end method

.method static synthetic access$1300(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;
    .locals 0

    .line 507
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    .locals 0

    .line 507
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    return-object p0
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .locals 2

    .line 758
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 761
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object p0
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 626
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 630
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v1, 0x1002

    if-ne p1, v1, :cond_1

    return v0

    .line 634
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 644
    :cond_2
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz p1, :cond_3

    .line 645
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverFilterExit()V

    .line 647
    :cond_3
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-interface {p1, v0, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverExit(FF)V

    goto :goto_0

    .line 636
    :cond_4
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz p1, :cond_5

    .line 637
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverFilterEnter()V

    .line 639
    :cond_5
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-interface {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverEnter()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private parseBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 696
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_filter_sort_tab_view_bg_normal:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private setDescending(Z)V
    .locals 0

    .line 706
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    if-eqz p1, :cond_0

    .line 708
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_0

    .line 710
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    :goto_0
    return-void
.end method

.method private setFiltered(Z)V
    .locals 5

    .line 666
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 670
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 671
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v4, :cond_0

    .line 672
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eq v3, p0, :cond_0

    .line 673
    iget-boolean v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz v4, :cond_0

    .line 674
    invoke-direct {v3, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 681
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 682
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 683
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 684
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setNeedAnim(Z)V

    .line 685
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    new-instance v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;

    invoke-direct {v1, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .locals 0

    .line 732
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDescendingEnabled()Z
    .locals 0

    .line 724
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return p0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 597
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getTabLayoutResource()I
    .locals 0

    .line 585
    sget p0, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    return p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 589
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected initView(Ljava/lang/CharSequence;Z)V
    .locals 2

    const/16 v0, 0x11

    .line 613
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 614
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 615
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->parseBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 620
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 622
    :cond_1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    .line 625
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setDescendingEnabled(Z)V
    .locals 0

    .line 728
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 780
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 781
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 0

    .line 657
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 737
    new-instance v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$3;

    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$3;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-void
.end method
