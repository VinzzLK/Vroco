.class public final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;
.super Lcom/miui/home/launcher/LauncherIconImageView;
.source "LauncherFolder2x2IconImageView.kt"

# interfaces
.implements Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherFolder2x2IconImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherFolder2x2IconImageView.kt\ncom/miui/home/launcher/folder/LauncherFolder2x2IconImageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,217:1\n1#2:218\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaAnimCount:I

.field private final mAlphaAnimDelayTime:J

.field private final mAlphaAnimHideAlpha:F

.field private final mAlphaAnimNormalAlpha:F

.field private final mAlphaAnimShowAlpha:F

.field private final mAlphaAnimStartDelayTime:J

.field private final mAnimMax:I

.field private final mIsDebug:Z

.field private mIsDragingEnter:Z

.field private final mNormalAlpha:F

.field private mPreDrawable:Landroid/graphics/drawable/Drawable;

.field private final mViewEaseHideAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field private final mViewEaseShowAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;


# direct methods
.method public static synthetic $r8$lambda$Hud_haJxZyz2LNFtbSLqklv-VhU(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->customTask$lambda-0(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 23
    invoke-static {p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    const-string p2, "getStyle(EaseManager.EaseStyleDef.CUBIC_OUT)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseHideAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/16 p1, 0xf

    .line 24
    invoke-static {p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    const-string p2, "getStyle(EaseManager.EaseStyleDef.SIN_OUT)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseShowAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAnimMax:I

    const-string p1, "LauncherFolder2x2IconImageView"

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDebug:Z

    const-wide/16 p1, 0x190

    .line 28
    iput-wide p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimStartDelayTime:J

    const-wide/16 p1, 0xc8

    .line 29
    iput-wide p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimDelayTime:J

    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    const p2, 0x3f59999a    # 0.85f

    :goto_0
    iput p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimHideAlpha:F

    .line 31
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x41c80000    # 25.0f

    goto :goto_1

    :cond_1
    const p2, 0x3f333333    # 0.7f

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimShowAlpha:F

    .line 34
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move p2, p3

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_2
    iput p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimNormalAlpha:F

    .line 35
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_3
    iput p3, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mNormalAlpha:F

    return-void
.end method

.method public static final synthetic access$getMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    return p0
.end method

.method public static final synthetic access$getMAnimMax$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAnimMax:I

    return p0
.end method

.method public static final synthetic access$getMIsDragingEnter$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    return p0
.end method

.method public static final synthetic access$getMPreDrawable$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$preformAnimInternal(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->preformAnimInternal()V

    return-void
.end method

.method public static final synthetic access$resetDrawableToNormalState(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->resetDrawableToNormalState()V

    return-void
.end method

.method private final animEnd()V
    .locals 2

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha(ZZ)V

    return-void
.end method

.method private final animStart()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->preformAnimInternal()V

    return-void
.end method

.method private final customTask(Lkotlin/jvm/functions/Function0;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;J)V"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final customTask$lambda-0(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$black"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    .line 113
    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v1, v4}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha$default(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;ZZILjava/lang/Object;)V

    .line 114
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    .line 115
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method private final getDrawableAlpha(Landroid/graphics/drawable/Drawable;)Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    .line 178
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-eqz p0, :cond_0

    .line 179
    check-cast p1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onDragContainerBgAnimAlpha(ZZ)V
    .locals 8

    .line 124
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDebug:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->TAG:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragContainerBgAnimAlpha,mAlphaAnimCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getDrawableAlpha(Landroid/graphics/drawable/Drawable;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getAnimAlpha()F

    move-result v0

    :goto_0
    if-eqz p2, :cond_2

    .line 134
    iget v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimNormalAlpha:F

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 135
    iget v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimHideAlpha:F

    goto :goto_1

    .line 136
    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimShowAlpha:F

    :goto_1
    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->resetDrawableToNormalState()V

    :cond_5
    return-void

    :cond_6
    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "LauncherFolder2x2IconImageView"

    aput-object v5, v2, v4

    .line 146
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "animAlpha"

    aput-object v7, v6, v4

    .line 147
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-interface {v2, v6}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v4

    .line 148
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v3

    .line 149
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    if-eqz p1, :cond_7

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseHideAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseShowAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :goto_3
    iput-object p1, v1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array p1, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 151
    new-instance v3, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;

    invoke-direct {v3, p2, p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;-><init>(ZLcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V

    aput-object v3, p1, v4

    invoke-virtual {v1, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v2, v5

    .line 148
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method static synthetic onDragContainerBgAnimAlpha$default(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 120
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha(ZZ)V

    return-void
.end method

.method private final preformAnimInternal()V
    .locals 3

    .line 99
    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;-><init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V

    .line 104
    iget v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimStartDelayTime:J

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimDelayTime:J

    .line 99
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->customTask(Lkotlin/jvm/functions/Function0;J)V

    return-void
.end method

.method private final resetDrawableToNormalState()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setAnimState(Z)V

    return-void
.end method

.method private final settingDrawableToAnimState()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setAnimState(Z)V

    return-void
.end method


# virtual methods
.method public final getAnimAlpha()F
    .locals 0

    .line 185
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result p0

    return p0
.end method

.method protected getHeightMeasureSpec(I)I
    .locals 0

    return p1
.end method

.method protected getWidthMeasureSpec(I)I
    .locals 0

    return p1
.end method

.method public final isDraggingEnter()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    return p0
.end method

.method public onDragEnter()V
    .locals 2

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->settingDrawableToAnimState()V

    .line 60
    sget-object v1, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleIconContainerBg(Landroid/view/View;Z)V

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->animStart()V

    return-void
.end method

.method public onDragExit()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    .line 84
    sget-object v1, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleIconContainerBg(Landroid/view/View;Z)V

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->animEnd()V

    return-void
.end method

.method public final setAnimAlpha(F)V
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    return-void
.end method

.method public final setAnimState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 201
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimNormalAlpha:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mNormalAlpha:F

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 203
    instance-of v2, v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-eqz v2, :cond_1

    .line 204
    check-cast v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->setAnimState(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 207
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setDrawableAlpha(Landroid/graphics/drawable/Drawable;F)V

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setAnimAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setDrawableAlpha(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    const-string p0, "drawable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    instance-of p0, p1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-eqz p0, :cond_0

    .line 194
    move-object p0, p1

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
