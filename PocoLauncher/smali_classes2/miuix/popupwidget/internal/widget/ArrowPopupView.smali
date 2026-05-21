.class public Lmiuix/popupwidget/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field private mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomRight:Landroid/graphics/drawable/Drawable;

.field private mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowMode:I

.field private mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mArrowSpaceLeft:I

.field private mArrowSpaceTop:I

.field private mArrowTop:Landroid/graphics/drawable/Drawable;

.field private mArrowTopLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowTopRight:Landroid/graphics/drawable/Drawable;

.field private mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

.field private mAutoDismiss:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentFrameWrapper:Landroid/widget/LinearLayout;

.field private mElevation:I

.field private mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsDismissing:Z

.field private mMinBorder:I

.field private mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mRtlMode:I

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShowingAnimation:Z

.field private mSpaceLeft:I

.field private mSpaceTop:I

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTranslationValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 235
    sget v0, Lmiuix/popupwidget/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/4 v1, 0x2

    .line 159
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 184
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 203
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    .line 221
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    .line 228
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 240
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 242
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 244
    sget-object v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView:[I

    sget v1, Lmiuix/popupwidget/R$style;->Widget_ArrowPopupView_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 248
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 249
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 250
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 251
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 252
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 253
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    .line 254
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 255
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 256
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 257
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 258
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 259
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 260
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_elevation:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 262
    sget v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_android_elevation:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    .line 264
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_min_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 58
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return p0
.end method

.method static synthetic access$1000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;[F)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .locals 0

    .line 58
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p0
.end method

.method static synthetic access$1202(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)I
    .locals 0

    .line 58
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p1
.end method

.method static synthetic access$1300(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateShowing()V

    return-void
.end method

.method static synthetic access$302(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowLayout()V

    return-void
.end method

.method static synthetic access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .locals 0

    .line 58
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    return p0
.end method

.method static synthetic access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .locals 0

    .line 58
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    return p0
.end method

.method static synthetic access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .locals 0

    .line 466
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 469
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private adjustArrowMode()V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1135
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 1138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 1139
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 1140
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 1141
    iget-object v5, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1142
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1144
    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v8, 0x1

    aget v9, v0, v8

    sub-int/2addr v9, v4

    const/16 v10, 0x10

    .line 1145
    invoke-virtual {v7, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    aget v8, v0, v8

    sub-int/2addr v2, v8

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    const/16 v4, 0x8

    .line 1146
    invoke-virtual {v7, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x0

    aget v4, v0, v2

    sub-int/2addr v4, v3

    const/16 v5, 0x40

    .line 1147
    invoke-virtual {v7, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    aget v0, v0, v2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    sub-int/2addr v1, v3

    const/16 v0, 0x20

    .line 1148
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, -0x80000000

    .line 1154
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1155
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1156
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    if-lt v3, v4, :cond_0

    move v10, v1

    goto :goto_1

    .line 1159
    :cond_0
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-le v3, v0, :cond_1

    .line 1161
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v10, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    :cond_2
    :goto_1
    invoke-virtual {p0, v10}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method private animateShowing()V
    .locals 13

    .line 1061
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1062
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 1065
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1068
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1069
    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$8;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$8;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 1076
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    .line 1077
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 1078
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v5

    .line 1079
    :goto_1
    iget v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v7, 0x10

    if-eq v6, v7, :cond_8

    const/16 v7, 0x20

    if-eq v6, v7, :cond_6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    neg-float v0, v1

    move v1, v0

    .line 1095
    :cond_5
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    neg-float v1, v1

    .line 1088
    :cond_7
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_2

    :cond_8
    neg-float v1, v1

    .line 1099
    :goto_2
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    const/4 v6, 0x3

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    aput v1, v7, v5

    aput v8, v7, v4

    invoke-static {v2, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1100
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x4b0

    .line 1101
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1102
    iget-boolean v7, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v7, :cond_9

    .line 1103
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_3

    .line 1105
    :cond_9
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1107
    :goto_3
    new-instance v7, Lmiuix/popupwidget/internal/widget/ArrowPopupView$9;

    invoke-direct {v7, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$9;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1117
    iget-object v7, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    new-array v6, v6, [F

    aput v8, v6, v3

    aput v1, v6, v5

    aput v8, v6, v4

    invoke-static {v7, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1118
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1119
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1120
    iget-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    if-eqz v1, :cond_a

    .line 1121
    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_4

    .line 1123
    :cond_a
    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1125
    :goto_4
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v3

    aput-object v0, v4, v5

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1126
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    return-void
.end method

.method private arrowHorizontalLayout(I)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 713
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    .line 716
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 717
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 718
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    .line 721
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 722
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 723
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 724
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth()I

    move-result v13

    .line 725
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight()I

    move-result v14

    .line 726
    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v15, v10, v15

    sub-int/2addr v8, v14

    .line 728
    div-int/2addr v8, v1

    add-int/2addr v6, v8

    aget v8, v2, v5

    sub-int/2addr v6, v8

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 729
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v8, v3

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 731
    div-int/lit8 v3, v12, 0x2

    sub-int v6, v12, v3

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    add-int v8, v8, p1

    iput v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 736
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isRightMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 737
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v8, v5, :cond_1

    if-ne v8, v1, :cond_0

    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v7, v4, v11

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 743
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v13

    const/4 v8, 0x0

    aget v16, v2, v8

    sub-int v7, v7, v16

    add-int/2addr v1, v7

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v13

    aget v1, v2, v8

    goto :goto_4

    .line 738
    :cond_1
    :goto_0
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v7

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 739
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    add-int/2addr v4, v13

    const/4 v7, 0x0

    aget v2, v2, v7

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 740
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    :goto_1
    sub-int/2addr v2, v13

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    :goto_2
    move v8, v1

    goto :goto_5

    .line 746
    :cond_2
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 747
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v8, v5, :cond_4

    if-ne v8, v1, :cond_3

    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 752
    :cond_3
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v7

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 753
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    add-int/2addr v4, v13

    const/4 v7, 0x0

    aget v2, v2, v7

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 754
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    .line 748
    :cond_4
    :goto_3
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v7, v4, v11

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 749
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v13

    const/4 v8, 0x0

    aget v16, v2, v8

    sub-int v7, v7, v16

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v13

    aget v1, v2, v8

    :goto_4
    sub-int/2addr v4, v1

    add-int v4, v4, p1

    add-int/lit8 v1, v4, -0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 758
    :goto_5
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-lt v1, v3, :cond_6

    if-lt v15, v6, :cond_6

    sub-int/2addr v1, v3

    .line 760
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_6

    :cond_6
    if-ge v15, v6, :cond_7

    sub-int v1, v10, v12

    .line 763
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_6

    :cond_7
    if-ge v1, v3, :cond_8

    .line 766
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 768
    :cond_8
    :goto_6
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    if-gez v1, :cond_9

    const/4 v2, 0x0

    .line 771
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    goto :goto_7

    :cond_9
    add-int v2, v1, v14

    if-le v2, v10, :cond_a

    add-int v2, v1, v14

    sub-int/2addr v2, v10

    sub-int/2addr v1, v2

    .line 773
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 775
    :cond_a
    :goto_7
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    const/4 v3, 0x0

    .line 776
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 777
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v11

    .line 778
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v5, v12

    .line 779
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 775
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 781
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget v0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    add-int/2addr v13, v8

    add-int/2addr v14, v0

    invoke-virtual {v1, v8, v0, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private arrowLayout()V
    .locals 5

    .line 549
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 550
    :cond_1
    :goto_0
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    if-eqz v1, :cond_2

    neg-int v0, v0

    .line 551
    :cond_2
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isVerticalMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 552
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowVerticalLayout(I)V

    goto :goto_1

    .line 554
    :cond_3
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowHorizontalLayout(I)V

    .line 558
    :goto_1
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 560
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    .line 562
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 563
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 564
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 565
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 566
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    :cond_5
    :goto_2
    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p0, :cond_6

    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz p0, :cond_7

    :cond_6
    const-string p0, "ArrowPopupView"

    const-string v0, "Invalid LayoutPrams of content view, please check the anchor view"

    .line 569
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private arrowVerticalLayout(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 575
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 576
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    .line 579
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 580
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 581
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 582
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth()I

    move-result v7

    .line 583
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight()I

    move-result v8

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 586
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    aget v12, v10, v11

    const/4 v13, 0x1

    aget v14, v10, v13

    .line 589
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    sub-int v15, v1, v7

    .line 590
    div-int/2addr v15, v9

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v15

    iget v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v15, v11

    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 594
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 595
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    aget v11, v10, v13

    sub-int v11, v14, v11

    sub-int/2addr v11, v6

    iget-object v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 596
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v15, v8

    add-int/2addr v11, v15

    add-int/2addr v2, v11

    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    aget v2, v10, v13

    sub-int/2addr v14, v2

    sub-int/2addr v14, v8

    .line 597
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v14, v2

    add-int/lit8 v2, v14, -0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 599
    iget v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v14, v2

    aget v2, v10, v13

    sub-int/2addr v14, v2

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 600
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v14, v2

    add-int/2addr v14, v8

    add-int/2addr v11, v14

    iput v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 601
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/2addr v11, v2

    add-int/lit8 v2, v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 604
    :goto_0
    div-int/lit8 v11, v5, 0x2

    sub-int v14, v5, v11

    .line 607
    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v15, v13, :cond_3

    if-ne v15, v9, :cond_2

    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v15, v13

    :goto_2
    const/16 v9, 0x9

    if-nez v15, :cond_4

    .line 608
    iget v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eq v13, v9, :cond_7

    :cond_4
    if-nez v15, :cond_5

    iget v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v9, 0x12

    if-eq v13, v9, :cond_7

    :cond_5
    if-eqz v15, :cond_6

    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v13, 0xa

    if-eq v9, v13, :cond_7

    :cond_6
    if-eqz v15, :cond_8

    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v13, 0x11

    if-ne v9, v13, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    if-nez v15, :cond_9

    .line 610
    iget v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    move/from16 v17, v2

    const/16 v2, 0xa

    if-eq v13, v2, :cond_c

    goto :goto_4

    :cond_9
    move/from16 v17, v2

    :goto_4
    if-nez v15, :cond_a

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v13, 0x11

    if-eq v2, v13, :cond_c

    :cond_a
    if-eqz v15, :cond_b

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v13, 0x9

    if-eq v2, v13, :cond_c

    :cond_b
    if-eqz v15, :cond_d

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v13, 0x12

    if-ne v2, v13, :cond_d

    :cond_c
    const/4 v13, 0x1

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_e

    add-int/2addr v12, v1

    sub-int/2addr v12, v5

    const/4 v2, 0x0

    aget v1, v10, v2

    sub-int/2addr v12, v1

    .line 614
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :goto_6
    move v1, v2

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    if-eqz v9, :cond_10

    aget v1, v10, v2

    sub-int/2addr v12, v1

    .line 616
    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int v1, v12, v5

    if-le v1, v3, :cond_f

    sub-int v1, v3, v1

    add-int/2addr v12, v1

    .line 620
    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 622
    :cond_f
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_6

    :cond_10
    const/4 v9, 0x2

    .line 624
    div-int/2addr v1, v9

    add-int/2addr v12, v1

    aget v1, v10, v2

    sub-int/2addr v12, v1

    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v1, v3, v12

    if-lt v12, v11, :cond_11

    if-lt v1, v14, :cond_11

    sub-int/2addr v12, v11

    .line 628
    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_7

    :cond_11
    if-ge v1, v14, :cond_12

    sub-int v1, v3, v5

    .line 631
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    if-ge v12, v11, :cond_13

    .line 634
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 638
    :cond_13
    :goto_8
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int v2, v2, p1

    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 639
    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int v9, v9, p1

    iput v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    if-gez v9, :cond_14

    .line 642
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    goto :goto_9

    :cond_14
    add-int v10, v9, v7

    if-le v10, v3, :cond_15

    add-int v10, v9, v7

    sub-int/2addr v10, v3

    sub-int/2addr v9, v10

    .line 644
    iput v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 646
    :cond_15
    :goto_9
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 647
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 648
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v11, v5

    .line 649
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 650
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 646
    invoke-virtual {v9, v2, v10, v3, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    move/from16 v2, v17

    .line 652
    invoke-direct {v0, v7, v8, v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->executeLayoutArrow(III)V

    return-void
.end method

.method private executeLayoutArrow(III)V
    .locals 6

    .line 659
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 661
    :goto_1
    iget v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v4, 0xa

    const/16 v5, 0x9

    if-eq v3, v5, :cond_8

    if-eq v3, v4, :cond_8

    const/16 v4, 0x11

    const/16 v5, 0x12

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    .line 703
    iget p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    goto/16 :goto_4

    :cond_2
    if-nez v0, :cond_3

    if-eq v3, v5, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    if-ne v3, v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    .line 688
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    add-int/2addr p3, v0

    .line 689
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 690
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 692
    :cond_6
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p3, p1

    .line 693
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 694
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    :goto_2
    sub-int/2addr v1, p2

    sub-int/2addr v0, v1

    move p2, p3

    .line 696
    iget p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-ne p3, v5, :cond_7

    .line 697
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int v1, p2, p1

    .line 698
    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 697
    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_7
    add-int/lit8 p3, v0, -0x5

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    if-eq v3, v5, :cond_a

    :cond_9
    if-eqz v0, :cond_b

    if-ne v3, v4, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    if-eqz v1, :cond_c

    .line 670
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_3

    .line 673
    :cond_c
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    .line 676
    :goto_3
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr p3, v1

    sub-int/2addr p3, p2

    .line 677
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int v1, v0, p1

    .line 678
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 677
    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    move p2, v0

    .line 707
    :goto_4
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int/2addr p1, p2

    .line 708
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p3

    .line 707
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private getAnimationPivot([F)V
    .locals 9

    .line 927
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 928
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    .line 929
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 930
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 932
    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v6, :cond_1

    if-ne v4, v7, :cond_0

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 933
    :goto_1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v8, 0x20

    if-eq p0, v8, :cond_8

    const/16 v8, 0x40

    if-eq p0, v8, :cond_6

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    add-int/2addr v3, v2

    .line 967
    div-int/2addr v3, v7

    int-to-float p0, v3

    add-int/2addr v1, v0

    .line 968
    div-int/2addr v1, v7

    goto :goto_4

    :pswitch_0
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    int-to-float p0, v2

    goto :goto_4

    :pswitch_1
    if-eqz v4, :cond_3

    goto :goto_2

    :pswitch_2
    add-int/2addr v3, v2

    .line 955
    div-int/2addr v3, v7

    :cond_3
    :goto_3
    int-to-float p0, v3

    :goto_4
    int-to-float v0, v1

    goto :goto_9

    :pswitch_3
    if-eqz v4, :cond_5

    :cond_4
    int-to-float p0, v2

    goto :goto_6

    :pswitch_4
    if-eqz v4, :cond_4

    goto :goto_5

    :pswitch_5
    add-int/2addr v3, v2

    .line 943
    div-int/2addr v3, v7

    :cond_5
    :goto_5
    int-to-float p0, v3

    :goto_6
    int-to-float v0, v0

    goto :goto_9

    :cond_6
    if-eqz v4, :cond_7

    int-to-float p0, v2

    goto :goto_7

    :cond_7
    int-to-float p0, v3

    :goto_7
    add-int/2addr v1, v0

    .line 940
    div-int/2addr v1, v7

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_9

    int-to-float p0, v3

    goto :goto_8

    :cond_9
    int-to-float p0, v2

    :goto_8
    add-int/2addr v1, v0

    .line 936
    div-int/2addr v1, v7

    goto :goto_4

    .line 972
    :goto_9
    aput p0, p1, v5

    .line 973
    aput v0, p1, v6

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getArrowHeight()I
    .locals 2

    .line 798
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 808
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 810
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 805
    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 801
    :cond_1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method private getArrowWidth()I
    .locals 1

    .line 788
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method private isBottomMode()Z
    .locals 1

    const/16 v0, 0x10

    .line 542
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result p0

    return p0
.end method

.method private isCertainMode(I)Z
    .locals 0

    .line 526
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLeftMode()Z
    .locals 1

    const/16 v0, 0x20

    .line 530
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result p0

    return p0
.end method

.method private isRightMode()Z
    .locals 1

    const/16 v0, 0x40

    .line 534
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result p0

    return p0
.end method

.method private isTopMode()Z
    .locals 1

    const/16 v0, 0x8

    .line 538
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result p0

    return p0
.end method

.method private isVerticalMode()Z
    .locals 1

    .line 522
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateArrowDrawable(I)V
    .locals 3

    .line 1177
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x40

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_8

    .line 1204
    :pswitch_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1208
    :pswitch_1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1184
    :pswitch_2
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1200
    :pswitch_3
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1196
    :pswitch_4
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1180
    :pswitch_5
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1192
    :cond_7
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_8

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_8
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1188
    :cond_9
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_a

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_a
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addShadow()V
    .locals 2

    .line 375
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-direct {p0, v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    .line 446
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-direct {p0, v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public animateToDismiss()V
    .locals 12

    .line 1022
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1030
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    .line 1031
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 1034
    :cond_2
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1037
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    .line 1039
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    aget v10, v0, v1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1044
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1046
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x96

    .line 1047
    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1048
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1053
    :goto_0
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1054
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1056
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1057
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animateToShow()V
    .locals 2

    .line 977
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 978
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public enableShowingAnimation(Z)V
    .locals 0

    .line 1258
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return-void
.end method

.method public getArrowImageHeightAndWidth(I)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 306
    :pswitch_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 307
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto/16 :goto_0

    .line 310
    :pswitch_1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 311
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 303
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 299
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    .line 294
    :pswitch_4
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 295
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    .line 290
    :pswitch_5
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 291
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 319
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    .line 314
    :cond_1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    aput p1, v0, v3

    .line 315
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    aput p0, v0, v2

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getArrowMode()I
    .locals 0

    .line 1168
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    return p0
.end method

.method public getContentFrameWrapperBottomPadding()I
    .locals 0

    .line 359
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getContentFrameWrapperTopPadding()I
    .locals 0

    .line 355
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 486
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNegativeButton()Landroidx/appcompat/widget/AppCompatButton;
    .locals 0

    .line 518
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object p0
.end method

.method public getPopupElevation()I
    .locals 0

    .line 270
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    return p0
.end method

.method public getPositiveButton()Landroidx/appcompat/widget/AppCompatButton;
    .locals 0

    .line 514
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object p0
.end method

.method public getRollingPercent()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getTitleHeight()I
    .locals 2

    .line 367
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 368
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTitleEmpty()Z
    .locals 0

    .line 363
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 901
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 902
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 904
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;

    invoke-direct {v0, p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1236
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1237
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1238
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 835
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 843
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 844
    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 846
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v3, 0x40

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    move v2, v7

    move v10, v8

    move v11, v10

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42b40000    # 90.0f

    .line 867
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 868
    iget v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v10, v9, v10

    .line 869
    iget-object v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v11

    sub-int/2addr v11, v9

    goto :goto_1

    :cond_2
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 861
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 862
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v10

    sub-int/2addr v10, v9

    .line 863
    iget v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_0

    :cond_3
    const/high16 v2, 0x43340000    # 180.0f

    .line 855
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 856
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getRight()I

    move-result v10

    sub-int/2addr v10, v9

    .line 857
    iget v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :goto_0
    sub-int v11, v9, v11

    goto :goto_1

    .line 849
    :cond_4
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 850
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v10, v2, v9

    .line 851
    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getRight()I

    move-result v9

    sub-int v11, v9, v2

    move v2, v7

    .line 872
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    int-to-float v12, v0

    int-to-float v13, v1

    .line 873
    invoke-virtual {p1, v2, v12, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 874
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    goto/16 :goto_4

    .line 887
    :cond_5
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 888
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v8, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 889
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    :goto_2
    int-to-float v0, v0

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 890
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v10

    .line 891
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 892
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v8, v8, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 893
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 877
    :cond_7
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    int-to-float v0, v0

    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v8, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 879
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    :goto_3
    int-to-float v0, v0

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 880
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v10

    .line 881
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 882
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v8, v8, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 883
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 896
    :goto_4
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 328
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 329
    sget v0, Lmiuix/popupwidget/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x1020002

    .line 330
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 331
    sget v0, Lmiuix/popupwidget/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 332
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 334
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 336
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 339
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 342
    :cond_0
    sget v0, Lmiuix/popupwidget/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 343
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020016

    .line 344
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x102001a

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x1020019

    .line 346
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 348
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 349
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 350
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 820
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 821
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 822
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 826
    :cond_1
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-nez p1, :cond_2

    .line 827
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->adjustArrowMode()V

    .line 829
    :cond_2
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    .line 830
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowLayout()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1245
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1248
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 1249
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    return v4

    .line 1254
    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 2

    .line 1214
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1217
    :cond_0
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 1218
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setArrowMode(I)V
    .locals 0

    .line 1172
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 1173
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    return-void
.end method

.method public setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 493
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 474
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 481
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setLayoutRtlMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 279
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    goto :goto_0

    .line 281
    :cond_0
    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 1222
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    .line 1223
    iput p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    return-void
.end method

.method public setRollingPercent(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
