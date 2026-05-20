.class public Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmallWindowParams"
.end annotation


# instance fields
.field public final freeformSurface:Landroid/view/SurfaceControl;

.field public final listener:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;

.field public final strokeAlpha:F

.field public final strokeColor:[F

.field public final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;[FFFLcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;)V
    .locals 0

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeColor:[F

    .line 694
    iput p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeAlpha:F

    .line 695
    iput p4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeWidth:F

    .line 696
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->freeformSurface:Landroid/view/SurfaceControl;

    .line 697
    iput-object p5, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->listener:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 684
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->smallWindowApply(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private smallWindowApply(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 701
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeColor:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "SyncRtSurfaceTransactionApplierCompat"

    const-string/jumbo v1, "smallWindowApply\uff1asetSurfaceStroke"

    .line 702
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-class v2, Landroid/view/SurfaceControl$Transaction;

    const-class v5, Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    aput-object v1, v6, v3

    const-class v1, [F

    const/4 v4, 0x1

    aput-object v1, v6, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v8, 0x3

    aput-object v1, v6, v8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->freeformSurface:Landroid/view/SurfaceControl;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeColor:[F

    aput-object v1, v0, v4

    iget v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeAlpha:F

    .line 708
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v7

    iget p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeWidth:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, v8

    const-string/jumbo v4, "setSurfaceStroke"

    move-object v3, p1

    move-object v7, v0

    .line 703
    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
