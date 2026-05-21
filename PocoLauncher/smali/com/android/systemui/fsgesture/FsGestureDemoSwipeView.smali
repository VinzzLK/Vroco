.class public Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
.super Landroid/widget/FrameLayout;
.source "FsGestureDemoSwipeView.java"


# instance fields
.field finalAnimatorSet:Landroid/animation/AnimatorSet;

.field hidingAnimator:Landroid/animation/ObjectAnimator;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFinalTranslate:F

.field private mIsSetAnimCanceled:Z

.field movingAnimator:Landroid/animation/ObjectAnimator;

.field scaleAnimator:Landroid/animation/ObjectAnimator;

.field showingAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mIsSetAnimCanceled:Z

    return p0
.end method

.method private createFinalAnimSet(I)V
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 135
    iget-object v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    new-array v5, v5, [Landroid/animation/Animator;

    .line 132
    iget-object v6, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v5, v1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private createHidingAnimator(I)V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const-string v1, "alpha"

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    new-array p1, v2, [F

    .line 216
    fill-array-data p1, :array_0

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_1
    new-array p1, v2, [F

    .line 208
    fill-array-data p1, :array_1

    const-string v0, "scaleX"

    invoke-static {v0, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, v2, [F

    .line 209
    fill-array-data v0, :array_2

    const-string v3, "scaleY"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v3, v2, [F

    .line 210
    fill-array-data v3, :array_3

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    aput-object v1, v3, v2

    .line 212
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x64

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createMovingAnimator(I)V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 257
    :pswitch_0
    iget v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    div-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 258
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    sub-int/2addr v2, v5

    .line 259
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    int-to-float v1, v1

    int-to-float v2, v2

    .line 260
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 261
    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v2, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    add-float/2addr v1, v5

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    invoke-static {p0, v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 251
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    div-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/2addr v5, v4

    sub-int/2addr v0, v5

    int-to-float v0, v0

    .line 252
    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    add-float/2addr v5, v0

    new-array v4, v4, [F

    aput v0, v4, v2

    aput v5, v4, v1

    .line 254
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 245
    :pswitch_2
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 246
    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    add-int/lit16 v5, v5, -0x3e8

    int-to-float v5, v5

    new-array v4, v4, [F

    aput v3, v4, v2

    aput v5, v4, v1

    .line 248
    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 238
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    sub-int/2addr v0, v5

    int-to-float v0, v0

    .line 239
    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    sub-float/2addr v5, v6

    new-array v4, v4, [F

    aput v0, v4, v2

    aput v5, v4, v1

    .line 241
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 232
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    .line 233
    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr v5, v6

    new-array v4, v4, [F

    aput v0, v4, v2

    aput v5, v4, v1

    .line 235
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 270
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createScaleAnimator(I)V
    .locals 3

    .line 179
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 182
    fill-array-data v0, :array_0

    const-string v1, "scaleX"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p1, [F

    .line 183
    fill-array-data v1, :array_1

    const-string v2, "scaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    .line 185
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3e8

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method private createShowingAnimator(I)V
    .locals 5

    .line 190
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 193
    fill-array-data v0, :array_0

    const-string v1, "scaleX"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p1, [F

    .line 194
    fill-array-data v1, :array_1

    const-string v2, "scaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, p1, [F

    .line 195
    fill-array-data v2, :array_2

    const-string v3, "alpha"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    aput-object v2, v3, p1

    .line 197
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init()V
    .locals 3

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/home/gesturedemo/R$layout;->fs_gesture_swipe_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 59
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 61
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 63
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->fsgesture_swipe_final_translateX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 2

    const-string v0, "FsGestureDemoSwipeView"

    const-string v1, "cancelAnimation"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mIsSetAnimCanceled:Z

    const/16 v0, 0x8

    .line 281
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 22
    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    .line 22
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method prepare(I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/gesturedemo/R$dimen;->fsgesture_swipe_drawer_translateY:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 88
    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 90
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/gesturedemo/R$dimen;->fsgesture_swipe_translateY:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 80
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/gesturedemo/R$dimen;->fsgesture_swipe_translateY:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method startAnimation(I)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mIsSetAnimCanceled:Z

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createShowingAnimator(I)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createMovingAnimator(I)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createScaleAnimator(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createHidingAnimator(I)V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createFinalAnimSet(I)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
