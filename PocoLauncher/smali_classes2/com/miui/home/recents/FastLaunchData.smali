.class public final Lcom/miui/home/recents/FastLaunchData;
.super Ljava/lang/Object;
.source "FastLaunchData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/FastLaunchData$Companion;
    }
.end annotation


# static fields
.field private static BLACK_COLOR_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/miui/home/recents/FastLaunchData$Companion;

.field private static FORCE_FAST_LAUNCH_WHITE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WHITW_COLOR_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bounds:Landroid/graphics/Rect;

.field private iconLoc:Landroid/graphics/Rect;

.field private isOpen:Z

.field private packageName:Ljava/lang/String;

.field private rotation:I

.field private taskId:I

.field private userId:Ljava/lang/Integer;

.field private viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/FastLaunchData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/FastLaunchData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/FastLaunchData;->Companion:Lcom/miui/home/recents/FastLaunchData$Companion;

    .line 21
    new-instance v0, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;

    invoke-direct {v0}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/FastLaunchData;->FORCE_FAST_LAUNCH_WHITE_LIST:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/miui/home/recents/FastLaunchData$Companion$WHITW_COLOR_APPS$1;

    invoke-direct {v0}, Lcom/miui/home/recents/FastLaunchData$Companion$WHITW_COLOR_APPS$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/FastLaunchData;->WHITW_COLOR_APPS:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/miui/home/recents/FastLaunchData$Companion$BLACK_COLOR_APPS$1;

    invoke-direct {v0}, Lcom/miui/home/recents/FastLaunchData$Companion$BLACK_COLOR_APPS$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/FastLaunchData;->BLACK_COLOR_APPS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/FastLaunchData;->userId:Ljava/lang/Integer;

    const-string p3, "OpenUseQuickStep"

    .line 18
    iput-object p3, p0, Lcom/miui/home/recents/FastLaunchData;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/miui/home/recents/FastLaunchData;->taskId:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/miui/home/recents/FastLaunchData;->isOpen:Z

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->setOpen()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/FastLaunchData;->setPackageName(Ljava/lang/String;)V

    .line 75
    :cond_0
    instance-of p1, p2, Lcom/miui/home/launcher/LauncherAble;

    if-eqz p1, :cond_1

    .line 76
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/LauncherAble;

    invoke-interface {p1}, Lcom/miui/home/launcher/LauncherAble;->getIconLocation()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/FastLaunchData;->iconLoc:Landroid/graphics/Rect;

    goto :goto_0

    .line 77
    :cond_1
    instance-of p1, p2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz p1, :cond_2

    .line 78
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/FastLaunchData;->iconLoc:Landroid/graphics/Rect;

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->setClose()V

    .line 82
    :goto_0
    instance-of p1, p2, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_3

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set LaunchAppAndBackHomeAnimTarget view="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/recents/FastLaunchData;->viewWeakReference:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public static final synthetic access$getBLACK_COLOR_APPS$cp()Ljava/util/ArrayList;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/home/recents/FastLaunchData;->BLACK_COLOR_APPS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getWHITW_COLOR_APPS$cp()Ljava/util/ArrayList;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/home/recents/FastLaunchData;->WHITW_COLOR_APPS:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final whiteListPackage(Ljava/lang/String;)Z
    .locals 2

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 158
    :cond_0
    sget-object p0, Lcom/miui/home/recents/FastLaunchData;->FORCE_FAST_LAUNCH_WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public final getAppTranslucentState(Z)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/miui/home/recents/FastLaunchData;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/FastLaunchData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/miui/home/recents/FastLaunchData;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/FastLaunchData;->whiteListPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/FastLaunchData;->bounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getIconLoc()Landroid/graphics/Rect;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/recents/FastLaunchData;->iconLoc:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/miui/home/recents/FastLaunchData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRotation()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/miui/home/recents/FastLaunchData;->rotation:I

    return p0
.end method

.method public final getTaskId()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/miui/home/recents/FastLaunchData;->taskId:I

    return p0
.end method

.method public final getUseTranslucentState(ZLandroid/view/View;)Z
    .locals 5

    .line 120
    instance-of v0, p2, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    check-cast p2, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 124
    instance-of p2, p2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/miui/home/recents/FastLaunchData;->TAG:Ljava/lang/String;

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUseTranslucentState appTanslucent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " translucentAnim="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_3

    .line 131
    sget-object p1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;

    const-string v0, "FIT_PARENT_AND_TRANSLUCENT_PACKAGE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 132
    iget-object v4, p0, Lcom/miui/home/recents/FastLaunchData;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    iget-object p0, p0, Lcom/miui/home/recents/FastLaunchData;->TAG:Ljava/lang/String;

    const-string p1, "getUseTranslucentState false"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_3
    return v1
.end method

.method public final getUserId()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/recents/FastLaunchData;->userId:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final isOpen()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/recents/FastLaunchData;->isOpen:Z

    return p0
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/home/recents/FastLaunchData;->bounds:Landroid/graphics/Rect;

    return-void
.end method

.method public final setClose()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/FastLaunchData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "setClose"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/recents/FastLaunchData;->isOpen:Z

    return-void
.end method

.method public final setOpen()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/miui/home/recents/FastLaunchData;->TAG:Ljava/lang/String;

    const-string v1, "setOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/miui/home/recents/FastLaunchData;->isOpen:Z

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/FastLaunchData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/miui/home/recents/FastLaunchData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setRotation(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/miui/home/recents/FastLaunchData;->rotation:I

    return-void
.end method

.method public final setTaskId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/miui/home/recents/FastLaunchData;->taskId:I

    return-void
.end method
