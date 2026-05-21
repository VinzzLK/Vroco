.class public Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayoutAnimation.java"


# static fields
.field public static final INDICATOR_DISAPPEAR_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "ServiceDeliveryLayoutAnimation"


# direct methods
.method public static synthetic $r8$lambda$S1Jj5Igt0es02MTmojvcMYU0pPY(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->lambda$startCarouselAppearAnimation$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeAnimationRunnable(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0xbb8

    .line 168
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$startCarouselAppearAnimation$0(Landroid/view/View;)V
    .locals 2

    const-string v0, "ServiceDeliveryLayoutAnimation"

    const-string v1, "carousel appear complete"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->resetViewStatus(Landroid/view/View;)V

    return-void
.end method

.method public static resetViewStatus(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 244
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 245
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public static startAppGrid3x3AppearAnimation(Ljava/lang/String;Landroid/view/View;)V
    .locals 12

    if-nez p1, :cond_0

    const-string p0, "ServiceDeliveryLayoutAnimation"

    const-string p1, "startAppGrid3x3AppearAnimation: view is null."

    .line 192
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 195
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 196
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 197
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v4, 0x3fee666666666666L    # 0.95

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 198
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    .line 199
    invoke-virtual {v4, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 200
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4}, Lmiuix/animation/controller/AnimState;-><init>()V

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 201
    invoke-virtual {v4, v3, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    .line 202
    invoke-virtual {v6, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    .line 203
    invoke-virtual {v6, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 205
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGrid3x3Appear"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 207
    fill-array-data v9, :array_0

    const/4 v10, -0x2

    invoke-static {v10, v9}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v9

    new-array v11, v2, [F

    invoke-virtual {v6, v3, v9, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    .line 208
    invoke-static {v10, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    new-array v9, v2, [F

    invoke-virtual {v3, v7, v8, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const/16 v7, 0xf

    new-array v8, v0, [F

    const/high16 v9, 0x43480000    # 200.0f

    aput v9, v8, v2

    .line 209
    invoke-static {v7, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v7

    new-array v8, v2, [F

    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v7, 0x64

    .line 210
    invoke-virtual {v3, v7, v8}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$2;

    invoke-direct {v7, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$2;-><init>(Landroid/view/View;)V

    .line 211
    invoke-static {p0, v7}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v0, [Landroid/view/View;

    aput-object p1, p0, v2

    .line 218
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 219
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    .line 220
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, p1, v2

    .line 221
    invoke-interface {p0, v4, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method public static startAppGrid3x3DisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 225
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 226
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 227
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v4, 0x3fee666666666666L    # 0.95

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 228
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    .line 229
    invoke-virtual {v4, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 231
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startAppGrid3x3DisappearAnimation"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x2

    new-array v8, v6, [F

    .line 233
    fill-array-data v8, :array_0

    const/4 v9, -0x2

    invoke-static {v9, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    new-array v10, v2, [F

    invoke-virtual {v4, v3, v8, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    .line 234
    invoke-static {v9, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v8, v2, [F

    invoke-virtual {v3, v7, v6, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v6, v0, [F

    const/high16 v7, 0x42c80000    # 100.0f

    aput v7, v6, v2

    const/16 v7, 0xf

    .line 235
    invoke-static {v7, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v7, v2, [F

    invoke-virtual {v3, v5, v6, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 236
    invoke-static {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v0, [Landroid/view/View;

    aput-object p1, p0, v2

    .line 237
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 238
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v4, p1, v2

    .line 239
    invoke-interface {p0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method private static startAppGrid5x2AppearAnimation(Ljava/lang/String;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 48
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 49
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 50
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v4, 0x3fef5c28f5c28f5cL    # 0.98

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 51
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    .line 52
    invoke-virtual {v4, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 53
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4}, Lmiuix/animation/controller/AnimState;-><init>()V

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 54
    invoke-virtual {v4, v3, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    .line 55
    invoke-virtual {v6, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    .line 56
    invoke-virtual {v6, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 58
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 59
    fill-array-data v9, :array_0

    const/4 v10, -0x2

    invoke-static {v10, v9}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v9

    new-array v11, v2, [F

    invoke-virtual {v6, v3, v9, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    .line 60
    invoke-static {v10, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    new-array v9, v2, [F

    invoke-virtual {v3, v7, v8, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v7, v0, [F

    const/high16 v8, 0x43480000    # 200.0f

    aput v8, v7, v2

    const/16 v8, 0xf

    .line 61
    invoke-static {v8, v7}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v7

    new-array v8, v2, [F

    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v7, 0x64

    .line 62
    invoke-virtual {v3, v7, v8}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$1;

    invoke-direct {v7, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$1;-><init>(Landroid/view/View;)V

    .line 63
    invoke-static {p0, v7}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v0, [Landroid/view/View;

    aput-object p1, p0, v2

    .line 71
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    .line 73
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, p1, v2

    .line 74
    invoke-interface {p0, v4, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method private static startAppGrid5x2DisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 78
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 79
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 80
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v4, 0x3fef5c28f5c28f5cL    # 0.98

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 81
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    .line 82
    invoke-virtual {v4, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 84
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x2

    new-array v8, v6, [F

    .line 85
    fill-array-data v8, :array_0

    const/4 v9, -0x2

    invoke-static {v9, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    new-array v10, v2, [F

    invoke-virtual {v4, v3, v8, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    .line 86
    invoke-static {v9, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v8, v2, [F

    invoke-virtual {v3, v7, v6, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v6, v0, [F

    const/high16 v7, 0x42c80000    # 100.0f

    aput v7, v6, v2

    const/16 v7, 0xf

    .line 87
    invoke-static {v7, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v7, v2, [F

    invoke-virtual {v3, v5, v6, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 88
    invoke-static {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v0, [Landroid/view/View;

    aput-object p1, p0, v2

    .line 89
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v4, p1, v2

    .line 91
    invoke-interface {p0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method private static startCarouselAppearAnimation(Ljava/lang/String;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 95
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 96
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 97
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 98
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    .line 99
    invoke-virtual {v4, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 100
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4}, Lmiuix/animation/controller/AnimState;-><init>()V

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 101
    invoke-virtual {v4, v3, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    .line 102
    invoke-virtual {v6, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    .line 103
    invoke-virtual {v6, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 105
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 106
    fill-array-data v9, :array_0

    const/4 v10, -0x2

    invoke-static {v10, v9}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v9

    new-array v11, v2, [F

    invoke-virtual {v6, v3, v9, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    .line 107
    invoke-static {v10, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    new-array v9, v2, [F

    invoke-virtual {v3, v7, v8, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v7, v0, [F

    const/high16 v8, 0x43480000    # 200.0f

    aput v8, v7, v2

    const/16 v8, 0xf

    .line 108
    invoke-static {v8, v7}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v7

    new-array v8, v2, [F

    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v7, 0x64

    .line 109
    invoke-virtual {v3, v7, v8}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarouselAppearAnimation"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 111
    new-instance v5, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p0, v5}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v6, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v0, [Landroid/view/View;

    aput-object p1, p0, v2

    .line 115
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 116
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    .line 117
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, p1, v2

    .line 118
    invoke-interface {p0, v4, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method private static startCarouselDisappearAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 122
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 123
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 124
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 125
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    .line 126
    invoke-virtual {v4, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 128
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x2

    new-array v8, v6, [F

    .line 129
    fill-array-data v8, :array_0

    const/4 v9, -0x2

    invoke-static {v9, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    new-array v10, v2, [F

    invoke-virtual {v4, v3, v8, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    .line 130
    invoke-static {v9, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v8, v2, [F

    invoke-virtual {v3, v7, v6, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v6, v0, [F

    const/high16 v7, 0x42c80000    # 100.0f

    aput v7, v6, v2

    const/16 v7, 0xf

    .line 131
    invoke-static {v7, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v7, v2, [F

    invoke-virtual {v3, v5, v6, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_0

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 133
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v4, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_0
    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v2

    .line 135
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v4, p1, v2

    .line 137
    invoke-interface {p0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data
.end method

.method public static startDefaultLayoutAppearAnimation(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid5x2AppearAnimation(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static startDefaultLayoutDisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid5x2DisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startDeliveryLayoutAppearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startCarouselAppearAnimation(Ljava/lang/String;Landroid/view/View;)V

    .line 32
    invoke-static {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startIndicatorAppearAnimation(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 34
    invoke-static {p0, p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3AppearAnimation(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static startDeliveryLayoutDisappearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 40
    invoke-static {p1, p4}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startCarouselDisappearAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 41
    invoke-static {p2, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startIndicatorDisappearAnimation(Landroid/view/View;F)V

    if-eqz p3, :cond_0

    .line 43
    invoke-static {p0, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3DisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static startIndicatorAppearAnimation(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 141
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 142
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 143
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 144
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4}, Lmiuix/animation/controller/AnimState;-><init>()V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 145
    invoke-virtual {v4, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 147
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v0, [F

    const/high16 v7, 0x43c80000    # 400.0f

    aput v7, v6, v2

    const/16 v7, 0xf

    .line 148
    invoke-static {v7, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v7, v2, [F

    invoke-virtual {v5, v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v6, 0x64

    .line 149
    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Landroid/view/View;

    aput-object p0, v3, v2

    .line 150
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    .line 152
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v5, v0, v2

    .line 153
    invoke-interface {p0, v4, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static startIndicatorAppearAnimationNormal(Landroid/view/View;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startIndicatorAppearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private static startIndicatorDisappearAnimation(Landroid/view/View;F)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 172
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 173
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 174
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 176
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v0, [F

    aput p1, v5, v2

    const/16 p1, 0xf

    .line 177
    invoke-static {p1, v5}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    new-array v5, v2, [F

    invoke-virtual {v4, v3, p1, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v2

    .line 178
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 179
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v4, p1, v2

    .line 180
    invoke-interface {p0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static startIndicatorDisappearAnimationNormal(Landroid/view/View;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x43480000    # 200.0f

    .line 163
    invoke-static {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startIndicatorDisappearAnimation(Landroid/view/View;F)V

    return-void
.end method
