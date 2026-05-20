.class public Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.source "FsGestureBackDemoActivity.java"


# static fields
.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private demoType:Ljava/lang/String;

.field private isFromPro:Z

.field private mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field private mBgView:Landroid/view/View;

.field private mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

.field private mDemoActivityView:Landroid/view/View;

.field private mDemoActivityViewMatrix:Landroid/graphics/Matrix;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownX:F

.field private mDownY:F

.field private mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private mGestureStatus:I

.field private mIsSupportsGestureHeightExpansion:Z

.field private mOffsetX:F

.field private mStatus:I

.field private mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->showBackAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->onGestureFinish()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V

    return-void
.end method

.method private finishGesture(Z)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 209
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private finishGestureBack()V
    .locals 4

    .line 284
    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initView()V
    .locals 5

    .line 153
    sget v0, Lcom/miui/home/gesturedemo/R$id;->root_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 154
    sget v1, Lcom/miui/home/gesturedemo/R$id;->bg_view:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    .line 156
    sget v1, Lcom/miui/home/gesturedemo/R$id;->demo_activity:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 157
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    sget v1, Lcom/miui/home/gesturedemo/R$id;->fsgesture_title_view:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 164
    :cond_0
    iget v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v4, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-static {p0, v1}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 176
    sget v1, Lcom/miui/home/gesturedemo/R$id;->fsgesture_swipe_view:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 177
    iget v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v1, v2, :cond_2

    .line 178
    invoke-direct {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    .line 183
    :goto_1
    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    .line 184
    :goto_2
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 185
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    .line 186
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 187
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v3, v2, :cond_4

    const/16 v2, 0x9

    goto :goto_3

    :cond_4
    const/16 v2, 0xb

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private onGestureFinish()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGestureBack()V

    return-void
.end method

.method private showBackAnimation()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    sget v0, Lcom/miui/home/gesturedemo/R$anim;->activity_close_enter:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 256
    sget v1, Lcom/miui/home/gesturedemo/R$anim;->activity_close_exit:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 257
    new-instance v2, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 273
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 2

    .line 195
    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    sget p1, Lcom/miui/home/gesturedemo/R$layout;->fs_gesture_back_demo:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 128
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 130
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    .line 132
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DEMO_TYPE"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "DEMO_FULLY_SHOW"

    .line 136
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "DEMO_STEP"

    .line 137
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    const/4 v0, 0x0

    const-string v1, "IS_FROM_PROVISION"

    .line 138
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    .line 139
    invoke-static {}, Lcom/miui/launcher/utils/NotesGestureCompat;->supportsGestureHeightExpansion()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mIsSupportsGestureHeightExpansion:Z

    if-eqz p1, :cond_1

    .line 140
    invoke-static {}, Lcom/android/systemui/navigationbar/Utils;->getStatusBarHeight()I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    div-int/lit8 p1, p1, 0x5

    :goto_0
    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mTop:I

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->initView()V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 148
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    return-void
.end method
