.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.source "UserPresentAnimationCompatComplex.java"


# static fields
.field public static camDis:F = 0.0f

.field public static minDis:F = 3.4028235E38f


# instance fields
.field protected mAllAnimationViewNum:I

.field protected mHardwareLayerScreenId:J

.field protected mIsShowingAnimation:Z

.field protected final mPrepareConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreparedNextScreenId:J

.field protected mPreparedScreenId:J

.field protected final mResetConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResetLayerTypeConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mShowConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStopConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9q1SGqFaQ9lXC18HJGvkU483DvE(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$checkMissingIcon$8(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FBVKku0XlP9B9TQ3GF0DriBF7i8(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$stopAnimation$7(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PlWXb5aEAKX_nZHDnIE9EK5XGVs(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$prepareNextScreen$2(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bYlPdZLnmEtDm1t26aYYvGZAax0(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetViewLayerType(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$euzxJ61ru5-kALGXf_JqafLh3yU(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$showAnimation$3(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hyVd489veYmLDkOToXEHEzcCkk0(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$resetAnimation$5(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tKK-fM4uWD0fiPrVRv9T966kLQE(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$prepareCurrentScreen$1(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tq0SzTWw1jUl21KQPbnC8jMEQb4(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$resetAnimationViewLayerType$6(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xCYnfiBGZDEWy6gJ5XdyO4MZcN0(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$prepareAnimation$0(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4r37vS5-2ZzD-igM6Sgo4dCIk8(JLjava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->lambda$shouldShowLockAnim$4(JLjava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->camDis:F

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v0, -0x1

    .line 23
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 24
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    .line 25
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 306
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPrepareConsumer:Ljava/util/function/Consumer;

    .line 308
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mShowConsumer:Ljava/util/function/Consumer;

    .line 310
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    .line 312
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetLayerTypeConsumer:Ljava/util/function/Consumer;

    .line 314
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mStopConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method private getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method private getNextScreenIndex()I
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    add-int/2addr v1, v2

    return v1

    :cond_1
    return v0
.end method

.method private synthetic lambda$checkMissingIcon$8(Lcom/miui/home/launcher/Workspace;)V
    .locals 3

    const/4 v0, 0x0

    .line 250
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 251
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    return-void
.end method

.method private synthetic lambda$prepareAnimation$0(Lcom/miui/home/launcher/Workspace;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result v0

    const-string v1, "Launcher.UserPresentAnimation"

    if-nez v0, :cond_1

    const-string v0, "prepareAnimation: !isChildrenLaidOut: true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 80
    sput v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->minDis:F

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->camDis:F

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareAnimation ,mPreparedScreenId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$prepareCurrentScreen$1(Lcom/miui/home/launcher/Workspace;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 98
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareAnimation ,mPreparedScreenId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.UserPresentAnimation"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$prepareNextScreen$2(Lcom/miui/home/launcher/Workspace;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getNextScreenIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 109
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    :cond_0
    return-void
.end method

.method private synthetic lambda$resetAnimation$5(Lcom/miui/home/launcher/Workspace;)V
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    const-wide/16 v0, -0x1

    .line 210
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 211
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    return-void
.end method

.method private synthetic lambda$resetAnimationViewLayerType$6(Lcom/miui/home/launcher/Workspace;)V
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetLayerTypeConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    const-wide/16 v0, -0x1

    .line 226
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    return-void
.end method

.method private static synthetic lambda$shouldShowLockAnim$4(JLjava/util/List;)Ljava/lang/Boolean;
    .locals 0

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showAnimation$3(Lcom/miui/home/launcher/Workspace;)V
    .locals 5

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCurrentScreenPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareAnimation()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCurrentScreenPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 142
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    .line 145
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mShowConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    :goto_0
    const-wide/16 v0, -0x1

    .line 149
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    :cond_2
    return-void
.end method

.method private synthetic lambda$stopAnimation$7(Lcom/miui/home/launcher/Workspace;)V
    .locals 3

    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 237
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mStopConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private operateAllScreenViews(Ljava/util/function/Consumer;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;JZ)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    if-eqz p4, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateOtherRelatedViews(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private resetViewLayerType(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    const v0, 0x7f0a0401

    .line 353
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getTagAndClear(Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldShowLockAnim(J)Z
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda13;-><init>(J)V

    .line 165
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 166
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private showAnimByScreenId(JZ)V
    .locals 2

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->shouldShowLockAnim(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNextScreen ,mPreparedScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mShowConsumer:Ljava/util/function/Consumer;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllScreenViews(Ljava/util/function/Consumer;JZ)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllScreenViews(Ljava/util/function/Consumer;JZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkMissingIcon()V
    .locals 2

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, "checkMissingIcon"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract endAnimation(Landroid/view/View;)V
.end method

.method protected executeWithWorkspace(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/Workspace;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method protected getTagAndClear(Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "ITT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p3

    .line 40
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p3, p0

    :cond_1
    const/4 p0, 0x0

    .line 44
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p3
.end method

.method protected getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method protected ignoreAlpha(Landroid/view/View;)Z
    .locals 0

    .line 325
    instance-of p0, p1, Lcom/miui/home/launcher/FolderCreationBg;

    return p0
.end method

.method protected ignoreTranslation(Landroid/view/View;)Z
    .locals 0

    .line 321
    instance-of p0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    return p0
.end method

.method protected isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isCurrentScreenPrepared()Z
    .locals 4

    .line 367
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNextScreenPrepared()Z
    .locals 4

    .line 371
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreparedAnimation()Z
    .locals 4

    .line 130
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingAnimation()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    return p0
.end method

.method protected needDealWithLayerType()Z
    .locals 0

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateOtherRelatedViews(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected operateHotseats(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getUserPresentAnimationChildList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 287
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected operateIndicator(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda14;->INSTANCE:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda14;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected operateOtherRelatedViews(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateHotseats(Ljava/util/function/Consumer;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateSearchBar(Ljava/util/function/Consumer;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateIndicator(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected operateScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 276
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 277
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected operateSearchBar(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareAnimation()V
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numOfAnimatedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCurrentScreenPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected prepareCurrentScreen()V
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numOfAnimatedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCurrentScreenPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected prepareNextScreen()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isNextScreenPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method abstract prepareUserPresentAnimation(Landroid/view/View;)V
.end method

.method public resetAnimation()V
    .locals 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCurrentScreenPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetAnimationViewLayerType()V
    .locals 6

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->needDealWithLayerType()Z

    move-result v0

    const-string v1, "Launcher.UserPresentAnimation"

    if-nez v0, :cond_0

    const-string p0, "resetAnimationViewLayerType: return, because no need to deal with layer type"

    .line 218
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return-void

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAnimationViewLayerType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected resetAnimationViewNum()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 361
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    return-void
.end method

.method public resetView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_5

    const v0, 0x7f0a0400

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreAlpha(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreTranslation(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 335
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_2

    .line 338
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 340
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_3

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 343
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_4

    .line 344
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 346
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_5

    .line 347
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    return-void
.end method

.method public showAnimation()V
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numOfAnimatedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected showCurrentScreen()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCurrentScreenPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showAnimByScreenId(JZ)V

    const-wide/16 v0, -0x1

    .line 194
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    :cond_0
    return-void
.end method

.method protected showNextScreen()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isNextScreenPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showAnimByScreenId(JZ)V

    const-wide/16 v0, -0x1

    .line 187
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    :cond_0
    return-void
.end method

.method abstract showUserPresentAnimation(Landroid/view/View;)V
.end method

.method public stopAnimation()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->executeWithWorkspace(Ljava/util/function/Consumer;)V

    return-void
.end method
