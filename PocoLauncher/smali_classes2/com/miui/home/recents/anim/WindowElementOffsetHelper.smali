.class public Lcom/miui/home/recents/anim/WindowElementOffsetHelper;
.super Ljava/lang/Object;
.source "WindowElementOffsetHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/WindowElementOffsetHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowElementOffsetHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowElementOffsetHelper.kt\ncom/miui/home/recents/anim/WindowElementOffsetHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/WindowElementOffsetHelper$Companion;

.field private static final sIgnoreTransViews:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAncestorRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDescendantRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitPosRelativeToAncestor:[F

.field private final mPosRelativeToAncestor:[F

.field private mType:I

.field private mUseTransformation:Z


# direct methods
.method public static synthetic $r8$lambda$eq8ZeL6ZT9A0KcOzwQdb8i_v-iY(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->sIgnoreTransViews$lambda-1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->Companion:Lcom/miui/home/recents/anim/WindowElementOffsetHelper$Companion;

    .line 21
    sget-object v0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/recents/anim/WindowElementOffsetHelper$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->sIgnoreTransViews:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 29
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    new-array v0, v0, [F

    .line 30
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mUseTransformation:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 29
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    new-array v1, v0, [F

    .line 30
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mUseTransformation:Z

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iput v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->initPos(FF)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    const-string p0, "WindowElementOffsetHelper"

    const-string p1, "constructor return, rect is invalid"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 29
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    new-array v0, v0, [F

    .line 30
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mUseTransformation:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mAncestorRef:Ljava/lang/ref/WeakReference;

    .line 59
    iput-boolean p3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mUseTransformation:Z

    const/4 p2, 0x3

    .line 61
    iput p2, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->updateDescendantRef(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 53
    iput p3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "constructor return, descendant="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ancestor="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowElementOffsetHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final sIgnoreTransViews$lambda-1(Landroid/view/View;)Z
    .locals 0

    .line 21
    instance-of p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;

    return p0
.end method


# virtual methods
.method public calculatePosRelativeToAncestor()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mDescendantRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mAncestorRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 79
    :cond_1
    iget v2, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 84
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    .line 85
    iget-boolean v3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mUseTransformation:Z

    .line 81
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 91
    :cond_2
    iget v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 92
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->getMRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    aput v3, v1, v2

    .line 95
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    aput v0, p0, v4

    :cond_3
    return-void
.end method

.method protected final getMAncestorRef()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mAncestorRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method protected final getMPosRelativeToAncestor()[F
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    return-object p0
.end method

.method public final initPos(FF)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    .line 67
    aput p2, v0, v2

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    aput p1, v0, v1

    .line 69
    aput p2, v0, v2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "   x="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "   y="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowElementOffsetHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final setMAncestorRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mAncestorRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected final setMType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    return-void
.end method

.method public final transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V
    .locals 5

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mType:I

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->calculatePosRelativeToAncestor()V

    .line 107
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    aget v4, v3, v1

    cmpg-float v2, v2, v4

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 108
    aget v0, v0, v4

    aget v2, v3, v4

    cmpg-float v0, v0, v2

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transformPositionRelativeToAncestor,   dx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   dy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowElementOffsetHelper"

    invoke-static {v2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mPosRelativeToAncestor:[F

    aget v2, v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    aget v1, p0, v1

    sub-float/2addr v2, v1

    .line 113
    aget v0, v0, v4

    aget p0, p0, v4

    sub-float/2addr v0, p0

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, p1, v2, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinatePositionByOffset(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public final updateDescendantRef(Landroid/view/View;)V
    .locals 7

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mDescendantRef:Ljava/lang/ref/WeakReference;

    .line 121
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mAncestorRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 122
    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    .line 123
    iget-boolean v4, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mUseTransformation:Z

    const/4 v5, 0x1

    .line 125
    sget-object v6, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->sIgnoreTransViews:Ljava/util/function/Predicate;

    move-object v1, p1

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    .line 127
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->mInitPosRelativeToAncestor:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->initPos(FF)V

    return-void
.end method
